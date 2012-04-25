package com.kaishengit.pms.util;

import java.text.DecimalFormat;

public class FloatFormatUtil {

	public static String getFloat(long l) {
		DecimalFormat df = new DecimalFormat(".##");
		return df.format(l);
	}
}
