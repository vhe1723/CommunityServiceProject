package org.zerock.service;

import java.util.List;

import org.zerock.domain.groupVO;

public interface groupService {
   public void register(groupVO group);
   public groupVO get(Long gno);
   public boolean modify(groupVO group);
   public boolean modify2(groupVO group);
   public boolean remove(Long gno);
   public List<groupVO> getList();
}