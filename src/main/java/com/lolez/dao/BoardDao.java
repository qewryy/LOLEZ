package com.lolez.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.lolez.dto.BoardDto;
import com.lolez.dto.ReplyDto;

public interface BoardDao {

	ArrayList<BoardDto> selectBoardList();

	int selectMaxBno();
	
	int selectMaxRno();

	int insertBoard(BoardDto board);
	
	void updateBoardHits(int viewBno);
	
	String selectLikeCheck(@Param("lbno") int lbno,@Param("lname") String lname);
	
	int insertBoardLike(@Param("lbno") int lbno, @Param("lname") String lname);

	BoardDto selectBoardView(@Param("viewBno") int viewBno);

	void deleteBoardLike(@Param("lbno") int lbno, @Param("lname") String lname);
	
	int selectLikeCount(@Param("lbno") int lbno);
	
	int selectReplyLikeCount(@Param("rlno") int rlno);
	
	ArrayList<ReplyDto> selectReplyList(@Param("rbno") int rbno);
	
	String selectReplyLikeCheck(@Param("rlno") int rlno,@Param("loginNickname") String loginNickname,@Param("rlbno") int rlbno);

	int updatePoint(@Param("bwriter") String bwriter);

	int updateBoard(BoardDto modBoard);

	int insertReply(ReplyDto reply);

	int deleteReply(@Param("rno") int rno,@Param("rbno")  int rbno);

	void insertReplyLike(@Param("rlno") int rlno,@Param("rlname") String rlname,@Param("rlbno") int rlbno);

	void deleteReplyLike(@Param("rlno") int rlno,@Param("rlname") String rlname,@Param("rlbno") int rlbno);

	int deletereplylike(@Param("rno") int rno,@Param("rbno")  int rbno);

	int updateLikeCount(@Param("bno")int lbno,@Param("count") int likeCount);

	
}
