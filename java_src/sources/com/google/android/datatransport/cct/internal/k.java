package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes11.dex */
@AutoValue
public abstract class k {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract k a();

        @NonNull
        public abstract a b(@Nullable com.google.android.datatransport.cct.internal.a aVar);

        @NonNull
        public abstract a c(@Nullable b bVar);
    }

    @Nullable
    public abstract com.google.android.datatransport.cct.internal.a b();

    @Nullable
    public abstract b c();

    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);

        private final int value;

        b(int i10) {
            this.value = i10;
        }
    }

    @NonNull
    public static a a() {
        return new e.b();
    }
}
