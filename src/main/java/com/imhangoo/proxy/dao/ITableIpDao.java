package com.imhangoo.proxy.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.imhangoo.proxy.entity.TableIp;

@Repository
public interface ITableIpDao {

	int getRowCount();

	List<TableIp> selectByParams(Map<String, Object> params);

	List<TableIp> fetchByParams(Map<String, Object> params);

}
