package com.bumptech.glide.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;

/* JADX INFO: loaded from: classes8.dex */
public final class j {
    public static void a(boolean z6, @NonNull String str) {
        if (!z6) {
            throw new IllegalArgumentException(str);
        }
    }

    @NonNull
    public static <T> T d(@Nullable T t5) {
        return (T) e(t5, "Argument must not be null");
    }

    @NonNull
    public static <T> T e(@Nullable T t5, @NonNull String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    @NonNull
    public static String b(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    @NonNull
    public static <T extends Collection<Y>, Y> T c(@NonNull T t5) {
        if (!t5.isEmpty()) {
            return t5;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }
}
