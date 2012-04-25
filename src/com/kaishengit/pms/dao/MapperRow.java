package com.kaishengit.pms.dao;

import java.sql.ResultSet;

public interface MapperRow<T> {

	T rowMapper(ResultSet rs);

}
