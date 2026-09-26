package com.narvii.util;

import android.content.Context;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.lib.R;
import com.narvii.util.http.ApiService;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes7.dex */
public class DateUtils {
    public static final long ONE_DAY = 86400000;
    public static final long THIRTY_DAYS = 2592000000L;
    protected static SimpleDateFormat dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
    protected static SimpleDateFormat dateFormatWithYear = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());

    public static long getMicroSecondsOfDays(int i10) {
        return ((long) (i10 * InviteMembersFragment.SECOND_DAY)) * 1000;
    }

    public static boolean isSameDay(Date date, Date date2) {
        if (date != null && date2 != null) {
            if (date.getTime() == date2.getTime()) {
                return true;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int i10 = calendar.get(1);
            int i11 = calendar.get(2);
            int i12 = calendar.get(5);
            calendar.setTime(date2);
            int i13 = calendar.get(1);
            int i14 = calendar.get(2);
            int i15 = calendar.get(5);
            if (i10 == i13 && i11 == i14 && i12 == i15) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSameMonth(Date date, Date date2) {
        if (date != null && date2 != null) {
            if (date.getTime() == date2.getTime()) {
                return true;
            }
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            int i10 = calendar.get(1);
            int i11 = calendar.get(2);
            calendar.setTime(date2);
            int i12 = calendar.get(1);
            int i13 = calendar.get(2);
            if (i10 == i12 && i11 == i13) {
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
        int i10 = calendar.get(1);
        calendar.setTime(new Date());
        return i10 == calendar.get(1);
    }

    public static boolean isToday(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i10 = calendar.get(1);
        int i11 = calendar.get(2);
        int i12 = calendar.get(5);
        calendar.setTime(new Date());
        return i10 == calendar.get(1) && i11 == calendar.get(2) && calendar.get(5) == i12;
    }

    public static boolean isYesterday(Date date) {
        if (date == null) {
            return false;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        int i10 = calendar.get(1);
        int i11 = calendar.get(6);
        calendar.setTime(new Date());
        calendar.add(6, -1);
        return i10 == calendar.get(1) && calendar.get(6) == i11;
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
        return isSameYear(date) ? dateFormatWithoutYear.format(date) : dateFormatWithYear.format(date);
    }

    public static int getContainsDays(long j6, long j10) {
        if (j6 > j10) {
            return 0;
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(j6);
        calendar.set(11, 0);
        calendar.set(12, 0);
        calendar.set(13, 0);
        calendar.set(14, 0);
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTimeInMillis(j10);
        calendar2.set(11, 0);
        calendar2.set(12, 0);
        calendar2.set(13, 0);
        calendar2.set(14, 0);
        return (int) (((calendar2.getTime().getTime() - calendar.getTime().getTime()) / ONE_DAY) + 1);
    }

    public static int ageFromBirthDate(Date date) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date(ApiService.timestamp()));
        Calendar calendar2 = Calendar.getInstance();
        calendar2.setTime(date);
        if (!calendar2.after(calendar)) {
            int i10 = calendar.get(1) - calendar2.get(1);
            if (calendar2.get(6) - calendar.get(6) > 3 || calendar2.get(2) > calendar.get(2) || (calendar2.get(2) == calendar.get(2) && calendar2.get(5) > calendar.get(5))) {
                return i10 - 1;
            }
            return i10;
        }
        throw new IllegalArgumentException("Can't be born in the future");
    }
}
