package b3;

import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.o0;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class b implements i {
    private final long[] cueTimesUs;
    private final com.google.android.exoplayer2.text.b[] cues;

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.cueTimesUs.length);
        return this.cueTimesUs[i10];
    }

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        com.google.android.exoplayer2.text.b bVar;
        int i10 = o0.i(this.cueTimesUs, j6, true, false);
        return (i10 == -1 || (bVar = this.cues[i10]) == com.google.android.exoplayer2.text.b.EMPTY) ? Collections.emptyList() : Collections.singletonList(bVar);
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        int iE = o0.e(this.cueTimesUs, j6, false, false);
        if (iE < this.cueTimesUs.length) {
            return iE;
        }
        return -1;
    }

    public b(com.google.android.exoplayer2.text.b[] bVarArr, long[] jArr) {
        this.cues = bVarArr;
        this.cueTimesUs = jArr;
    }
}
