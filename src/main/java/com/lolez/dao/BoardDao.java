package com.lolez.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Select;

import com.lolez.dto.BoardDto;


public interface BoardDao {
	
	ArrayList<BoardDto> selectBoardList();

}
