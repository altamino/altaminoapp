package com.google.android.material.datepicker;

import androidx.annotation.Nullable;
import java.util.Calendar;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes2.dex */
class o {
    private static final o SYSTEM_TIME_SOURCE = new o(null, null);

    @Nullable
    private final Long fixedTimeMs;

    @Nullable
    private final TimeZone fixedTimeZone;

    static o c() {
        return SYSTEM_TIME_SOURCE;
    }

    Calendar a() {
        return b(this.fixedTimeZone);
    }

    Calendar b(@Nullable TimeZone timeZone) {
        Calendar calendar = timeZone == null ? Calendar.getInstance() : Calendar.getInstance(timeZone);
        Long l = this.fixedTimeMs;
        if (l != null) {
            calendar.setTimeInMillis(l.longValue());
        }
        return calendar;
    }

    private o(@Nullable Long l, @Nullable TimeZone timeZone) {
        this.fixedTimeMs = l;
        this.fixedTimeZone = timeZone;
    }
}
