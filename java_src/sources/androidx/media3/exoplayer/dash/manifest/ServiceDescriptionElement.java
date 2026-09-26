package androidx.media3.exoplayer.dash.manifest;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class ServiceDescriptionElement {
    public final long maxOffsetMs;
    public final float maxPlaybackSpeed;
    public final long minOffsetMs;
    public final float minPlaybackSpeed;
    public final long targetOffsetMs;

    public ServiceDescriptionElement(long j6, long j10, long j11, float f, float f6) {
        this.targetOffsetMs = j6;
        this.minOffsetMs = j10;
        this.maxOffsetMs = j11;
        this.minPlaybackSpeed = f;
        this.maxPlaybackSpeed = f6;
    }
}
