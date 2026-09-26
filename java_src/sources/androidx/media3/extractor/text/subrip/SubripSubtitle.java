package androidx.media3.extractor.text.subrip;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class SubripSubtitle implements Subtitle {
    private final long[] cueTimesUs;
    private final Cue[] cues;

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i10) {
        Assertions.a(i10 >= 0);
        Assertions.a(i10 < this.cueTimesUs.length);
        return this.cueTimesUs[i10];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j6) {
        Cue cue;
        int i10 = Util.i(this.cueTimesUs, j6, true, false);
        return (i10 == -1 || (cue = this.cues[i10]) == Cue.EMPTY) ? Collections.emptyList() : Collections.singletonList(cue);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j6) {
        int iE = Util.e(this.cueTimesUs, j6, false, false);
        if (iE < this.cueTimesUs.length) {
            return iE;
        }
        return -1;
    }

    public SubripSubtitle(Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }
}
