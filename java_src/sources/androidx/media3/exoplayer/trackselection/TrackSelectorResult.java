package androidx.media3.exoplayer.trackselection;

import androidx.annotation.Nullable;
import androidx.media3.common.Tracks;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.RendererConfiguration;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class TrackSelectorResult {

    @Nullable
    public final Object info;
    public final int length;
    public final RendererConfiguration[] rendererConfigurations;
    public final ExoTrackSelection[] selections;
    public final Tracks tracks;

    @Deprecated
    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, @Nullable Object obj) {
        this(rendererConfigurationArr, exoTrackSelectionArr, Tracks.EMPTY, obj);
    }

    public boolean a(@Nullable TrackSelectorResult trackSelectorResult) {
        if (trackSelectorResult == null || trackSelectorResult.selections.length != this.selections.length) {
            return false;
        }
        for (int i10 = 0; i10 < this.selections.length; i10++) {
            if (!b(trackSelectorResult, i10)) {
                return false;
            }
        }
        return true;
    }

    public boolean b(@Nullable TrackSelectorResult trackSelectorResult, int i10) {
        return trackSelectorResult != null && Util.c(this.rendererConfigurations[i10], trackSelectorResult.rendererConfigurations[i10]) && Util.c(this.selections[i10], trackSelectorResult.selections[i10]);
    }

    public TrackSelectorResult(RendererConfiguration[] rendererConfigurationArr, ExoTrackSelection[] exoTrackSelectionArr, Tracks tracks, @Nullable Object obj) {
        this.rendererConfigurations = rendererConfigurationArr;
        this.selections = (ExoTrackSelection[]) exoTrackSelectionArr.clone();
        this.tracks = tracks;
        this.info = obj;
        this.length = rendererConfigurationArr.length;
    }

    public boolean c(int i10) {
        return this.rendererConfigurations[i10] != null;
    }
}
