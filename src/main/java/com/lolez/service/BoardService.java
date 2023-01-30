package com.lolez.service;

import java.io.File;
import java.util.ArrayList;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.lolez.dao.BoardDao;
import com.lolez.dto.BoardDto;

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
		int bno = bdao.selectMaxBno() + 1 ;
		board.setBno(bno);
		
		int insertResult = 0;
		try {
			//Board 테이블 insert 호출
			insertResult = bdao.insertBoard(board);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return insertResult;
	}
	
	public BoardDto boardView(int viewBno) {
		System.out.println("BoardService boardList()");
		//조회수 증가
		bdao.updateBoardHits(viewBno);
		
		//글 정보 조회
		BoardDto board = bdao.selectBoardView(viewBno);
		
		return board;
	}
	
	/*
	 * public String boardLike(int lbno, String lmid) {
	 * System.out.println("BoardService boardLike()"); Gson gson = new Gson();
	 * JsonObject boardLike_json = new JsonObject();
	 * 
	 * //1. 추천유무 확인 String likeMid = bdao.selectLikeCheck(lbno, lmid);
	 * 
	 * if(likeMid == null) { System.out.println("추천 입력"); bdao.insertBoardLike(lbno,
	 * lmid); boardLike_json.addProperty("likeResult", "1"); } else {
	 * System.out.println("추천 취소"); bdao.deleteBoardLike(lbno, lmid);
	 * boardLike_json.addProperty("likeResult", "-1"); }
	 * 
	 * //2. 추천 처리 이후 추천수 조회 int likeCount = bdao.selectLikeCount(lbno);
	 * boardLike_json.addProperty("likeCount", likeCount);
	 * 
	 * System.out.println( gson.toJson(boardLike_json) ); return
	 * gson.toJson(boardLike_json); }
	 */

}
