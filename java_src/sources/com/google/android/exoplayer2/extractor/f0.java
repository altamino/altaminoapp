package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class f0 {
    private int chunkFlags;
    private int chunkOffset;
    private int chunkSampleCount;
    private int chunkSize;
    private long chunkTimeUs;
    private boolean foundSyncframe;
    private final byte[] syncframePrefix = new byte[10];

    public void b() {
        this.foundSyncframe = false;
        this.chunkSampleCount = 0;
    }

    public void a(e0 e0Var, @Nullable e0.a aVar) {
        if (this.chunkSampleCount > 0) {
            e0Var.e(this.chunkTimeUs, this.chunkFlags, this.chunkSize, this.chunkOffset, aVar);
            this.chunkSampleCount = 0;
        }
    }

    public void c(e0 e0Var, long j6, int i10, int i11, int i12, @Nullable e0.a aVar) {
        com.google.android.exoplayer2.util.a.h(this.chunkOffset <= i11 + i12, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.foundSyncframe) {
            int i13 = this.chunkSampleCount;
            int i14 = i13 + 1;
            this.chunkSampleCount = i14;
            if (i13 == 0) {
                this.chunkTimeUs = j6;
                this.chunkFlags = i10;
                this.chunkSize = 0;
            }
            this.chunkSize += i11;
            this.chunkOffset = i12;
            if (i14 >= 16) {
                a(e0Var, aVar);
            }
        }
    }

    public void d(m mVar) throws IOException {
        if (this.foundSyncframe) {
            return;
        }
        mVar.peekFully(this.syncframePrefix, 0, 10);
        mVar.resetPeekPosition();
        if (com.google.android.exoplayer2.audio.b.i(this.syncframePrefix) == 0) {
            return;
        }
        this.foundSyncframe = true;
    }
}
