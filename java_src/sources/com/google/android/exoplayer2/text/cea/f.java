package com.google.android.exoplayer2.text.cea;

import com.google.android.exoplayer2.text.i;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
final class f implements i {
    private final List<com.google.android.exoplayer2.text.b> cues;

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        return j6 < 0 ? 0 : -1;
    }

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        return j6 >= 0 ? this.cues : Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 == 0);
        return 0L;
    }

    public f(List<com.google.android.exoplayer2.text.b> list) {
        this.cues = list;
    }
}
