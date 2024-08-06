package com.picmap.app.travel;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.picmap.app.board.BoardDAO;
import com.picmap.app.board.BoardDTO;

@Repository
public class TravelDAO implements BoardDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE = "com.picmap.app.travel.TravelDAO.";
	
	
	
	//게시판(게시글 리스트)
	@Override
	public List<BoardDTO> getList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public int add(BoardDTO travelDTO) throws Exception {
		return sqlSession.insert(NAMESPACE + "add", travelDTO);
	}
	
}
