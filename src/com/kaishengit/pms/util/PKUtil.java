package com.kaishengit.pms.util;

import java.util.UUID;

public class PKUtil {

	public static String getId() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
	
}
