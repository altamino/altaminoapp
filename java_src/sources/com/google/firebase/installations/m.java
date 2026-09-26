package com.google.firebase.installations;

import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes11.dex */
@AutoValue
public abstract class m {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract m a();

        @NonNull
        public abstract a b(@NonNull String str);

        @NonNull
        public abstract a c(long j6);

        @NonNull
        public abstract a d(long j6);
    }

    @NonNull
    public abstract String b();

    @NonNull
    public abstract long c();

    @NonNull
    public abstract long d();

    @NonNull
    public static a a() {
        return new com.google.firebase.installations.a.b();
    }
}
