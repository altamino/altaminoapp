package androidx.media3.exoplayer.trackselection;

import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.Timeline;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.exoplayer.RendererConfiguration;
import androidx.media3.exoplayer.h2;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public abstract class MappingTrackSelector extends TrackSelector {

    @Nullable
    private MappedTrackInfo currentMappedTrackInfo;

    public static final class MappedTrackInfo {
        public static final int RENDERER_SUPPORT_EXCEEDS_CAPABILITIES_TRACKS = 2;
        public static final int RENDERER_SUPPORT_NO_TRACKS = 0;
        public static final int RENDERER_SUPPORT_PLAYABLE_TRACKS = 3;
        public static final int RENDERER_SUPPORT_UNSUPPORTED_TRACKS = 1;
        private final int rendererCount;
        private final int[][][] rendererFormatSupports;
        private final int[] rendererMixedMimeTypeAdaptiveSupports;
        private final String[] rendererNames;
        private final TrackGroupArray[] rendererTrackGroups;
        private final int[] rendererTrackTypes;
        private final TrackGroupArray unmappedTrackGroups;

        @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
        @Documented
        @Retention(RetentionPolicy.SOURCE)
        public @interface RendererSupport {
        }

        public int b(int i10, int i11, int[] iArr) {
            int i12 = 0;
            int iMin = 16;
            String str = null;
            boolean z6 = false;
            int i13 = 0;
            while (i12 < iArr.length) {
                String str2 = this.rendererTrackGroups[i10].b(i11).c(iArr[i12]).sampleMimeType;
                int i14 = i13 + 1;
                if (i13 == 0) {
                    str = str2;
                } else {
                    z6 |= !Util.c(str, str2);
                }
                iMin = Math.min(iMin, h2.f(this.rendererFormatSupports[i10][i11][i12]));
                i12++;
                i13 = i14;
            }
            return z6 ? Math.min(iMin, this.rendererMixedMimeTypeAdaptiveSupports[i10]) : iMin;
        }

        public int d() {
            return this.rendererCount;
        }

        public TrackGroupArray h() {
            return this.unmappedTrackGroups;
        }

        public int a(int i10, int i11, boolean z6) {
            int i12 = this.rendererTrackGroups[i10].b(i11).length;
            int[] iArr = new int[i12];
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++) {
                int iG = g(i10, i11, i14);
                if (iG == 4 || (z6 && iG == 3)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            return b(i10, i11, Arrays.copyOf(iArr, i13));
        }

        public int c(int i10, int i11, int i12) {
            return this.rendererFormatSupports[i10][i11][i12];
        }

        public int e(int i10) {
            return this.rendererTrackTypes[i10];
        }

        public TrackGroupArray f(int i10) {
            return this.rendererTrackGroups[i10];
        }

        @VisibleForTesting
        MappedTrackInfo(String[] strArr, int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.rendererNames = strArr;
            this.rendererTrackTypes = iArr;
            this.rendererTrackGroups = trackGroupArrayArr;
            this.rendererFormatSupports = iArr3;
            this.rendererMixedMimeTypeAdaptiveSupports = iArr2;
            this.unmappedTrackGroups = trackGroupArray;
            this.rendererCount = iArr.length;
        }

        public int g(int i10, int i11, int i12) {
            return h2.h(c(i10, i11, i12));
        }
    }

    private static int n(RendererCapabilities[] rendererCapabilitiesArr, TrackGroup trackGroup, int[] iArr, boolean z6) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int i10 = 0;
        boolean z10 = true;
        for (int i11 = 0; i11 < rendererCapabilitiesArr.length; i11++) {
            RendererCapabilities rendererCapabilities = rendererCapabilitiesArr[i11];
            int iMax = 0;
            for (int i12 = 0; i12 < trackGroup.length; i12++) {
                iMax = Math.max(iMax, h2.h(rendererCapabilities.a(trackGroup.c(i12))));
            }
            boolean z11 = iArr[i11] == 0;
            if (iMax > i10 || (iMax == i10 && z6 && !z10 && z11)) {
                length = i11;
                z10 = z11;
                i10 = iMax;
            }
        }
        return length;
    }

    private static int[] q(RendererCapabilities[] rendererCapabilitiesArr) throws ExoPlaybackException {
        int length = rendererCapabilitiesArr.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = rendererCapabilitiesArr[i10].supportsMixedMimeTypeAdaptation();
        }
        return iArr;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final TrackSelectorResult k(RendererCapabilities[] rendererCapabilitiesArr, TrackGroupArray trackGroupArray, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException {
        int[] iArr = new int[rendererCapabilitiesArr.length + 1];
        int length = rendererCapabilitiesArr.length + 1;
        TrackGroup[][] trackGroupArr = new TrackGroup[length][];
        int[][][] iArr2 = new int[rendererCapabilitiesArr.length + 1][][];
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = trackGroupArray.length;
            trackGroupArr[i10] = new TrackGroup[i11];
            iArr2[i10] = new int[i11][];
        }
        int[] iArrQ = q(rendererCapabilitiesArr);
        for (int i12 = 0; i12 < trackGroupArray.length; i12++) {
            TrackGroup trackGroupB = trackGroupArray.b(i12);
            int iN = n(rendererCapabilitiesArr, trackGroupB, iArr, trackGroupB.type == 5);
            int[] iArrP = iN == rendererCapabilitiesArr.length ? new int[trackGroupB.length] : p(rendererCapabilitiesArr[iN], trackGroupB);
            int i13 = iArr[iN];
            trackGroupArr[iN][i13] = trackGroupB;
            iArr2[iN][i13] = iArrP;
            iArr[iN] = i13 + 1;
        }
        TrackGroupArray[] trackGroupArrayArr = new TrackGroupArray[rendererCapabilitiesArr.length];
        String[] strArr = new String[rendererCapabilitiesArr.length];
        int[] iArr3 = new int[rendererCapabilitiesArr.length];
        for (int i14 = 0; i14 < rendererCapabilitiesArr.length; i14++) {
            int i15 = iArr[i14];
            trackGroupArrayArr[i14] = new TrackGroupArray((TrackGroup[]) Util.P0(trackGroupArr[i14], i15));
            iArr2[i14] = (int[][]) Util.P0(iArr2[i14], i15);
            strArr[i14] = rendererCapabilitiesArr[i14].getName();
            iArr3[i14] = rendererCapabilitiesArr[i14].getTrackType();
        }
        MappedTrackInfo mappedTrackInfo = new MappedTrackInfo(strArr, iArr3, trackGroupArrayArr, iArrQ, iArr2, new TrackGroupArray((TrackGroup[]) Util.P0(trackGroupArr[rendererCapabilitiesArr.length], iArr[rendererCapabilitiesArr.length])));
        Pair<RendererConfiguration[], ExoTrackSelection[]> pairR = r(mappedTrackInfo, iArr2, iArrQ, mediaPeriodId, timeline);
        return new TrackSelectorResult((RendererConfiguration[]) pairR.first, (ExoTrackSelection[]) pairR.second, TrackSelectionUtil.a(mappedTrackInfo, (TrackSelection[]) pairR.second), mappedTrackInfo);
    }

    @Nullable
    public final MappedTrackInfo o() {
        return this.currentMappedTrackInfo;
    }

    protected abstract Pair<RendererConfiguration[], ExoTrackSelection[]> r(MappedTrackInfo mappedTrackInfo, int[][][] iArr, int[] iArr2, MediaSource.MediaPeriodId mediaPeriodId, Timeline timeline) throws ExoPlaybackException;

    private static int[] p(RendererCapabilities rendererCapabilities, TrackGroup trackGroup) throws ExoPlaybackException {
        int[] iArr = new int[trackGroup.length];
        for (int i10 = 0; i10 < trackGroup.length; i10++) {
            iArr[i10] = rendererCapabilities.a(trackGroup.c(i10));
        }
        return iArr;
    }

    @Override // androidx.media3.exoplayer.trackselection.TrackSelector
    public final void i(@Nullable Object obj) {
        this.currentMappedTrackInfo = (MappedTrackInfo) obj;
    }
}
