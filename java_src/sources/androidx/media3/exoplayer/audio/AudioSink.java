package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public interface AudioSink {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    public static final int SINK_FORMAT_SUPPORTED_DIRECTLY = 2;
    public static final int SINK_FORMAT_SUPPORTED_WITH_TRANSCODING = 1;
    public static final int SINK_FORMAT_UNSUPPORTED = 0;

    public static final class ConfigurationException extends Exception {
        public final Format format;

        public ConfigurationException(Throwable th, Format format) {
            super(th);
            this.format = format;
        }

        public ConfigurationException(String str, Format format) {
            super(str);
            this.format = format;
        }
    }

    public static final class InitializationException extends Exception {
        public final int audioTrackState;
        public final Format format;
        public final boolean isRecoverable;

        public InitializationException(int i10, int i11, int i12, int i13, Format format, boolean z6, @Nullable Exception exc) {
            StringBuilder sb = new StringBuilder();
            sb.append("AudioTrack init failed ");
            sb.append(i10);
            sb.append(" ");
            sb.append("Config(");
            sb.append(i11);
            sb.append(", ");
            sb.append(i12);
            sb.append(", ");
            sb.append(i13);
            sb.append(")");
            sb.append(" ");
            sb.append(format);
            sb.append(z6 ? " (recoverable)" : "");
            super(sb.toString(), exc);
            this.audioTrackState = i10;
            this.isRecoverable = z6;
            this.format = format;
        }
    }

    public interface Listener {
        void a(Exception exc);

        void b(long j6);

        void c();

        void d();

        void e();

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z6);

        void onUnderrun(int i10, long j6, long j10);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface SinkFormatSupport {
    }

    public static final class UnexpectedDiscontinuityException extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public UnexpectedDiscontinuityException(long j6, long j10) {
            super("Unexpected audio track timestamp discontinuity: expected " + j10 + ", got " + j6);
            this.actualPresentationTimeUs = j6;
            this.expectedPresentationTimeUs = j10;
        }
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final Format format;
        public final boolean isRecoverable;

        public WriteException(int i10, Format format, boolean z6) {
            super("AudioTrack write failed: " + i10);
            this.isRecoverable = z6;
            this.errorCode = i10;
            this.format = format;
        }
    }

    boolean a(Format format);

    void b(PlaybackParameters playbackParameters);

    void c();

    void d();

    void disableTunneling();

    boolean e(ByteBuffer byteBuffer, long j6, int i10) throws WriteException, InitializationException;

    void f(long j6);

    void flush();

    void g(boolean z6);

    long getCurrentPositionUs(boolean z6);

    PlaybackParameters getPlaybackParameters();

    void h(AudioAttributes audioAttributes);

    void handleDiscontinuity();

    boolean hasPendingData();

    void i(Listener listener);

    boolean isEnded();

    void j(Format format, int i10, @Nullable int[] iArr) throws ConfigurationException;

    int k(Format format);

    void l(AuxEffectInfo auxEffectInfo);

    void m(@Nullable PlayerId playerId);

    void pause();

    void play();

    void playToEndOfStream() throws WriteException;

    void release();

    void reset();

    void setAudioSessionId(int i10);

    @RequiresApi
    void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo);

    void setVolume(float f);
}
