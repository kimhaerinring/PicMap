package com.picmap.app.notice;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.picmap.app.board.BoardDAO;
import com.picmap.app.board.BoardDTO;
import com.picmap.app.board.BoardFileDTO;

@Repository
public class NoticeDAO implements BoardDAO{
	



	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.picmap.app.notice.NoticeDAO.";
	

	
	//게시판(게시글 리스트)
	@Override
	public List<BoardDTO> getList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"getList") ;
	}


	//게시글 작성
	@Override
	public int add(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int addFile(BoardFileDTO boardFileDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int update(BoardDTO boardDTO) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
	
	
	
	
}
