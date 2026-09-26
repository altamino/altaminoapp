package z2;

import com.google.android.exoplayer2.text.i;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
final class b implements i {
    private final List<com.google.android.exoplayer2.text.b> cues;

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        return this.cues;
    }

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        return -1;
    }

    public b(List<com.google.android.exoplayer2.text.b> list) {
        this.cues = list;
    }
}
