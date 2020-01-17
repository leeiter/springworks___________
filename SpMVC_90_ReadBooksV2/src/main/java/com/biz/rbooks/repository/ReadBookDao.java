package com.biz.rbooks.repository;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.InsertProvider;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.UpdateProvider;

import com.biz.rbooks.domain.ReadBookDTO;

public interface ReadBookDao {
	
	/*
	
	@Select("SELECT * FROM tbl_read_book")
	public List<ReadBookDTO> selectAll();
	
	@InsertProvider(type=ReadBookSQL.class, method="insert_sql")
	public int insert(ReadBookDTO rbDTO);
	
	@Select("SELECT MAX(rb_seq) FROM tbl_read_book")
	public String getMaxRBSeq();
	
	@Select("SELECT * FROM tbl_read_book WHERE rb_seq = #{rb_seq}")
	public ReadBookDTO findByRBSeq(long rb_seq);
	
	@UpdateProvider(type = ReadBookSQL.class, method = "update_sql")
	public int update(ReadBookDTO rbDTO);
	
	@Delete("DELETE FROM tbl_read_book WHERE rb_seq = #{rb_seq}")
	public int delete(long rb_seq);
	
	*/

}
