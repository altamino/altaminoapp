package com.google.android.exoplayer2.ui;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface b1 {

    public interface a {
        void j(b1 b1Var, long j6, boolean z6);

        void q(b1 b1Var, long j6);

        void r(b1 b1Var, long j6);
    }

    void a(a aVar);

    long getPreferredUpdateDelay();

    void setAdGroupTimesMs(@Nullable long[] jArr, @Nullable boolean[] zArr, int i10);

    void setBufferedPosition(long j6);

    void setDuration(long j6);

    void setEnabled(boolean z6);

    void setPosition(long j6);
}
