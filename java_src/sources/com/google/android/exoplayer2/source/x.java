package com.google.android.exoplayer2.source;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;

/* JADX INFO: loaded from: classes6.dex */
public final class x {
    public final int dataType;
    public final long mediaEndTimeMs;
    public final long mediaStartTimeMs;

    @Nullable
    public final a2 trackFormat;

    @Nullable
    public final Object trackSelectionData;
    public final int trackSelectionReason;
    public final int trackType;

    public x(int i10) {
        this(i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
    }

    public x(int i10, int i11, @Nullable a2 a2Var, int i12, @Nullable Object obj, long j6, long j10) {
        this.dataType = i10;
        this.trackType = i11;
        this.trackFormat = a2Var;
        this.trackSelectionReason = i12;
        this.trackSelectionData = obj;
        this.mediaStartTimeMs = j6;
        this.mediaEndTimeMs = j10;
    }
}
