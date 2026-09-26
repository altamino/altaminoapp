package com.narvii.util;

import java.text.NumberFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes8.dex */
public class TimeUtils {
    private static SimpleDateFormat durationWithHour;
    private static SimpleDateFormat durationWithoutHour;

    static {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
        durationWithHour = simpleDateFormat;
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
        SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("mm:ss");
        durationWithoutHour = simpleDateFormat2;
        simpleDateFormat2.setTimeZone(TimeZone.getTimeZone("GMT+0:00"));
    }

    public static String getMinsFormat(int i10, String str) {
        int i11 = i10 / 60;
        if (i11 < 5) {
            return "<5 " + str;
        }
        Integer numValueOf = Integer.valueOf((i11 / 5) * 5);
        return NumberFormat.getInstance(Locale.US).format(numValueOf) + "+ " + str;
    }

    public static String formatTimeDuration(long j6) {
        if (j6 > 3600000) {
            return durationWithHour.format(Long.valueOf(j6));
        }
        return durationWithoutHour.format(Long.valueOf(j6));
    }
}
