package androidx.media3.exoplayer;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public interface MediaClock {
    void b(PlaybackParameters playbackParameters);

    PlaybackParameters getPlaybackParameters();

    long getPositionUs();
}
