package com.narvii.util;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;
import com.narvii.invite.InviteMembersFragment;
import com.narvii.lib.R;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class DateTimeFormatter {
    private static DateFormat FMT_ALL;
    private static DateFormat FMT_DATE;
    private static DateFormat FMT_DATE_YEARLESS;
    private static DateFormat FMT_TIME;
    private static DateFormat FMT_WEEK;
    private static SimpleDateFormat ISO_8601_FMT;
    private static long TIME_START_OF_THIS_YEAR;
    private static SimpleDateFormat TODAY;
    private Context context;
    private static final TimeZone TZ_0 = TimeZone.getTimeZone("+0000");
    private static final AtomicReference<SimpleDateFormat> AR_ISO_8601_P = new AtomicReference<>();
    private static final AtomicReference<SimpleDateFormat> AR_ISO_8601_P_TZ = new AtomicReference<>();
    private static WeakHashMap<Context, DateTimeFormatter> instances = new WeakHashMap<>();

    public static String formatISO8601(Date date) {
        if (ISO_8601_FMT == null) {
            ISO_8601_FMT = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
            ISO_8601_FMT.setTimeZone(TZ_0);
        }
        return ISO_8601_FMT.format(date);
    }

    public static Date parseISO8601(String str) {
        Date date = null;
        if (str != null) {
            if (str.endsWith("Z")) {
                SimpleDateFormat andSet = AR_ISO_8601_P_TZ.getAndSet(null);
                if (andSet == null) {
                    andSet = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
                    andSet.setTimeZone(TZ_0);
                }
                try {
                    date = andSet.parse(str);
                } catch (Exception unused) {
                } catch (Throwable th) {
                    AR_ISO_8601_P_TZ.set(andSet);
                    throw th;
                }
                AR_ISO_8601_P_TZ.set(andSet);
            } else {
                SimpleDateFormat andSet2 = AR_ISO_8601_P.getAndSet(null);
                if (andSet2 == null) {
                    andSet2 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US);
                }
                try {
                    date = andSet2.parse(str);
                } catch (Exception unused2) {
                } catch (Throwable th2) {
                    AR_ISO_8601_P.set(andSet2);
                    throw th2;
                }
                AR_ISO_8601_P.set(andSet2);
            }
        }
        return date == null ? new Date(0L) : date;
    }

    public static String today() {
        if (TODAY == null) {
            TODAY = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
        }
        return TODAY.format(new Date());
    }

    public static DateTimeFormatter getInstance(Context context) {
        Context applicationContext = context.getApplicationContext();
        DateTimeFormatter dateTimeFormatter = instances.get(applicationContext);
        if (dateTimeFormatter != null) {
            return dateTimeFormatter;
        }
        DateTimeFormatter dateTimeFormatter2 = new DateTimeFormatter(applicationContext);
        instances.put(applicationContext, dateTimeFormatter2);
        return dateTimeFormatter2;
    }

    private DateTimeFormatter(Context context) {
        this.context = context;
    }

    public DateTimeFormatter() {
    }

    public String format(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - date.getTime()) / 1000);
        if (iCurrentTimeMillis < -1200) {
            if (FMT_ALL == null) {
                FMT_ALL = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
            }
            return FMT_ALL.format(date);
        }
        if (iCurrentTimeMillis < 300) {
            Context context = this.context;
            return context == null ? "just a moment ago" : context.getString(R.string.datetime_a_moment_ago);
        }
        if (iCurrentTimeMillis < 3600) {
            int i = iCurrentTimeMillis / 60;
            Context context2 = this.context;
            if (context2 == null) {
                return String.format(Locale.US, "%d minutes ago", Integer.valueOf(i));
            }
            return context2.getString(R.string.datetime_n_minutes_ago, Integer.valueOf(i));
        }
        if (iCurrentTimeMillis < 5400) {
            Context context3 = this.context;
            return context3 == null ? "about an hour ago" : context3.getString(R.string.datetime_a_hour_ago);
        }
        if (iCurrentTimeMillis < 86400) {
            int i2 = (iCurrentTimeMillis + 1800) / InviteMembersFragment.SECOND_HOUR;
            Context context4 = this.context;
            return context4 == null ? String.format(Locale.US, "%d hours ago", Integer.valueOf(i2)) : context4.getString(R.string.datetime_n_hours_ago, Integer.valueOf(i2));
        }
        if (iCurrentTimeMillis < 172800) {
            Context context5 = this.context;
            return context5 == null ? "1 day ago" : context5.getString(R.string.datetime_a_day_ago);
        }
        if (iCurrentTimeMillis < 2592000) {
            int i3 = (iCurrentTimeMillis + 43200) / InviteMembersFragment.SECOND_DAY;
            Context context6 = this.context;
            if (context6 == null) {
                return String.format(Locale.US, "%d days ago", Integer.valueOf(i3));
            }
            return context6.getString(R.string.datetime_n_days_ago, Integer.valueOf(i3));
        }
        if (isThisYear(date.getTime())) {
            if (FMT_DATE_YEARLESS == null) {
                FMT_DATE_YEARLESS = getYearlessDateFormat(Locale.getDefault());
            }
            return FMT_DATE_YEARLESS.format(date);
        }
        if (FMT_DATE == null) {
            FMT_DATE = DateFormat.getDateInstance(2, Locale.getDefault());
        }
        return FMT_DATE.format(date);
    }

    public String formatHeadlineFeedTime(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - date.getTime()) / 1000);
        if (iCurrentTimeMillis < -1200) {
            if (FMT_ALL == null) {
                FMT_ALL = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
            }
            return this.context.getString(R.string.datetime_now);
        }
        if (iCurrentTimeMillis < 300) {
            return this.context.getString(R.string.datetime_now);
        }
        if (iCurrentTimeMillis < 3600) {
            return (iCurrentTimeMillis / 60) + "m";
        }
        if (iCurrentTimeMillis < 5400) {
            return "1h";
        }
        if (iCurrentTimeMillis < 86400) {
            return ((iCurrentTimeMillis + 1800) / InviteMembersFragment.SECOND_HOUR) + "h";
        }
        if (iCurrentTimeMillis < 172800) {
            return "1d";
        }
        if (iCurrentTimeMillis < 2592000) {
            return ((iCurrentTimeMillis + 43200) / InviteMembersFragment.SECOND_DAY) + "d";
        }
        if (iCurrentTimeMillis < 15552000) {
            if (FMT_DATE_YEARLESS == null) {
                FMT_DATE_YEARLESS = getYearlessDateFormat(Locale.getDefault());
            }
            return FMT_DATE_YEARLESS.format(date);
        }
        if (FMT_DATE == null) {
            FMT_DATE = DateFormat.getDateInstance(2, Locale.getDefault());
        }
        return FMT_DATE.format(date);
    }

    public String formatChat(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (((int) ((jCurrentTimeMillis - date.getTime()) / 1000)) < -1200) {
            if (FMT_ALL == null) {
                FMT_ALL = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
            }
            return FMT_ALL.format(date);
        }
        long jTrimDate = trimDate(jCurrentTimeMillis, TimeZone.getDefault());
        if (date.getTime() >= jTrimDate) {
            if (FMT_TIME == null) {
                FMT_TIME = DateFormat.getTimeInstance(3, Locale.getDefault());
            }
            return FMT_TIME.format(date);
        }
        if (date.getTime() >= jTrimDate - DateUtils.ONE_DAY) {
            if (FMT_TIME == null) {
                FMT_TIME = DateFormat.getTimeInstance(3, Locale.getDefault());
            }
            String str = FMT_TIME.format(date);
            Context context = this.context;
            if (context != null) {
                return context.getString(R.string.datetime_yesterday, str);
            }
            return "Yesterday " + str;
        }
        if (date.getTime() >= jTrimDate - 518400000) {
            if (FMT_WEEK == null) {
                FMT_WEEK = new SimpleDateFormat("E", Locale.getDefault());
            }
            String str2 = FMT_WEEK.format(date);
            if (FMT_TIME == null) {
                FMT_TIME = DateFormat.getTimeInstance(3, Locale.getDefault());
            }
            String str3 = FMT_TIME.format(date);
            Context context2 = this.context;
            if (context2 != null) {
                return context2.getString(R.string.datetime_week_time, str2, str3);
            }
            return str2 + " " + str3;
        }
        if (isThisYear(date.getTime())) {
            if (FMT_DATE_YEARLESS == null) {
                FMT_DATE_YEARLESS = getYearlessDateFormat(Locale.getDefault());
            }
            String str4 = FMT_DATE_YEARLESS.format(date);
            if (FMT_TIME == null) {
                FMT_TIME = DateFormat.getTimeInstance(3, Locale.getDefault());
            }
            String str5 = FMT_TIME.format(date);
            Context context3 = this.context;
            if (context3 != null) {
                return context3.getString(R.string.datetime_date_time, str4, str5);
            }
            return str4 + " " + str5;
        }
        if (FMT_ALL == null) {
            FMT_ALL = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
        }
        return FMT_ALL.format(date);
    }

    public String memberSinceDate(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        Context context = this.context;
        if (context != null) {
            return context.getString(R.string.datetime_member_since, daysSince(date));
        }
        return "Member for " + daysSince(date);
    }

    public String formatExpireCountDown(Context context, long j) {
        if (j < DateUtils.ONE_DAY) {
            return String.format(Locale.US, "%02d:%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(j)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(j) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
        }
        return formatRemainingText(context, j, true, true, false);
    }

    public static String liteMS(int i) {
        Locale locale = Locale.US;
        long j = i;
        double d = i;
        Double.isNaN(d);
        return String.format(locale, "%01d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(j) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(j))), Long.valueOf(Math.round(d / 1000.0d) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(j))));
    }

    public String formatExpireTime(Context context, long j) {
        return formatRemainingText(context, j, true, true, true);
    }

    public String formatRemainingText(Context context, long j, boolean z, boolean z2, boolean z3) {
        int i = (int) (j / DateUtils.ONE_DAY);
        long j2 = i * 24;
        int i2 = (int) ((j / 3600000) - j2);
        int i3 = (int) ((j / DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS) - ((j2 + i2) * 60));
        ArrayList arrayList = new ArrayList();
        if (z && i != 0) {
            if (i != 1) {
                arrayList.add(context.getString(R.string.datetime_n_days, Integer.valueOf(i)));
            } else {
                arrayList.add(context.getString(R.string.datetime_one_day));
            }
        }
        if (z2 && i2 != 0) {
            if (i2 != 1) {
                arrayList.add(context.getString(R.string.datetime_n_hours, Integer.valueOf(i2)));
            } else {
                arrayList.add(context.getString(R.string.datetime_one_hour));
            }
        }
        if (z3 && i3 != 0) {
            if (i3 != 1) {
                arrayList.add(context.getString(R.string.datetime_n_minutes, Integer.valueOf(i3)));
            } else {
                arrayList.add(context.getString(R.string.datetime_one_minute));
            }
        }
        return TextUtils.join(" ", arrayList);
    }

    public String daysSince(Date date) {
        int i;
        String string;
        if (date == null || date.getTime() == 0) {
            return "";
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        int time = (int) ((((jCurrentTimeMillis - date.getTime()) / 24) / 3600) / 1000);
        if (time > 365) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTime(date);
            int i2 = gregorianCalendar.get(1);
            i = 1;
            while (i < 30) {
                int i3 = i2 + i;
                gregorianCalendar.set(1, i3 + 1);
                if (gregorianCalendar.getTimeInMillis() > jCurrentTimeMillis) {
                    gregorianCalendar.set(1, i3);
                    time = (int) ((((jCurrentTimeMillis - gregorianCalendar.getTimeInMillis()) / 24) / 3600) / 1000);
                    break;
                }
                i++;
            }
            i = 0;
        } else {
            i = 0;
        }
        String string2 = null;
        if (i > 0) {
            if (i > 1) {
                Context context = this.context;
                if (context == null) {
                    string2 = i + " years";
                } else {
                    string2 = context.getString(R.string.datetime_n_years, Integer.valueOf(i));
                }
            } else {
                Context context2 = this.context;
                string2 = context2 == null ? "1 year" : context2.getString(R.string.datetime_one_year);
            }
        }
        int iMax = Math.max(time, 1);
        if (iMax > 1) {
            Context context3 = this.context;
            if (context3 == null) {
                string = iMax + " days";
            } else {
                string = context3.getString(R.string.datetime_n_days, Integer.valueOf(iMax));
            }
        } else {
            Context context4 = this.context;
            string = context4 == null ? "1 day" : context4.getString(R.string.datetime_one_day);
        }
        if (string2 == null) {
            return string;
        }
        Context context5 = this.context;
        if (context5 != null) {
            return context5.getString(R.string.datetime_years_days, string2, string);
        }
        return string2 + ", " + string;
    }

    public String endTime(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        if (FMT_ALL == null) {
            FMT_ALL = DateFormat.getDateTimeInstance(2, 3);
        }
        return FMT_ALL.format(date);
    }

    public static long trimDate(long j, TimeZone timeZone) {
        return j - ((timeZone.getRawOffset() + j) % DateUtils.ONE_DAY);
    }

    public static boolean isThisYear(long j) {
        if (TIME_START_OF_THIS_YEAR == 0) {
            Calendar calendar = Calendar.getInstance();
            calendar.set(calendar.get(1), 0, 1, 0, 0, 0);
            long timeInMillis = calendar.getTimeInMillis();
            TIME_START_OF_THIS_YEAR = timeInMillis - (timeInMillis % 1000);
        }
        return j >= TIME_START_OF_THIS_YEAR;
    }

    private static DateFormat getYearlessDateFormat(Locale locale) {
        String pattern = ((SimpleDateFormat) SimpleDateFormat.getDateInstance(1, locale)).toPattern();
        try {
            return new SimpleDateFormat(pattern.replaceAll(pattern.contains("de") ? "[^Mm]*[Yy]+[^Mm]*" : "[^DdMm]*[Yy]+[^DdMm]*", ""), locale);
        } catch (Exception e) {
            Log.e("fail to convert " + locale + " yearless pattern '" + pattern + "'", e);
            return new SimpleDateFormat("yyyy M", locale);
        }
    }

    public String formatChatCardTime(Date date) {
        if (date == null || date.getTime() == 0) {
            return "";
        }
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - date.getTime()) / 1000);
        if (iCurrentTimeMillis >= -1200) {
            return iCurrentTimeMillis > 86400 ? "" : formatHeadlineFeedTime(date);
        }
        if (FMT_ALL == null) {
            FMT_ALL = DateFormat.getDateTimeInstance(2, 3, Locale.getDefault());
        }
        return FMT_ALL.format(date);
    }
}
