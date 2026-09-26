package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.audio.h0;

/* JADX INFO: loaded from: classes10.dex */
final class a extends com.google.android.exoplayer2.extractor.e implements g {
    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long a() {
        return -1L;
    }

    public a(long j6, long j10, h0.a aVar, boolean z6) {
        super(j6, j10, aVar.bitrate, aVar.frameSize, z6);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.g
    public long getTimeUs(long j6) {
        return c(j6);
    }
}
