package com.google.android.material.datepicker;

import android.annotation.TargetApi;
import androidx.annotation.Nullable;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
class s {
    static final String UTC = "UTC";
    static AtomicReference<o> timeSourceRef = new AtomicReference<>();

    static DateFormat f(Locale locale) {
        return e(0, locale);
    }

    static Calendar k() {
        return l(null);
    }

    @TargetApi(24)
    static android.icu.text.DateFormat b(Locale locale) {
        return c("MMMEd", locale);
    }

    static o g() {
        o oVar = timeSourceRef.get();
        return oVar == null ? o.c() : oVar;
    }

    private static TimeZone h() {
        return TimeZone.getTimeZone(UTC);
    }

    @TargetApi(24)
    private static android.icu.util.TimeZone j() {
        return android.icu.util.TimeZone.getTimeZone(UTC);
    }

    @TargetApi(24)
    static android.icu.text.DateFormat m(Locale locale) {
        return c("yMMMEd", locale);
    }

    static long a(long j6) {
        Calendar calendarK = k();
        calendarK.setTimeInMillis(j6);
        return d(calendarK).getTimeInMillis();
    }

    @TargetApi(24)
    private static android.icu.text.DateFormat c(String str, Locale locale) {
        android.icu.text.DateFormat instanceForSkeleton = android.icu.text.DateFormat.getInstanceForSkeleton(str, locale);
        instanceForSkeleton.setTimeZone(j());
        return instanceForSkeleton;
    }

    static Calendar d(Calendar calendar) {
        Calendar calendarL = l(calendar);
        Calendar calendarK = k();
        calendarK.set(calendarL.get(1), calendarL.get(2), calendarL.get(5));
        return calendarK;
    }

    private static DateFormat e(int i10, Locale locale) {
        DateFormat dateInstance = DateFormat.getDateInstance(i10, locale);
        dateInstance.setTimeZone(h());
        return dateInstance;
    }

    static Calendar i() {
        Calendar calendarA = g().a();
        calendarA.set(11, 0);
        calendarA.set(12, 0);
        calendarA.set(13, 0);
        calendarA.set(14, 0);
        calendarA.setTimeZone(h());
        return calendarA;
    }

    static Calendar l(@Nullable Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(h());
        if (calendar == null) {
            calendar2.clear();
        } else {
            calendar2.setTimeInMillis(calendar.getTimeInMillis());
        }
        return calendar2;
    }
}
