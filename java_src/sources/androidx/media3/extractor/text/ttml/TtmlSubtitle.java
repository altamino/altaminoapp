package androidx.media3.extractor.text.ttml;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.Subtitle;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
final class TtmlSubtitle implements Subtitle {
    private final long[] eventTimesUs;
    private final Map<String, TtmlStyle> globalStyles;
    private final Map<String, String> imageMap;
    private final Map<String, TtmlRegion> regionMap;
    private final TtmlNode root;

    @Override // androidx.media3.extractor.text.Subtitle
    public List<Cue> getCues(long j6) {
        return this.root.h(j6, this.globalStyles, this.regionMap, this.imageMap);
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public long getEventTime(int i10) {
        return this.eventTimesUs[i10];
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    @Override // androidx.media3.extractor.text.Subtitle
    public int getNextEventTimeIndex(long j6) {
        int iE = Util.e(this.eventTimesUs, j6, false, false);
        if (iE < this.eventTimesUs.length) {
            return iE;
        }
        return -1;
    }

    public TtmlSubtitle(TtmlNode ttmlNode, Map<String, TtmlStyle> map, Map<String, TtmlRegion> map2, Map<String, String> map3) {
        Map<String, TtmlStyle> mapEmptyMap;
        this.root = ttmlNode;
        this.regionMap = map2;
        this.imageMap = map3;
        if (map != null) {
            mapEmptyMap = Collections.unmodifiableMap(map);
        } else {
            mapEmptyMap = Collections.emptyMap();
        }
        this.globalStyles = mapEmptyMap;
        this.eventTimesUs = ttmlNode.j();
    }
}
