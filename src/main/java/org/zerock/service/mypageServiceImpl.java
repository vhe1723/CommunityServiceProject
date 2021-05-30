package org.zerock.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.zerock.domain.groupVO;
import org.zerock.mapper.groupMapper;
import org.zerock.mapper.mypageMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class mypageServiceImpl implements mypageService {

	private mypageMapper mapper;

	@Override
	public List<groupVO> getMyList(String id) {
		log.info("getMyList-------");
		return mapper.getMyList(id);
	}

	@Override
	public List<groupVO> getJoinList(String id) {
		log.info("getJoinList-----");
		return mapper.getJoinList(id);
	}

}