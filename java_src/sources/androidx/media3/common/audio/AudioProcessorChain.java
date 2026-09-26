package androidx.media3.common.audio;

import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes10.dex */
@UnstableApi
public interface AudioProcessorChain {
    boolean a(boolean z6);

    PlaybackParameters b(PlaybackParameters playbackParameters);

    AudioProcessor[] getAudioProcessors();

    long getMediaDuration(long j6);

    long getSkippedOutputFrameCount();
}
