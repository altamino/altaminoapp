package com.google.android.datatransport.cct.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes6.dex */
@AutoValue
public abstract class l {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract l a();

        @NonNull
        public abstract a b(@Nullable Integer num);

        @NonNull
        public abstract a c(long j6);

        @NonNull
        public abstract a d(long j6);

        @NonNull
        public abstract a e(@Nullable o oVar);

        @NonNull
        abstract a f(@Nullable byte[] bArr);

        @NonNull
        abstract a g(@Nullable String str);

        @NonNull
        public abstract a h(long j6);
    }

    @Nullable
    public abstract Integer b();

    public abstract long c();

    public abstract long d();

    @Nullable
    public abstract o e();

    @Nullable
    public abstract byte[] f();

    @Nullable
    public abstract String g();

    public abstract long h();

    private static a a() {
        return new f.b();
    }

    @NonNull
    public static a i(@NonNull String str) {
        return a().g(str);
    }

    @NonNull
    public static a j(@NonNull byte[] bArr) {
        return a().f(bArr);
    }
}
