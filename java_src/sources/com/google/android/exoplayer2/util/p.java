package com.google.android.exoplayer2.util;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public interface p {

    public interface a {
        void a();
    }

    boolean a(int i10);

    boolean b(a aVar);

    a obtainMessage(int i10);

    a obtainMessage(int i10, int i11, int i12);

    a obtainMessage(int i10, int i11, int i12, @Nullable Object obj);

    a obtainMessage(int i10, @Nullable Object obj);

    boolean post(Runnable runnable);

    void removeCallbacksAndMessages(@Nullable Object obj);

    void removeMessages(int i10);

    boolean sendEmptyMessage(int i10);

    boolean sendEmptyMessageAtTime(int i10, long j6);
}
