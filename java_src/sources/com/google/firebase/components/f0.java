package com.google.firebase.components;

/* JADX INFO: loaded from: classes9.dex */
public final class f0 {
    public static void a(boolean z6, String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
    }

    public static <T> T c(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    public static void d(boolean z6, String str) {
        if (!z6) {
            throw new IllegalStateException(str);
        }
    }

    public static <T> T b(T t5) {
        t5.getClass();
        return t5;
    }
}
