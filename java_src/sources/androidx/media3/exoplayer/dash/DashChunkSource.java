package androidx.media3.exoplayer.dash;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.dash.manifest.DashManifest;
import androidx.media3.exoplayer.source.chunk.ChunkSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface DashChunkSource extends ChunkSource {

    public interface Factory {
        DashChunkSource a(LoaderErrorThrower loaderErrorThrower, DashManifest dashManifest, BaseUrlExclusionList baseUrlExclusionList, int i10, int[] iArr, ExoTrackSelection exoTrackSelection, int i11, long j6, boolean z6, List<Format> list, @Nullable PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, @Nullable TransferListener transferListener, PlayerId playerId, @Nullable CmcdConfiguration cmcdConfiguration);
    }

    void b(ExoTrackSelection exoTrackSelection);

    void f(DashManifest dashManifest, int i10);
}
