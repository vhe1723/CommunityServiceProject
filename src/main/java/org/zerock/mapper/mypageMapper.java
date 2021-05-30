package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.groupVO;

public interface mypageMapper {
   // @Select("select * from tbl_group where gno > 0")
   public List<groupVO> getMyList(String id); // 내가 만든 그룹
   public List<groupVO> getJoinList(String id); // 참여한 그룹
   
   
   
   
}