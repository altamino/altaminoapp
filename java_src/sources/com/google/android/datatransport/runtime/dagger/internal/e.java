package com.google.android.datatransport.runtime.dagger.internal;

/* JADX INFO: loaded from: classes11.dex */
public final class e {
    public static <T> void a(T t5, Class<T> cls) {
        if (t5 != null) {
            return;
        }
        throw new IllegalStateException(cls.getCanonicalName() + " must be set");
    }

    public static <T> T c(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    public static <T> T b(T t5) {
        t5.getClass();
        return t5;
    }
}
