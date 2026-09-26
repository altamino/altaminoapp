package com.google.android.exoplayer2.extractor.mp3;

import com.google.android.exoplayer2.extractor.b0;

/* JADX INFO: loaded from: classes9.dex */
interface g extends b0 {
    long a();

    long getTimeUs(long j6);

    public static class a extends b0.b implements g {
        @Override // com.google.android.exoplayer2.extractor.mp3.g
        public long a() {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.mp3.g
        public long getTimeUs(long j6) {
            return 0L;
        }

        public a() {
            super(-9223372036854775807L);
        }
    }
}
