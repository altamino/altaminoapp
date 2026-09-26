package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.SampleStream;
import java.io.IOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface Renderer extends PlayerMessage.Target {
    public static final int MSG_CUSTOM_BASE = 10000;
    public static final int MSG_SET_AUDIO_ATTRIBUTES = 3;
    public static final int MSG_SET_AUDIO_SESSION_ID = 10;
    public static final int MSG_SET_AUX_EFFECT_INFO = 6;
    public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
    public static final int MSG_SET_CHANGE_FRAME_RATE_STRATEGY = 5;
    public static final int MSG_SET_PREFERRED_AUDIO_DEVICE = 12;
    public static final int MSG_SET_SCALING_MODE = 4;
    public static final int MSG_SET_SKIP_SILENCE_ENABLED = 9;
    public static final int MSG_SET_VIDEO_EFFECTS = 13;
    public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;
    public static final int MSG_SET_VIDEO_OUTPUT = 1;
    public static final int MSG_SET_VIDEO_OUTPUT_RESOLUTION = 14;
    public static final int MSG_SET_VOLUME = 2;
    public static final int MSG_SET_WAKEUP_LISTENER = 11;
    public static final int STATE_DISABLED = 0;
    public static final int STATE_ENABLED = 1;
    public static final int STATE_STARTED = 2;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface MessageType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public interface WakeupListener {
        void a();

        void b();
    }

    long c();

    void d(float f, float f6) throws ExoPlaybackException;

    void disable();

    void f(Format[] formatArr, SampleStream sampleStream, long j6, long j10) throws ExoPlaybackException;

    void g(RendererConfiguration rendererConfiguration, Format[] formatArr, SampleStream sampleStream, long j6, boolean z6, boolean z10, long j10, long j11) throws ExoPlaybackException;

    RendererCapabilities getCapabilities();

    @Nullable
    MediaClock getMediaClock();

    String getName();

    int getState();

    @Nullable
    SampleStream getStream();

    int getTrackType();

    void h(int i10, PlayerId playerId);

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError() throws IOException;

    void release();

    void render(long j6, long j10) throws ExoPlaybackException;

    void reset();

    void resetPosition(long j6) throws ExoPlaybackException;

    void setCurrentStreamFinal();

    void start() throws ExoPlaybackException;

    void stop();
}
