package org.zerock.service;

import java.util.List;

import org.zerock.domain.groupVO;

public interface mypageService {
   
   
   public List<groupVO> getMyList(String id);
   public List<groupVO> getJoinList(String id);
}