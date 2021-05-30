package org.zerock.service;

import java.util.List;

import org.zerock.domain.commentVO;

public interface commentService {
   public void register(commentVO comment);
   public commentVO get(Long b_no);
   public boolean modify(commentVO comment);
   public boolean remove(Long b_no);
   public List<commentVO> getList(Long b_no);
}