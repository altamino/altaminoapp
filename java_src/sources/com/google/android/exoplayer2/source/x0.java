package com.google.android.exoplayer2.source;

/* JADX INFO: loaded from: classes10.dex */
public interface x0 {

    public interface a<T extends x0> {
        void c(T t5);
    }

    boolean continueLoading(long j6);

    long getBufferedPositionUs();

    long getNextLoadPositionUs();

    boolean isLoading();

    void reevaluateBuffer(long j6);
}
