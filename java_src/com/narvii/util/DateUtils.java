package com.narvii.util;

import android.content.Context;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.lib.R;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DateUtils {
    public static final long ONE_DAY = 86400000;
    public static final long THIRTY_DAYS = 2592000000L;
    protected static SimpleDateFormat dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
    protected static SimpleDateFormat dateFormatWithYear = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());

    public static long getMicroSecondsOfDays(int i) {
        return i * 24 * InviteMembersFragment.SECOND_HOUR * 1000;
    }

    public static boolean isSameDay(Date date, Date date2) {
        if (date != null && date2 != null) {
            if (date.getTime() == date2.getTime()) {
                return true;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            int i3 = calendar.get(5);
            calendar.setTime(date2);
            int i4 = calendar.get(1);
            int i5 = calendar.get(2);
            int i6 = calendar.get(5);
            if (i == i4 && i2 == i5 && i3 == i6) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSameYear(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = calendar.get(1);
        calendar.setTime(new Date());
        return i == calendar.get(1);
    }

    public static boolean isSameMonth(Date date, Date date2) {
        if (date != null && date2 != null) {
            if (date.getTime() == date2.getTime()) {
                return true;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int i = calendar.get(1);
            int i2 = calendar.get(2);
            calendar.setTime(date2);
            int i3 = calendar.get(1);
            int i4 = calendar.get(2);
            if (i == i3 && i2 == i4) {
                return true;
            }
        }
        return false;
    }

    public static boolean isToday(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = calendar.get(1);
        int i2 = calendar.get(2);
        int i3 = calendar.get(5);
        calendar.setTime(new Date());
        return i == calendar.get(1) && i2 == calendar.get(2) && calendar.get(5) == i3;
    }

    public static boolean isYesterday(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i = calendar.get(1);
        int i2 = calendar.get(6);
        calendar.setTime(new Date());
        calendar.add(6, -1);
        return i == calendar.get(1) && calendar.get(6) == i2;
    }

    public static int getContainsDays(long j, long j2) {
        if (j > j2) {
            return 0;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j2);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return (int) (((calendar2.getTime().getTime() - calendar.getTime().getTime()) / ONE_DAY) + 1);
    }

    public static String formatDate(Context context, Date date) {
        if (date == null) {
            return null;
        }
        if (isToday(date)) {
            return context.getString(R.string.today);
        }
        if (isYesterday(date)) {
            return context.getString(R.string.yesterday);
        }
        if (isSameYear(date)) {
            return dateFormatWithoutYear.format(date);
        }
        return dateFormatWithYear.format(date);
    }
}
