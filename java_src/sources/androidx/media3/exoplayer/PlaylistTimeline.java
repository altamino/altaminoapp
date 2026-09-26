package androidx.media3.exoplayer;

import androidx.media3.common.AdPlaybackState;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.ForwardingTimeline;
import androidx.media3.exoplayer.source.ShuffleOrder;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
final class PlaylistTimeline extends AbstractConcatenatedTimeline {
    private final HashMap<Object, Integer> childIndexByUid;
    private final int[] firstPeriodInChildIndices;
    private final int[] firstWindowInChildIndices;
    private final int periodCount;
    private final Timeline[] timelines;
    private final Object[] uids;
    private final int windowCount;

    public PlaylistTimeline(Collection<? extends MediaSourceInfoHolder> collection, ShuffleOrder shuffleOrder) {
        this(K(collection), L(collection), shuffleOrder);
    }

    @Override // androidx.media3.common.Timeline
    public int m() {
        return this.periodCount;
    }

    @Override // androidx.media3.common.Timeline
    public int t() {
        return this.windowCount;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private PlaylistTimeline(Timeline[] timelineArr, Object[] objArr, ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int i10 = 0;
        int length = timelineArr.length;
        this.timelines = timelineArr;
        this.firstPeriodInChildIndices = new int[length];
        this.firstWindowInChildIndices = new int[length];
        this.uids = objArr;
        this.childIndexByUid = new HashMap<>();
        int length2 = timelineArr.length;
        int iT = 0;
        int iM = 0;
        int i11 = 0;
        while (i10 < length2) {
            Timeline timeline = timelineArr[i10];
            this.timelines[i11] = timeline;
            this.firstWindowInChildIndices[i11] = iT;
            this.firstPeriodInChildIndices[i11] = iM;
            iT += timeline.t();
            iM += this.timelines[i11].m();
            this.childIndexByUid.put(objArr[i11], Integer.valueOf(i11));
            i10++;
            i11++;
        }
        this.windowCount = iT;
        this.periodCount = iM;
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected Object B(int i10) {
        return this.uids[i10];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected int D(int i10) {
        return this.firstPeriodInChildIndices[i10];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected int E(int i10) {
        return this.firstWindowInChildIndices[i10];
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected Timeline H(int i10) {
        return this.timelines[i10];
    }

    public PlaylistTimeline I(ShuffleOrder shuffleOrder) {
        Timeline[] timelineArr = new Timeline[this.timelines.length];
        int i10 = 0;
        while (true) {
            Timeline[] timelineArr2 = this.timelines;
            if (i10 >= timelineArr2.length) {
                return new PlaylistTimeline(timelineArr, this.uids, shuffleOrder);
            }
            timelineArr[i10] = new ForwardingTimeline(timelineArr2[i10]) { // from class: androidx.media3.exoplayer.PlaylistTimeline.1
                private final Timeline.Window window = new Timeline.Window();

                @Override // androidx.media3.exoplayer.source.ForwardingTimeline, androidx.media3.common.Timeline
                public Timeline.Period k(int i11, Timeline.Period period, boolean z6) {
                    Timeline.Period periodK = super.k(i11, period, z6);
                    if (super.r(periodK.windowIndex, this.window).h()) {
                        periodK.x(period.id, period.uid, period.windowIndex, period.durationUs, period.positionInWindowUs, AdPlaybackState.NONE, true);
                    } else {
                        periodK.isPlaceholder = true;
                    }
                    return periodK;
                }
            };
            i10++;
        }
    }

    List<Timeline> J() {
        return Arrays.asList(this.timelines);
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected int w(Object obj) {
        Integer num = this.childIndexByUid.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected int x(int i10) {
        return Util.h(this.firstPeriodInChildIndices, i10 + 1, false, false);
    }

    @Override // androidx.media3.exoplayer.AbstractConcatenatedTimeline
    protected int y(int i10) {
        return Util.h(this.firstWindowInChildIndices, i10 + 1, false, false);
    }

    private static Timeline[] K(Collection<? extends MediaSourceInfoHolder> collection) {
        Timeline[] timelineArr = new Timeline[collection.size()];
        Iterator<? extends MediaSourceInfoHolder> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            timelineArr[i10] = it.next().b();
            i10++;
        }
        return timelineArr;
    }

    private static Object[] L(Collection<? extends MediaSourceInfoHolder> collection) {
        Object[] objArr = new Object[collection.size()];
        Iterator<? extends MediaSourceInfoHolder> it = collection.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            objArr[i10] = it.next().a();
            i10++;
        }
        return objArr;
    }
}
