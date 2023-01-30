package com.lolez.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.dto.BoardDto;
import com.lolez.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private HttpSession session;

	@Autowired
	private BoardService bsvc;

	@RequestMapping(value = "/boardList")
	public ModelAndView boardList() {
		System.out.println("게시판 목록창 요청");
		ModelAndView mav = new ModelAndView();
		// 1. 글목록 조회
		ArrayList<BoardDto> boardList = bsvc.boardList();
		mav.addObject("boardList", boardList);

		// 2. 글목록페이지 지정
		mav.setViewName("board/BoardList");
		return mav;
	}

	@RequestMapping(value = "/boardWriteForm")
	public ModelAndView BoardWrite() {
		System.out.println("글 작성 페이지 요청");
		ModelAndView mav = new ModelAndView();

		/*
		 * if(session.getAttribute("loginNickname") == null) {
		 * mav.setViewName("redirect:/memberLoginForm"); return mav; }else {
		 * mav.setViewName("board/BoardWriteForm"); }
		 */
		mav.setViewName("board/BoardWriteForm");
		return mav;
	}

	@RequestMapping(value = "/boardWrite")
	public ModelAndView boardWrite(BoardDto board) throws IllegalStateException, IOException {
		System.out.println("새 글 등록 요청");
		ModelAndView mav = new ModelAndView();

		// 1. session에서 로그인 아이디 확인
		/*
		 * if (session.getAttribute("loginNickname") == null) {
		 * mav.setViewName("redirect:/memberLoginForm"); return mav; }
		 */

		/* String loginNickname = (String) session.getAttribute("loginNickname"); */
		
		String loginNickname ="test001";
		// 2.board.bwriter(작성자)에 저장
		board.setBwriter(loginNickname);
		System.out.println(board);

		// 3. 글등록 서비스 호출
		int writeResult = bsvc.boardWrite(board);
		if (writeResult > 0) { // 글 등록에 성공 했을 경우

			// 글목록 페이지 이동요청
			mav.setViewName("redirect:/boardList");

		} else { // 글 등록에 실패 했을 경우

			// 글작성 페이지 이동요청
			mav.setViewName("redirect:/boardWriteForm");
		}

		return mav;
	}
	
	@RequestMapping(value = "/boardView")
	public ModelAndView boardView(int viewBno) {
		System.out.println("상세보기 페이지 이동 요청");
		ModelAndView mav = new ModelAndView();
		System.out.println("상세보기 글번호 : " + viewBno);
		
		//1. 글 상세 정보 조회
		BoardDto board = bsvc.boardView(viewBno);
		System.out.println(board);
		mav.addObject("board", board);
		
		/*
		 * //2. 추천수 조회 int blikeCount = bsvc.boardLikeCount(viewBno);
		 * mav.addObject("blikeCount", blikeCount);
		 */
		
		/* String loginNickname = (String)session.getAttribute("loginNickname"); */
		
		/*
		 * //3. 댓글 목록 조회 ArrayList<ReplyDto> replyList =
		 * bsvc.boardReplyList(viewBno,loginId); mav.addObject("replyList", replyList);
		 */
		
		//. 글 상세보기 페이지 이동
		mav.setViewName("board/BoardView");
		return mav;
	}
	
	/*@RequestMapping(value = "/boardLike")
	public @ResponseBody String boardLike(int lbno, String lmid) {
		System.out.println("게시글 추천 처리 요청");
		System.out.println("추천할 글번호 : " + lbno);
		System.out.println("추천자 아이디 : " + lmid);
		
		String result = bsvc.boardLike(lbno, lmid);
		
		return result;
	}*/

}
