package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.f;

/* JADX INFO: loaded from: classes10.dex */
public interface d<I, O, E extends f> {
    @Nullable
    I dequeueInputBuffer() throws f;

    @Nullable
    O dequeueOutputBuffer() throws f;

    void flush();

    void queueInputBuffer(I i10) throws f;

    void release();
}
