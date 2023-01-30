package com.lolez.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.lolez.dto.BoardDto;


public interface BoardDao {
	
	ArrayList<BoardDto> selectBoardList();

	int selectMaxBno();

	int insertBoard(BoardDto board);

	void updateBoardHits(int viewBno);

	BoardDto selectBoardView(int viewBno);

	/* String selectLikeCheck(int lbno, String lmid); */

}
