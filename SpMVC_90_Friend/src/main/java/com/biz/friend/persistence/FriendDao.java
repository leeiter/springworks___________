package com.biz.friend.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import com.biz.friend.domain.FriendVO;

public interface FriendDao {

	@Select("SELECT * FROM tbl_friend")
	public List<FriendVO> selectAll();

	public int insert(FriendVO friendVO);

	public int update(FriendVO friendVO);

	@Select("SELECT * FROM tbl_friend WHERE f_seq = #{f_seq}")
	public FriendVO findBySeq(long f_seq);

	@Delete("DELETE FROM tbl_friend WHERE f_seq = #{f_seq}")
	public int delete(long f_seq);

}
