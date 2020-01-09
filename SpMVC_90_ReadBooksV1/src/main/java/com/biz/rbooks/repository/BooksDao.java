package com.biz.rbooks.repository;

import java.util.List;

import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;

import com.biz.rbooks.domain.BooksDTO;

public interface BooksDao {
	
	@Select("SELECT * FROM tbl_books")
	public List<BooksDTO> selectAll();
	
	@InsertProvider(type=BooksSQL.class, method="insert_sql")
	public int insert(BooksDTO bsDTO);

}
