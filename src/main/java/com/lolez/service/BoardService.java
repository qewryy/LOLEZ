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

	public ArrayList<ReplyDto> boardReplyList(int viewBno, String loginNickname) {
		System.out.println("BoardService boardReplyList()");
		ArrayList<ReplyDto> replyList = bdao.selectReplyList(viewBno);
		
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
				int relikeCheck = bdao.selectReplyLikeCheck(rno, loginNickname);
				replyList.get(i).setRstate(relikeCheck);
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

}
