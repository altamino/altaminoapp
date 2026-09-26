package androidx.media3.exoplayer.dash.manifest;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.StreamKey;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.offline.FilterableManifest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public class DashManifest implements FilterableManifest<DashManifest> {
    public final long availabilityStartTimeMs;
    public final long durationMs;
    public final boolean dynamic;

    @Nullable
    public final Uri location;
    public final long minBufferTimeMs;
    public final long minUpdatePeriodMs;
    private final List<Period> periods;

    @Nullable
    public final ProgramInformation programInformation;
    public final long publishTimeMs;

    @Nullable
    public final ServiceDescriptionElement serviceDescription;
    public final long suggestedPresentationDelayMs;
    public final long timeShiftBufferDepthMs;

    @Nullable
    public final UtcTimingElement utcTiming;

    public DashManifest(long j6, long j10, long j11, boolean z6, long j12, long j13, long j14, long j15, @Nullable ProgramInformation programInformation, @Nullable UtcTimingElement utcTimingElement, @Nullable ServiceDescriptionElement serviceDescriptionElement, @Nullable Uri uri, List<Period> list) {
        this.availabilityStartTimeMs = j6;
        this.durationMs = j10;
        this.minBufferTimeMs = j11;
        this.dynamic = z6;
        this.minUpdatePeriodMs = j12;
        this.timeShiftBufferDepthMs = j13;
        this.suggestedPresentationDelayMs = j14;
        this.publishTimeMs = j15;
        this.programInformation = programInformation;
        this.utcTiming = utcTimingElement;
        this.location = uri;
        this.serviceDescription = serviceDescriptionElement;
        this.periods = list == null ? Collections.emptyList() : list;
    }

    @Override // androidx.media3.exoplayer.offline.FilterableManifest
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DashManifest copy(List<StreamKey> list) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new StreamKey(-1, -1, -1));
        ArrayList arrayList = new ArrayList();
        long j6 = 0;
        int i10 = 0;
        while (true) {
            if (i10 >= d()) {
                break;
            }
            if (((StreamKey) linkedList.peek()).periodIndex != i10) {
                long jE = e(i10);
                if (jE != -9223372036854775807L) {
                    j6 += jE;
                }
            } else {
                Period periodC = c(i10);
                arrayList.add(new Period(periodC.id, periodC.startMs - j6, b(periodC.adaptationSets, linkedList), periodC.eventStreams));
            }
            i10++;
        }
        long j10 = this.durationMs;
        return new DashManifest(this.availabilityStartTimeMs, j10 != -9223372036854775807L ? j10 - j6 : -9223372036854775807L, this.minBufferTimeMs, this.dynamic, this.minUpdatePeriodMs, this.timeShiftBufferDepthMs, this.suggestedPresentationDelayMs, this.publishTimeMs, this.programInformation, this.utcTiming, this.serviceDescription, this.location, arrayList);
    }

    public final Period c(int i10) {
        return this.periods.get(i10);
    }

    public final int d() {
        return this.periods.size();
    }

    public final long e(int i10) {
        long j6;
        long j10;
        if (i10 == this.periods.size() - 1) {
            j6 = this.durationMs;
            if (j6 == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            j10 = this.periods.get(i10).startMs;
        } else {
            j6 = this.periods.get(i10 + 1).startMs;
            j10 = this.periods.get(i10).startMs;
        }
        return j6 - j10;
    }

    private static ArrayList<AdaptationSet> b(List<AdaptationSet> list, LinkedList<StreamKey> linkedList) {
        StreamKey streamKeyPoll = linkedList.poll();
        int i10 = streamKeyPoll.periodIndex;
        ArrayList<AdaptationSet> arrayList = new ArrayList<>();
        do {
            int i11 = streamKeyPoll.groupIndex;
            AdaptationSet adaptationSet = list.get(i11);
            List<Representation> list2 = adaptationSet.representations;
            ArrayList arrayList2 = new ArrayList();
            do {
                arrayList2.add(list2.get(streamKeyPoll.streamIndex));
                streamKeyPoll = linkedList.poll();
                if (streamKeyPoll.periodIndex != i10) {
                    break;
                }
            } while (streamKeyPoll.groupIndex == i11);
            arrayList.add(new AdaptationSet(adaptationSet.id, adaptationSet.type, arrayList2, adaptationSet.accessibilityDescriptors, adaptationSet.essentialProperties, adaptationSet.supplementalProperties));
        } while (streamKeyPoll.periodIndex == i10);
        linkedList.addFirst(streamKeyPoll);
        return arrayList;
    }

    public final long f(int i10) {
        return Util.K0(e(i10));
    }
}
