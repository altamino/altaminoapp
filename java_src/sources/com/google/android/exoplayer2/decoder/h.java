package com.google.android.exoplayer2.decoder;

/* JADX INFO: loaded from: classes8.dex */
public abstract class h extends com.google.android.exoplayer2.decoder.a {
    public int skippedOutputBufferCount;
    public long timeUs;

    public interface a<S extends h> {
        void a(S s);
    }

    public abstract void l();
}
