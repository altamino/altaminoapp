package com.google.android.material.datepicker;

import android.os.Build;
import android.text.format.DateUtils;
import java.util.Date;
import java.util.Locale;

/* JADX INFO: loaded from: classes2.dex */
class d {
    static String b(long j6, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.b(locale).format(new Date(j6)) : s.f(locale).format(new Date(j6));
    }

    static String c(long j6) {
        return DateUtils.formatDateTime(null, j6, 8228);
    }

    static String e(long j6, Locale locale) {
        return Build.VERSION.SDK_INT >= 24 ? s.m(locale).format(new Date(j6)) : s.f(locale).format(new Date(j6));
    }

    static String a(long j6) {
        return b(j6, Locale.getDefault());
    }

    static String d(long j6) {
        return e(j6, Locale.getDefault());
    }
}
