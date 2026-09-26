package androidx.media3.exoplayer;

import androidx.media3.common.MediaItem;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public interface LivePlaybackSpeedControl {
    float a(long j6, long j10);

    long b();

    void c();

    void d(long j6);

    void e(MediaItem.LiveConfiguration liveConfiguration);
}
