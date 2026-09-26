package com.google.android.exoplayer2.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    public static void a(boolean z6) {
        if (!z6) {
            throw new IllegalArgumentException();
        }
    }

    public static void b(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalArgumentException(String.valueOf(obj));
        }
    }

    public static int c(int i10, int i11, int i12) {
        if (i10 < i11 || i10 >= i12) {
            throw new IndexOutOfBoundsException();
        }
        return i10;
    }

    public static <T> T f(@Nullable T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static void g(boolean z6) {
        if (!z6) {
            throw new IllegalStateException();
        }
    }

    public static void h(boolean z6, Object obj) {
        if (!z6) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }

    public static <T> T i(@Nullable T t5) {
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException();
    }

    public static <T> T j(@Nullable T t5, Object obj) {
        if (t5 != null) {
            return t5;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }

    public static String d(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException();
    }

    public static <T> T e(@Nullable T t5) {
        t5.getClass();
        return t5;
    }
}
