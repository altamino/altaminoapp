package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public class i0 implements d {
    @Override // com.google.android.exoplayer2.util.d
    public void a() {
    }

    @Override // com.google.android.exoplayer2.util.d
    public p createHandler(Looper looper, @Nullable Handler.Callback callback) {
        return new j0(new Handler(looper, callback));
    }

    protected i0() {
    }

    @Override // com.google.android.exoplayer2.util.d
    public long elapsedRealtime() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.exoplayer2.util.d
    public long uptimeMillis() {
        return SystemClock.uptimeMillis();
    }
}
