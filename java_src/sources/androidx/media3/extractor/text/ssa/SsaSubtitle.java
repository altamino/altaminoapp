package androidx.media3.extractor.text.ssa;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
final class SsaSubtitle implements Subtitle {
    private final List<Long> cueTimesUs;
    private final List<List<Cue>> cues;

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i10) {
        Assertions.a(i10 >= 0);
        Assertions.a(i10 < this.cueTimesUs.size());
        return this.cueTimesUs.get(i10).longValue();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j6) {
        int iG = Util.g(this.cueTimesUs, Long.valueOf(j6), true, false);
        return iG == -1 ? Collections.emptyList() : this.cues.get(iG);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.size();
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j6) {
        int iD = Util.d(this.cueTimesUs, Long.valueOf(j6), false, false);
        if (iD < this.cueTimesUs.size()) {
            return iD;
        }
        return -1;
    }

    public SsaSubtitle(List<List<Cue>> list, List<Long> list2) {
        this.cues = list;
        this.cueTimesUs = list2;
    }
}
