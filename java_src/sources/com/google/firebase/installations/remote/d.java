package com.google.firebase.installations.remote;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes8.dex */
@AutoValue
public abstract class d {

    @AutoValue.Builder
    public static abstract class a {
        @NonNull
        public abstract d a();

        @NonNull
        public abstract a b(@NonNull f fVar);

        @NonNull
        public abstract a c(@NonNull String str);

        @NonNull
        public abstract a d(@NonNull String str);

        @NonNull
        public abstract a e(@NonNull b bVar);

        @NonNull
        public abstract a f(@NonNull String str);
    }

    public enum b {
        OK,
        BAD_CONFIG
    }

    @Nullable
    public abstract f b();

    @Nullable
    public abstract String c();

    @Nullable
    public abstract String d();

    @Nullable
    public abstract b e();

    @Nullable
    public abstract String f();

    @NonNull
    public static a a() {
        return new com.google.firebase.installations.remote.a.b();
    }
}
