package androidx.media3.common;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class VideoFrameProcessingException extends Exception {
    public final long presentationTimeUs;

    public VideoFrameProcessingException(String str) {
        this(str, -9223372036854775807L);
    }

    public VideoFrameProcessingException(String str, long j6) {
        super(str);
        this.presentationTimeUs = j6;
    }

    public VideoFrameProcessingException(String str, Throwable th) {
        this(str, th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(String str, Throwable th, long j6) {
        super(str, th);
        this.presentationTimeUs = j6;
    }

    public VideoFrameProcessingException(Throwable th) {
        this(th, -9223372036854775807L);
    }

    public VideoFrameProcessingException(Throwable th, long j6) {
        super(th);
        this.presentationTimeUs = j6;
    }
}
