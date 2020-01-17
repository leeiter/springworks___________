package com.biz.rbooks.repository;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.biz.rbooks.domain.ReadBookVO;

@Mapper // mapper로 확인시켜주는 어노테이션 근데 유무 차이는 없음
public interface ReadBookDao {

	@Select("SELECT * FROM tbl_read_book")
	public List<ReadBookVO> selectAll();

}
