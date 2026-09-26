package com.google.android.exoplayer2.extractor.jpeg;

import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.w;

/* JADX INFO: loaded from: classes8.dex */
final class c extends w {
    private final long startOffset;

    public c(m mVar, long j6) {
        boolean z6;
        super(mVar);
        if (mVar.getPosition() >= j6) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.startOffset = j6;
    }

    @Override // com.google.android.exoplayer2.extractor.w, com.google.android.exoplayer2.extractor.m
    public long getLength() {
        return super.getLength() - this.startOffset;
    }

    @Override // com.google.android.exoplayer2.extractor.w, com.google.android.exoplayer2.extractor.m
    public long getPeekPosition() {
        return super.getPeekPosition() - this.startOffset;
    }

    @Override // com.google.android.exoplayer2.extractor.w, com.google.android.exoplayer2.extractor.m
    public long getPosition() {
        return super.getPosition() - this.startOffset;
    }
}
