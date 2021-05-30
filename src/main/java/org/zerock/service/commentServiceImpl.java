package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.commentVO;
import org.zerock.mapper.commentMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class commentServiceImpl implements commentService {
   
   private commentMapper mapper;
   
   @Override
   public void register(commentVO comment) {
      log.info("register----------------" + comment);
      mapper.insertSelectKey2(comment);
   }
   
   @Override
   public commentVO get(Long b_no) {
      log.info("get------------");
      return mapper.read(b_no);
   }
   
   
   

   
   
   
   
   @Override
   public boolean modify(commentVO comment) {
      log.info("modify-------------");
      return mapper.update(comment)==1;
   }
   @Override
   public boolean remove(Long b_no) {
      log.info("remove-------------");
      return mapper.delete(b_no)==1;
   }
   
   
   
   
   @Override
   public List<commentVO> getList(Long b_no) {
      log.info("getList-----");
      return mapper.getList(b_no);
   }
   
}