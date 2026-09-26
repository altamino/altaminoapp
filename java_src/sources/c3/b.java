package c3;

import com.google.android.exoplayer2.text.i;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes11.dex */
final class b implements i {
    public static final b EMPTY = new b();
    private final List<com.google.android.exoplayer2.text.b> cues;

    public b(com.google.android.exoplayer2.text.b bVar) {
        this.cues = Collections.singletonList(bVar);
    }

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

    private b() {
        this.cues = Collections.emptyList();
    }
}
