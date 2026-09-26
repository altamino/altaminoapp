package androidx.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.hls.HlsDataSourceFactory;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public interface HlsPlaylistTracker {

    public interface Factory {
        HlsPlaylistTracker a(HlsDataSourceFactory hlsDataSourceFactory, LoadErrorHandlingPolicy loadErrorHandlingPolicy, HlsPlaylistParserFactory hlsPlaylistParserFactory);
    }

    public interface PlaylistEventListener {
        void b();

        boolean d(Uri uri, LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z6);
    }

    public interface PrimaryPlaylistListener {
        void K(HlsMediaPlaylist hlsMediaPlaylist);
    }

    long a();

    void b(PlaylistEventListener playlistEventListener);

    void c(PlaylistEventListener playlistEventListener);

    void d(Uri uri, MediaSourceEventListener.EventDispatcher eventDispatcher, PrimaryPlaylistListener primaryPlaylistListener);

    void e(Uri uri) throws IOException;

    @Nullable
    HlsMultivariantPlaylist f();

    void g(Uri uri);

    boolean h(Uri uri);

    boolean i();

    boolean j(Uri uri, long j6);

    void k() throws IOException;

    @Nullable
    HlsMediaPlaylist l(Uri uri, boolean z6);

    void stop();

    public static final class PlaylistResetException extends IOException {
        public final Uri url;

        public PlaylistResetException(Uri uri) {
            this.url = uri;
        }
    }

    public static final class PlaylistStuckException extends IOException {
        public final Uri url;

        public PlaylistStuckException(Uri uri) {
            this.url = uri;
        }
    }
}
