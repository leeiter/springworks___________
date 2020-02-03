package com.biz.rbooks.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Many;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.rbooks.domain.BooksDTO;

public interface BooksDao {
	
	@Select("SELECT * FROM tbl_books")
	public List<BooksDTO> selectAll();
	
	@InsertProvider(type=BooksSQL.class, method="insert_sql")
	public int insert(BooksDTO bsDTO);
	
	@Select("SELECT MAX(b_code) FROM tbl_books")
	public String getMaxBCode();
	
	@Select("SELECT * FROM tbl_books WHERE b_code = #{b_code}")
	public BooksDTO findByBCode(String b_code);
	
	@UpdateProvider(type = BooksSQL.class, method = "update_sql")
	public int update(BooksDTO bsDTO);
	
	@Delete("DELETE FROM tbl_books WHERE b_code = #{b_code}")
	public int delete(String b_code);

}
