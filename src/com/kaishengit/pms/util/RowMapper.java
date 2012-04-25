package com.kaishengit.pms.util;

import java.sql.ResultSet;
import java.sql.SQLException;

public interface RowMapper<T> {

	public T rowMapper(ResultSet rs) throws SQLException;
}
