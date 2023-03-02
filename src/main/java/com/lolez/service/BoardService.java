package com.lolez.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lolez.dao.BoardDao;
import com.lolez.dto.BoardDto;
import com.lolez.dto.ReplyDto;

@Service
public class BoardService {

	@Autowired
	private ServletContext context;

	@Autowired
	private BoardDao bdao;

	public ArrayList<BoardDto> boardList() {
		System.out.println("BoardService boardList()");
		ArrayList<BoardDto> boardList = bdao.selectBoardList();
		return boardList;
	}

	public int boardWrite(BoardDto board) throws Exception {
		System.out.println("BoardService boardWrite()");
		// 글번호 생성
		int bno = bdao.selectMaxBno() + 1;
		board.setBno(bno);

		// 2 첨부파일 처리
		MultipartFile bfile = board.getBfile();
		String bfilename = "";
		if (!bfile.isEmpty()) {
			UUID uuid = UUID.randomUUID();
			bfilename = uuid.toString() + "_" + bfile.getOriginalFilename();
			String savePath = context.getRealPath("resources\\boardUpload");
			File file = new File(savePath, bfilename);
			bfile.transferTo(file);
		}
		board.setBfilename(bfilename);

		int insertResult = 0;
		int updateResult = 0;
		try {
			// Board 테이블 insert 호출
			insertResult = bdao.insertBoard(board);
			updateResult = bdao.updatePoint(board.getBwriter());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return insertResult;
	}

	public BoardDto boardView(int viewBno) {
		System.out.println("BoardService boardList()");
		// 조회수 증가
		bdao.updateBoardHits(viewBno);

		// 글 정보 조회
		BoardDto board = bdao.selectBoardView(viewBno);

		return board;
	}

	public int boardLikeCount(int viewBno) {
		System.out.println("BoardService boardLike()");
		int likeCount = bdao.selectLikeCount(viewBno);
		return likeCount;
	}

	// BoardService 상세보기 글 - 댓글목록 조회 기능

	public ArrayList<ReplyDto> boardReplyList(int rbno, String loginNickname) {
		System.out.println("BoardService boardReplyList()");
		ArrayList<ReplyDto> replyList = bdao.selectReplyList(rbno);
		// 0번인덱스 댓글번호, 댓글작성자, 댓글내용, 댓글 작성일 + 추천수 + 추천확인

		for (int i = 0; i < replyList.size(); i++) {
			// 댓글의 추천수 조회
			int rno = replyList.get(i).getRno();
			// SELECT COUNT(*) FROM REPLYLIKE WHERE RLNUM = #{rno};
			int relikecount = bdao.selectReplyLikeCount(rno);
			replyList.get(i).setRrec(relikecount);

			// 현재 페이지를 보는 사용자의 댓글 추천 여부 조회
			if (loginNickname != null) {
				// SELECT RLSTATE FROM REPLYLIKE WHERE RLNO = #{rlno} AND RLNAME = #{loginNickname};
				String relikeCheck = bdao.selectReplyLikeCheck(rno, loginNickname, rbno);
				replyList.get(i).setRlikeCheck(relikeCheck);
			}
		}
		return replyList;

	}

	public String boardLike(int lbno, String lname) {
		System.out.println("BoardService boardLike()");
		Gson gson = new Gson();
		JsonObject boardLike_json = new JsonObject();

		// 1. 추천유무 확인
		String likeName = bdao.selectLikeCheck(lbno, lname);

		if (likeName == null) {
			System.out.println("추천 입력");
			bdao.insertBoardLike(lbno, lname);
			boardLike_json.addProperty("likeResult", "1");
		} else {
			System.out.println("추천 취소");
			bdao.deleteBoardLike(lbno, lname);
			boardLike_json.addProperty("likeResult", "-1");
		}

		// 2. 추천 처리 이후 추천수 조회
		int likeCount = bdao.selectLikeCount(lbno);
		boardLike_json.addProperty("likeCount", likeCount);

		System.out.println(gson.toJson(boardLike_json));
		return gson.toJson(boardLike_json);
	}
	
		//BoardService 상세보기 글 - 댓글목록 조회 기능_ajax
		public String replyList(int rbno, String loginNickname) {
			System.out.println("BoardService replyList()");
			ArrayList<ReplyDto> reList = bdao.selectReplyList(rbno);
			for(int i = 0; i < reList.size(); i++) {
				System.out.println(reList.get(i).getRno());
				int rno = reList.get(i).getRno();
				int relikecount = bdao.selectReplyLikeCount(rno);
				reList.get(i).setRrec(relikecount);
				if(loginNickname != null) {
					//SELECT Rlname FROM REPLYLIKE WHERE RLNUM = #{rno} AND Rlname = #{loginNickname};
					String rlikeCheck = bdao.selectReplyLikeCheck(rno, loginNickname, rbno);
					reList.get(i).setRlikeCheck(rlikeCheck);
				}			
			}
			System.out.println(reList);
			Gson gson = new Gson();
			String reList_json = gson.toJson(reList);
			System.out.println(reList_json);
			
			return reList_json;
		}	
		
		

		public int boardModify(BoardDto modBoard) {
			System.out.println("BoardService boardModify()");
			int updateResult = 0;
			try {
				updateResult = bdao.updateBoard(modBoard);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return updateResult;
		}
		
		public int replyWrite(ReplyDto reply) {
			System.out.println("BoardService replyWrite()");
			//1.댓글 번호 생성
			int rno = bdao.selectMaxRno() + 1;
			reply.setRno(rno);
			//2.댓글 등록
			int insertResult = 0;
			try {
				insertResult = bdao.insertReply(reply);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return insertResult;
		}



		public int replyDelete(int rno, int rbno) {
			System.out.println("BoardService replyDelete()");
			int deletelikeResult = bdao.deletereplylike(rno, rbno);
			int deleteResult = bdao.deleteReply(rno, rbno);
			return deleteResult;
		}
		
		public String boardLikeInfo(int lbno, String lname) {
			System.out.println("BoardService boardLikeInfo()");
			int likeCount = bdao.selectLikeCount(lbno);
			String likeMid = bdao.selectLikeCheck(lbno, lname);
			Gson gson = new Gson();
			JsonObject likeInfo_json = new JsonObject();
			likeInfo_json.addProperty("likeCount", likeCount);
			likeInfo_json.addProperty("likeCheck", likeMid);
			
			return gson.toJson(likeInfo_json);
		}

		public String replyLike(int rlno, String rlname, int rlbno) {
			System.out.println("BoardService replyLike()");
			Gson gson = new Gson();
			JsonObject replyLike_json = new JsonObject();
			//1. 추천유무 확인
			String likeCheck = bdao.selectReplyLikeCheck(rlno, rlname, rlbno);
			
			if(likeCheck == null) {
				System.out.println("댓글 추천 입력");
				bdao.insertReplyLike(rlno, rlname, rlbno);
				replyLike_json.addProperty("likeResult", "1");
			} else {
				System.out.println("추천 취소");
				bdao.deleteReplyLike(rlno, rlname, rlbno);
				replyLike_json.addProperty("likeResult", "-1");
			}
			
			//2. 추천 처리 이후 추천수 조회
			int likeCount = bdao.selectReplyLikeCount(rlno);
			replyLike_json.addProperty("likeCount", likeCount);
			
			System.out.println( gson.toJson(replyLike_json) );
			return gson.toJson(replyLike_json);
		}

}
