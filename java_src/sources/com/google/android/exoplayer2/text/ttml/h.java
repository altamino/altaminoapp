package com.google.android.exoplayer2.text.ttml;

import com.google.android.exoplayer2.text.i;
import com.google.android.exoplayer2.util.o0;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class h implements i {
    private final long[] eventTimesUs;
    private final Map<String, g> globalStyles;
    private final Map<String, String> imageMap;
    private final Map<String, e> regionMap;
    private final d root;

    @Override // com.google.android.exoplayer2.text.i
    public List<com.google.android.exoplayer2.text.b> getCues(long j6) {
        return this.root.h(j6, this.globalStyles, this.regionMap, this.imageMap);
    }

    @Override // com.google.android.exoplayer2.text.i
    public long getEventTime(int i10) {
        return this.eventTimesUs[i10];
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.i
    public int getNextEventTimeIndex(long j6) {
        int iE = o0.e(this.eventTimesUs, j6, false, false);
        if (iE < this.eventTimesUs.length) {
            return iE;
        }
        return -1;
    }

    public h(d dVar, Map<String, g> map, Map<String, e> map2, Map<String, String> map3) {
        Map<String, g> mapEmptyMap;
        this.root = dVar;
        this.regionMap = map2;
        this.imageMap = map3;
        if (map != null) {
            mapEmptyMap = Collections.unmodifiableMap(map);
        } else {
            mapEmptyMap = Collections.emptyMap();
        }
        this.globalStyles = mapEmptyMap;
        this.eventTimesUs = dVar.j();
    }
}
