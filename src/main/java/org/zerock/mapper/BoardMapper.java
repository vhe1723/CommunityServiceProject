package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

public interface BoardMapper {
//	@Select("select * from tbl_board where b_no > 0")
	public List<BoardVO> getList();
	public void insert(BoardVO board);
	public void insertSelectKey(BoardVO board);
	public BoardVO read(Long b_no);
	public int delete(Long b_no);
	public int update(BoardVO board);
	public List<BoardVO> getListWithPaging(Criteria cri);
	public int getTotalCount(Criteria cri);

}
