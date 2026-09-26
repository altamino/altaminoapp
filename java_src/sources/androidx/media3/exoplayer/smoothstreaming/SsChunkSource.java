package androidx.media3.exoplayer.smoothstreaming;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.smoothstreaming.manifest.SsManifest;
import androidx.media3.exoplayer.source.chunk.ChunkSource;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoaderErrorThrower;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface SsChunkSource extends ChunkSource {

    public interface Factory {
        SsChunkSource a(LoaderErrorThrower loaderErrorThrower, SsManifest ssManifest, int i10, ExoTrackSelection exoTrackSelection, @Nullable TransferListener transferListener, @Nullable CmcdConfiguration cmcdConfiguration);
    }

    void b(ExoTrackSelection exoTrackSelection);

    void d(SsManifest ssManifest);
}
