package com.google.android.exoplayer2.text.ssa;

import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.o0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class d implements i {
    private final List<Long> cueTimesUs;
    private final List<List<com.google.android.exoplayer2.text.b>> cues;

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.cueTimesUs.size());
        return this.cueTimesUs.get(i10).longValue();
    }

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        int iG = o0.g(this.cueTimesUs, Long.valueOf(j6), true, false);
        return iG == -1 ? Collections.emptyList() : this.cues.get(iG);
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return this.cueTimesUs.size();
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        int iD = o0.d(this.cueTimesUs, Long.valueOf(j6), false, false);
        if (iD < this.cueTimesUs.size()) {
            return iD;
        }
        return -1;
    }

    public d(List<List<com.google.android.exoplayer2.text.b>> list, List<Long> list2) {
        this.cues = list;
        this.cueTimesUs = list2;
    }
}
