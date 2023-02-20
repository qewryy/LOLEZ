package com.lolez.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.lolez.dto.BoardDto;
import com.lolez.dto.ReplyDto;

public interface BoardDao {

	ArrayList<BoardDto> selectBoardList();

	int selectMaxBno();

	int insertBoard(BoardDto board);

	void updateBoardHits(int viewBno);

	BoardDto selectBoardView(int viewBno);

	String selectLikeCheck(int lbno, String lmid);

	int insertBoardLike(@Param("lbno") int lbno, @Param("lmid") String lmid);

	void deleteBoardLike(@Param("lbno") int lbno, @Param("lmid") String lmid);

	int selectLikeCount(int lbno);
	
	@Select("SELECT RE.*, M.MPROFILE AS REPROFILE, M.MSTATE "
			  + "FROM REPLYS RE, MEMBERS M "
			  + "WHERE ( RE.REWRITER = M.MID ) AND REBNO = #{rebno}"
			  + "ORDER BY RENUM ")
		ArrayList<ReplyDto> selectReplyList(int rebno);
	
	int selectReplyLikeCount(int renum);
	
	

}
