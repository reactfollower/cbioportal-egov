package com.softcen.bigcen.med.cohortcpm.dao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.softcen.bigcen.cmm.dao.BigcenMedAbstractMapperDAO;

@Repository("cohortcpmDAO")
public class CohortcpmDAO extends BigcenMedAbstractMapperDAO{
	
	/**
	 * cohort cont 리스트 출력
	 * @param paramMap
	 * @return
	 */
	public Object selectCohortContList(Map<Object, Object> paramMap){
		return sqlSession.selectList("cohort.selectCohortContList",paramMap);
	}

}