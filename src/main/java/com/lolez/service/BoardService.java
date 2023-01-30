package com.lolez.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
