package com.google.android.exoplayer2.text.webvtt;

import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: loaded from: classes10.dex */
final class k implements com.google.android.exoplayer2.text.i {
    private final List<e> cueInfos;
    private final long[] cueTimesUs;
    private final long[] sortedCueTimesUs;

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.sortedCueTimesUs.length);
        return this.sortedCueTimesUs[i10];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int b(e eVar, e eVar2) {
        return Long.compare(eVar.startTimeUs, eVar2.startTimeUs);
    }

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.cueInfos.size(); i10++) {
            long[] jArr = this.cueTimesUs;
            int i11 = i10 * 2;
            if (jArr[i11] <= j6 && j6 < jArr[i11 + 1]) {
                e eVar = this.cueInfos.get(i10);
                com.google.android.exoplayer2.text.b bVar = eVar.cue;
                if (bVar.line == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: com.google.android.exoplayer2.text.webvtt.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return k.b((e) obj, (e) obj2);
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((e) arrayList2.get(i12)).cue.b().h((-1) - i12, 1).a());
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return this.sortedCueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        int iE = o0.e(this.sortedCueTimesUs, j6, false, false);
        if (iE < this.sortedCueTimesUs.length) {
            return iE;
        }
        return -1;
    }

    public k(List<e> list) {
        this.cueInfos = Collections.unmodifiableList(new ArrayList(list));
        this.cueTimesUs = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.cueTimesUs;
            jArr[i11] = eVar.startTimeUs;
            jArr[i11 + 1] = eVar.endTimeUs;
        }
        long[] jArr2 = this.cueTimesUs;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.sortedCueTimesUs = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }
}
