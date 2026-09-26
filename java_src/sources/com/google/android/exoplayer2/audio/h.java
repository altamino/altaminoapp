package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.c3;

/* JADX INFO: loaded from: classes11.dex */
public interface h {
    boolean a(boolean z6);

    c3 b(c3 c3Var);

    g[] getAudioProcessors();

    long getMediaDuration(long j6);

    long getSkippedOutputFrameCount();
}
