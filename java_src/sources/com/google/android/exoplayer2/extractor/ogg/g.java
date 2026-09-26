package com.google.android.exoplayer2.extractor.ogg;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.b0;
import com.google.android.exoplayer2.extractor.m;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
interface g {
    long a(m mVar) throws IOException;

    @Nullable
    b0 createSeekMap();

    void startSeek(long j6);
}
