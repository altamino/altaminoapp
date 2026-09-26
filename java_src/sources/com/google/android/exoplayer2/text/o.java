package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public abstract class o extends com.google.android.exoplayer2.decoder.h implements i {
    private long subsampleOffsetUs;

    @Nullable
    private i subtitle;

    public void n(long j6, i iVar, long j10) {
        this.timeUs = j6;
        this.subtitle = iVar;
        if (j10 != Long.MAX_VALUE) {
            j6 = j10;
        }
        this.subsampleOffsetUs = j6;
    }

    @Override // com.google.android.exoplayer2.text.i
    public List<b> getCues(long j6) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.subtitle)).getCues(j6 - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.subtitle)).getEventTime(i10) + this.subsampleOffsetUs;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return ((i) com.google.android.exoplayer2.util.a.e(this.subtitle)).getEventTimeCount();
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        return ((i) com.google.android.exoplayer2.util.a.e(this.subtitle)).getNextEventTimeIndex(j6 - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        this.subtitle = null;
    }
}
