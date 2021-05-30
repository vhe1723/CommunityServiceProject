package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.groupVO;
import org.zerock.mapper.groupMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class groupServiceImpl implements groupService {
   
   private groupMapper mapper;
   
   @Override
   public void register(groupVO group) {
      log.info("register----------------" + group);
      mapper.insertSelectKey(group);
   }
   
   @Override
   public groupVO get(Long gno) {
      log.info("get------------");
      return mapper.read(gno);
   }
   
   
   
   
   
   @Override
   public boolean modify2(groupVO group) {
      log.info("modify2------------");
      return mapper.update2(group)==1;
   }
   
   
   
   
   
   
   
   
   @Override
   public boolean modify(groupVO group) {
      log.info("modify-------------");
      return mapper.update(group)==1;
   }
   @Override
   public boolean remove(Long gno) {
      log.info("remove-------------");
      return mapper.delete(gno)==1;
   }
   @Override
   public List<groupVO> getList() {
      log.info("getList-----");
      return mapper.getList();
   }
   
}