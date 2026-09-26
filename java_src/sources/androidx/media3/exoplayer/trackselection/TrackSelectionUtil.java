package androidx.media3.exoplayer.trackselection;

import android.os.SystemClock;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import com.google.common.collect.a0;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class TrackSelectionUtil {

    public interface AdaptiveTrackSelectionFactory {
        ExoTrackSelection a(ExoTrackSelection.Definition definition);
    }

    public static Tracks a(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, TrackSelection[] trackSelectionArr) {
        List[] listArr = new List[trackSelectionArr.length];
        for (int i10 = 0; i10 < trackSelectionArr.length; i10++) {
            TrackSelection trackSelection = trackSelectionArr[i10];
            listArr[i10] = trackSelection != null ? a0.y(trackSelection) : a0.x();
        }
        return b(mappedTrackInfo, listArr);
    }

    public static ExoTrackSelection[] d(ExoTrackSelection.Definition[] definitionArr, AdaptiveTrackSelectionFactory adaptiveTrackSelectionFactory) {
        ExoTrackSelection[] exoTrackSelectionArr = new ExoTrackSelection[definitionArr.length];
        boolean z6 = false;
        for (int i10 = 0; i10 < definitionArr.length; i10++) {
            ExoTrackSelection.Definition definition = definitionArr[i10];
            if (definition != null) {
                int[] iArr = definition.tracks;
                if (iArr.length <= 1 || z6) {
                    exoTrackSelectionArr[i10] = new FixedTrackSelection(definition.group, iArr[0], definition.type);
                } else {
                    exoTrackSelectionArr[i10] = adaptiveTrackSelectionFactory.a(definition);
                    z6 = true;
                }
            }
        }
        return exoTrackSelectionArr;
    }

    public static Tracks b(MappingTrackSelector.MappedTrackInfo mappedTrackInfo, List<? extends TrackSelection>[] listArr) {
        boolean z6;
        a0.a aVar = new a0.a();
        for (int i10 = 0; i10 < mappedTrackInfo.d(); i10++) {
            TrackGroupArray trackGroupArrayF = mappedTrackInfo.f(i10);
            List<? extends TrackSelection> list = listArr[i10];
            for (int i11 = 0; i11 < trackGroupArrayF.length; i11++) {
                TrackGroup trackGroupB = trackGroupArrayF.b(i11);
                boolean z10 = mappedTrackInfo.a(i10, i11, false) != 0;
                int i12 = trackGroupB.length;
                int[] iArr = new int[i12];
                boolean[] zArr = new boolean[i12];
                for (int i13 = 0; i13 < trackGroupB.length; i13++) {
                    iArr[i13] = mappedTrackInfo.g(i10, i11, i13);
                    int i14 = 0;
                    while (true) {
                        if (i14 >= list.size()) {
                            z6 = false;
                            break;
                        }
                        TrackSelection trackSelection = list.get(i14);
                        if (trackSelection.getTrackGroup().equals(trackGroupB) && trackSelection.indexOf(i13) != -1) {
                            z6 = true;
                            break;
                        }
                        i14++;
                    }
                    zArr[i13] = z6;
                }
                aVar.d(new Tracks.Group(trackGroupB, z10, iArr, zArr));
            }
        }
        TrackGroupArray trackGroupArrayH = mappedTrackInfo.h();
        for (int i15 = 0; i15 < trackGroupArrayH.length; i15++) {
            TrackGroup trackGroupB2 = trackGroupArrayH.b(i15);
            int[] iArr2 = new int[trackGroupB2.length];
            Arrays.fill(iArr2, 0);
            aVar.d(new Tracks.Group(trackGroupB2, false, iArr2, new boolean[trackGroupB2.length]));
        }
        return new Tracks(aVar.k());
    }

    private TrackSelectionUtil() {
    }

    public static LoadErrorHandlingPolicy.FallbackOptions c(ExoTrackSelection exoTrackSelection) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (exoTrackSelection.e(i11, jElapsedRealtime)) {
                i10++;
            }
        }
        return new LoadErrorHandlingPolicy.FallbackOptions(1, 0, length, i10);
    }
}
