package com.google.android.exoplayer2.util;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface d {
    public static final d DEFAULT = new i0();

    void a();

    p createHandler(Looper looper, @Nullable Handler.Callback callback);

    long elapsedRealtime();

    long uptimeMillis();
}
