package com.narvii.util;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* loaded from: classes3.dex */
public class TimeUtils {
    private static SimpleDateFormat durationWithHour = new SimpleDateFormat("HH:mm:ss");
    private static SimpleDateFormat durationWithoutHour;

    static {
        durationWithHour.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        durationWithoutHour = new SimpleDateFormat("mm:ss");
        durationWithoutHour.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
    }

    public static String formatTimeDuration(long j) {
        if (j > 3600000) {
            return durationWithHour.format(Long.valueOf(j));
        }
        return durationWithoutHour.format(Long.valueOf(j));
    }

    public static String getMinsFormat(int i, String str) {
        int i2 = i / 60;
        String str2 = i2 + "+ " + str;
        if (i2 < 5) {
            return "<5 " + str;
        }
        Integer numValueOf = Integer.valueOf((i2 / 5) * 5);
        return NumberFormat.getInstance(Locale.US).format(numValueOf) + "+ " + str;
    }
}
