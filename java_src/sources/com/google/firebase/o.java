package com.google.firebase;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.auto.value.AutoValue;

/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class o {
    public abstract long b();

    public abstract long c();

    public abstract long d();

    @NonNull
    public static o a(long j6, long j10, long j11) {
        return new a(j6, j10, j11);
    }

    @NonNull
    public static o e() {
        return a(System.currentTimeMillis(), SystemClock.elapsedRealtime(), SystemClock.uptimeMillis());
    }
}
