package com.B509.JKGLPT.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.B509.JKGLPT.Vo.ShowDiscussionVO;
import com.B509.JKGLPT.mapper.ShowDiscussionVOMapper;
@Service
public class ShowDiscussionService {
	@Autowired
	private ShowDiscussionVOMapper discussionVOMapper;
	
	public List<ShowDiscussionVO> queryDisscussionVO(Integer id) {
		return discussionVOMapper.queryDisscussionVO(id);
	}
}
