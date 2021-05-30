package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.groupVO;

public interface groupMapper {
   // @Select("select * from tbl_group where gno > 0")
   public List<groupVO> getList();
   public void insert(groupVO group);
   public void insertSelectKey(groupVO group);
   public groupVO read(Long gno);
   public int delete(Long gno);
   public int update(groupVO group);
   public int update2(groupVO group);
   
}