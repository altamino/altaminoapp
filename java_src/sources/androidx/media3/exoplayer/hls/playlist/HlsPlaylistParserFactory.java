package androidx.media3.exoplayer.hls.playlist;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.upstream.ParsingLoadable;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface HlsPlaylistParserFactory {
    ParsingLoadable.Parser<HlsPlaylist> a();

    ParsingLoadable.Parser<HlsPlaylist> b(HlsMultivariantPlaylist hlsMultivariantPlaylist, @Nullable HlsMediaPlaylist hlsMediaPlaylist);
}
