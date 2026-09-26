package com.google.android.exoplayer2.mediacodec;

import androidx.annotation.IntRange;
import androidx.annotation.VisibleForTesting;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class h extends com.google.android.exoplayer2.decoder.g {
    public static final int DEFAULT_MAX_SAMPLE_COUNT = 32;

    @VisibleForTesting
    static final int MAX_SIZE_BYTES = 3072000;
    private long lastSampleTimeUs;
    private int maxSampleCount;
    private int sampleCount;

    public h() {
        super(2);
        this.maxSampleCount = 32;
    }

    public long u() {
        return this.timeUs;
    }

    public long v() {
        return this.lastSampleTimeUs;
    }

    public int w() {
        return this.sampleCount;
    }

    public boolean x() {
        return this.sampleCount > 0;
    }

    public void y(@IntRange int i10) {
        com.google.android.exoplayer2.util.a.a(i10 > 0);
        this.maxSampleCount = i10;
    }

    private boolean t(com.google.android.exoplayer2.decoder.g gVar) {
        ByteBuffer byteBuffer;
        if (!x()) {
            return true;
        }
        if (this.sampleCount >= this.maxSampleCount || gVar.f() != f()) {
            return false;
        }
        ByteBuffer byteBuffer2 = gVar.data;
        if (byteBuffer2 == null || (byteBuffer = this.data) == null || byteBuffer.position() + byteBuffer2.remaining() <= MAX_SIZE_BYTES) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.decoder.g, com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        this.sampleCount = 0;
    }

    public boolean s(com.google.android.exoplayer2.decoder.g gVar) {
        com.google.android.exoplayer2.util.a.a(!gVar.p());
        com.google.android.exoplayer2.util.a.a(!gVar.e());
        com.google.android.exoplayer2.util.a.a(!gVar.h());
        if (!t(gVar)) {
            return false;
        }
        int i10 = this.sampleCount;
        this.sampleCount = i10 + 1;
        if (i10 == 0) {
            this.timeUs = gVar.timeUs;
            if (gVar.j()) {
                k(1);
            }
        }
        if (gVar.f()) {
            k(Integer.MIN_VALUE);
        }
        ByteBuffer byteBuffer = gVar.data;
        if (byteBuffer != null) {
            n(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.lastSampleTimeUs = gVar.timeUs;
        return true;
    }
}
