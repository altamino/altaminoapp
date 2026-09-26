package com.google.firebase.crashlytics.internal.common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes8.dex */
public interface c0 {

    @AutoValue
    public static abstract class a {
        @VisibleForTesting
        public static a b(String str) {
            return a(str, null);
        }

        @NonNull
        public abstract String c();

        @Nullable
        public abstract String d();

        static a a(String str, @Nullable String str2) {
            return new c(str, str2);
        }
    }

    a a();
}
