package com.B509.JKGLPT.mapper;

import java.util.List;

import com.B509.JKGLPT.Vo.ShowDiscussionVO;
import com.B509.JKGLPT.pojo.Discussion;
import com.github.abel533.mapper.Mapper;

public interface DiscussionMapper extends Mapper<Discussion> {
	public List<ShowDiscussionVO> queryDisscussionVO(Integer drugs_id);
}
