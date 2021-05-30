package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.commentVO;
import org.zerock.domain.Criteria;

public interface commentMapper {
//	@Select("select * from tbl_comment where b_no > 0")
	public List<commentVO> getList(Long b_no);
	public void insert(commentVO comment);
	public void insertSelectKey2(commentVO comment);
	public commentVO read(Long b_no);
	public int delete(Long b_no);
	public int update(commentVO comment);

}