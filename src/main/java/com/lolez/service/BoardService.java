package com.lolez.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lolez.dao.BoardDao;
import com.lolez.dto.BoardDto;
import com.lolez.dto.ReplyDto;

@Service
public class BoardService {

	@Autowired
	private BoardDao bdao;

	public ArrayList<BoardDto> boardList() {
		System.out.println("BoardService boardList()");
		ArrayList<BoardDto> boardList = bdao.selectBoardList();
		return boardList;
	}

	public int boardWrite(BoardDto board) {
		System.out.println("BoardService boardWrite()");
		// 글번호 생성
		int bno = bdao.selectMaxBno() + 1;
		board.setBno(bno);

		int insertResult = 0;
		try {
			// Board 테이블 insert 호출
			insertResult = bdao.insertBoard(board);
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
	/*
	 * public ArrayList<ReplyDto> boardReplyList(int viewBno, String loginId) {
	 * System.out.println("BoardService boardReplyList()"); ArrayList<ReplyDto>
	 * replyList = bdao.selectReplyList(viewBno); // 0번인덱스 댓글번호, 댓글작성자, 댓글내용, 댓글 작성일
	 * + 추천수 + 추천확인
	 * 
	 * for (int i = 0; i < replyList.size(); i++) { // 댓글의 추천수 조회 int renum =
	 * replyList.get(i).getRenum(); // SELECT COUNT(*) FROM REPLYLIKE WHERE RLNUM =
	 * #{renum}; int relikecount = bdao.selectReplyLikeCount(renum);
	 * replyList.get(i).setRelikecount(relikecount);
	 * 
	 * // 현재 페이지를 보는 사용자의 댓글 추천 여부 조회 if (loginId != null) { // SELECT RLMID FROM
	 * REPLYLIKE WHERE RLNUM = #{renum} AND RLMID = #{loginId}; String relikeCheck =
	 * bdao.selectReplyLikeCheck(renum, loginId);
	 * replyList.get(i).setRelikeCheck(relikeCheck); } } return replyList; }
	 */

	public String boardLike(int lbno, String lmid) {
		System.out.println("BoardService boardLike()");
		Gson gson = new Gson();
		JsonObject boardLike_json = new JsonObject();

		// 1. 추천유무 확인
		String likeMid = bdao.selectLikeCheck(lbno, lmid);

		if (likeMid == null) {
			System.out.println("추천 입력");
			bdao.insertBoardLike(lbno, lmid);
			boardLike_json.addProperty("likeResult", "1");
		} else {
			System.out.println("추천 취소");
			bdao.deleteBoardLike(lbno, lmid);
			boardLike_json.addProperty("likeResult", "-1");
		}

		// 2. 추천 처리 이후 추천수 조회
		int likeCount = bdao.selectLikeCount(lbno);
		boardLike_json.addProperty("likeCount", likeCount);

		System.out.println(gson.toJson(boardLike_json));
		return gson.toJson(boardLike_json);
	}

}
