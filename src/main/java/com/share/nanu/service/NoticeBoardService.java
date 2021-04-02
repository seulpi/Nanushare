package com.share.nanu.service;

import java.util.List;

import com.share.nanu.paging.Criteria;
import com.share.nanu.VO.BoardVO;

public interface NoticeBoardService {
	// 게시글 리스트
		public List<BoardVO> getList();

		// 페이징 적용한 게시글 리스트
		public List<BoardVO> getList(Criteria cri);

		// 페이징 단위에 적용되는 최대 게시글 단위
		public int getTotal(Criteria cri);

		// 게시글 작성
		public void writeBoard(BoardVO boardVO);

		// 작성글 확인
		public BoardVO getBoard(int getb_index);

		// 작성글 삭제
		public void deleteBoard(BoardVO boardVO);

		// AJAX 작성글 삭제
		public int remove(int bId);

		// 작성글 수정
		public void modifyBoard(BoardVO boardVO);

		// 답변글 작성 이동
		public BoardVO getReply(int getb_index);

		// 답변글 작성
		public void replyBoard(BoardVO boardVO);
}
