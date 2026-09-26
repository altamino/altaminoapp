package androidx.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.DoNotInline;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessingPipeline;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.audio.ToInt16PcmAudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.OpusUtil;
import com.google.common.collect.l1;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public final class DefaultAudioSink implements AudioSink {
    private static final int AUDIO_TRACK_RETRY_DURATION_MS = 100;
    private static final int AUDIO_TRACK_SMALLER_BUFFER_RETRY_SIZE = 1000000;
    public static final float DEFAULT_PLAYBACK_SPEED = 1.0f;
    private static final boolean DEFAULT_SKIP_SILENCE = false;
    private static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    public static final float MAX_PITCH = 8.0f;
    public static final float MAX_PLAYBACK_SPEED = 8.0f;
    public static final float MIN_PITCH = 0.1f;
    public static final float MIN_PLAYBACK_SPEED = 0.1f;
    public static final int OFFLOAD_MODE_DISABLED = 0;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_DISABLED = 3;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_NOT_REQUIRED = 2;
    public static final int OFFLOAD_MODE_ENABLED_GAPLESS_REQUIRED = 1;
    public static final int OUTPUT_MODE_OFFLOAD = 1;
    public static final int OUTPUT_MODE_PASSTHROUGH = 2;
    public static final int OUTPUT_MODE_PCM = 0;
    private static final String TAG = "DefaultAudioSink";
    public static boolean failOnSpuriousAudioTimestamp;

    @GuardedBy
    private static int pendingReleaseCount;

    @Nullable
    @GuardedBy
    private static ExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();

    @Nullable
    private MediaPositionParameters afterDrainParameters;
    private AudioAttributes audioAttributes;
    private AudioCapabilities audioCapabilities;
    private AudioCapabilitiesReceiver audioCapabilitiesReceiver;

    @Nullable
    private final ExoPlayer.AudioOffloadListener audioOffloadListener;
    private AudioProcessingPipeline audioProcessingPipeline;
    private final androidx.media3.common.audio.AudioProcessorChain audioProcessorChain;
    private int audioSessionId;

    @Nullable
    private AudioTrack audioTrack;
    private final AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private AuxEffectInfo auxEffectInfo;

    @Nullable
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final ChannelMappingAudioProcessor channelMappingAudioProcessor;
    private Configuration configuration;

    @Nullable
    private final Context context;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private final PendingExceptionHolder<AudioSink.InitializationException> initializationExceptionPendingExceptionHolder;

    @Nullable
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;
    private long lastTunnelingAvSyncPresentationTimeUs;

    @Nullable
    private AudioSink.Listener listener;
    private MediaPositionParameters mediaPositionParameters;
    private final ArrayDeque<MediaPositionParameters> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private final int offloadMode;
    private StreamEventCallbackV29 offloadStreamEventCallbackV29;

    @Nullable
    private ByteBuffer outputBuffer;

    @Nullable
    private Configuration pendingConfiguration;

    @Nullable
    private Looper playbackLooper;
    private PlaybackParameters playbackParameters;

    @Nullable
    private PlayerId playerId;
    private boolean playing;
    private byte[] preV21OutputBuffer;
    private int preV21OutputBufferOffset;
    private final boolean preferAudioTrackPlaybackParams;

    @Nullable
    private AudioDeviceInfoApi23 preferredDevice;
    private final ConditionVariable releasingConditionVariable;
    private boolean skipSilenceEnabled;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioTrack;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final com.google.common.collect.a0<AudioProcessor> toFloatPcmAvailableAudioProcessors;
    private final com.google.common.collect.a0<AudioProcessor> toIntPcmAvailableAudioProcessors;
    private final TrimmingAudioProcessor trimmingAudioProcessor;
    private boolean tunneling;
    private float volume;
    private final PendingExceptionHolder<AudioSink.WriteException> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        public static void a(AudioTrack audioTrack, @Nullable AudioDeviceInfoApi23 audioDeviceInfoApi23) {
            audioTrack.setPreferredDevice(audioDeviceInfoApi23 == null ? null : audioDeviceInfoApi23.audioDeviceInfo);
        }

        private Api23() {
        }
    }

    @Deprecated
    public interface AudioProcessorChain extends androidx.media3.common.audio.AudioProcessorChain {
    }

    public interface AudioTrackBufferSizeProvider {
        public static final AudioTrackBufferSizeProvider DEFAULT = new DefaultAudioTrackBufferSizeProvider.Builder().g();

        int a(int i10, int i11, int i12, int i13, int i14, int i15, double d);
    }

    public static final class Builder {
        private AudioCapabilities audioCapabilities;

        @Nullable
        ExoPlayer.AudioOffloadListener audioOffloadListener;

        @Nullable
        private androidx.media3.common.audio.AudioProcessorChain audioProcessorChain;
        AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;

        @Nullable
        private final Context context;
        private boolean enableAudioTrackPlaybackParams;
        private boolean enableFloatOutput;
        private int offloadMode;

        @Deprecated
        public Builder() {
            this.context = null;
            this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
            this.offloadMode = 0;
            this.audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;
        }

        public Builder k(boolean z6) {
            this.enableAudioTrackPlaybackParams = z6;
            return this;
        }

        public Builder l(boolean z6) {
            this.enableFloatOutput = z6;
            return this;
        }

        public Builder m(int i10) {
            this.offloadMode = i10;
            return this;
        }

        public DefaultAudioSink g() {
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new DefaultAudioProcessorChain(new AudioProcessor[0]);
            }
            return new DefaultAudioSink(this);
        }

        @Deprecated
        public Builder h(AudioCapabilities audioCapabilities) {
            Assertions.e(audioCapabilities);
            this.audioCapabilities = audioCapabilities;
            return this;
        }

        public Builder i(androidx.media3.common.audio.AudioProcessorChain audioProcessorChain) {
            Assertions.e(audioProcessorChain);
            this.audioProcessorChain = audioProcessorChain;
            return this;
        }

        public Builder j(AudioProcessor[] audioProcessorArr) {
            Assertions.e(audioProcessorArr);
            return i(new DefaultAudioProcessorChain(audioProcessorArr));
        }

        public Builder(Context context) {
            this.context = context;
            this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
            this.offloadMode = 0;
            this.audioTrackBufferSizeProvider = AudioTrackBufferSizeProvider.DEFAULT;
        }
    }

    private static final class Configuration {
        public final AudioProcessingPipeline audioProcessingPipeline;
        public final int bufferSize;
        public final boolean enableAudioTrackPlaybackParams;
        public final Format inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public boolean l() {
            return this.outputMode == 1;
        }

        private AudioTrack d(boolean z6, AudioAttributes audioAttributes, int i10) {
            int i11 = Util.SDK_INT;
            if (i11 >= 29) {
                return f(z6, audioAttributes, i10);
            }
            return i11 >= 21 ? e(z6, audioAttributes, i10) : g(audioAttributes, i10);
        }

        @RequiresApi
        private AudioTrack e(boolean z6, AudioAttributes audioAttributes, int i10) {
            return new AudioTrack(i(audioAttributes, z6), DefaultAudioSink.C(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i10);
        }

        @RequiresApi
        private AudioTrack f(boolean z6, AudioAttributes audioAttributes, int i10) {
            return new AudioTrack.Builder().setAudioAttributes(i(audioAttributes, z6)).setAudioFormat(DefaultAudioSink.C(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding)).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i10).setOffloadedPlayback(this.outputMode == 1).build();
        }

        private AudioTrack g(AudioAttributes audioAttributes, int i10) {
            int iJ0 = Util.j0(audioAttributes.usage);
            return i10 == 0 ? new AudioTrack(iJ0, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(iJ0, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i10);
        }

        @RequiresApi
        private static android.media.AudioAttributes i(AudioAttributes audioAttributes, boolean z6) {
            return z6 ? j() : audioAttributes.b().audioAttributes;
        }

        @RequiresApi
        private static android.media.AudioAttributes j() {
            return new android.media.AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public boolean b(Configuration configuration) {
            return configuration.outputMode == this.outputMode && configuration.outputEncoding == this.outputEncoding && configuration.outputSampleRate == this.outputSampleRate && configuration.outputChannelConfig == this.outputChannelConfig && configuration.outputPcmFrameSize == this.outputPcmFrameSize && configuration.enableAudioTrackPlaybackParams == this.enableAudioTrackPlaybackParams;
        }

        public Configuration c(int i10) {
            return new Configuration(this.inputFormat, this.inputPcmFrameSize, this.outputMode, this.outputPcmFrameSize, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, i10, this.audioProcessingPipeline, this.enableAudioTrackPlaybackParams);
        }

        public long h(long j6) {
            return Util.W0(j6, this.outputSampleRate);
        }

        public long k(long j6) {
            return Util.W0(j6, this.inputFormat.sampleRate);
        }

        public Configuration(Format format, int i10, int i11, int i12, int i13, int i14, int i15, int i16, AudioProcessingPipeline audioProcessingPipeline, boolean z6) {
            this.inputFormat = format;
            this.inputPcmFrameSize = i10;
            this.outputMode = i11;
            this.outputPcmFrameSize = i12;
            this.outputSampleRate = i13;
            this.outputChannelConfig = i14;
            this.outputEncoding = i15;
            this.bufferSize = i16;
            this.audioProcessingPipeline = audioProcessingPipeline;
            this.enableAudioTrackPlaybackParams = z6;
        }

        public AudioTrack a(boolean z6, AudioAttributes audioAttributes, int i10) throws AudioSink.InitializationException {
            try {
                AudioTrack audioTrackD = d(z6, audioAttributes, i10);
                int state = audioTrackD.getState();
                if (state == 1) {
                    return audioTrackD;
                }
                try {
                    audioTrackD.release();
                } catch (Exception unused) {
                }
                throw new AudioSink.InitializationException(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new AudioSink.InitializationException(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, l(), e);
            }
        }
    }

    public static class DefaultAudioProcessorChain implements AudioProcessorChain {
        private final AudioProcessor[] audioProcessors;
        private final SilenceSkippingAudioProcessor silenceSkippingAudioProcessor;
        private final androidx.media3.common.audio.SonicAudioProcessor sonicAudioProcessor;

        public DefaultAudioProcessorChain(AudioProcessor... audioProcessorArr) {
            this(audioProcessorArr, new SilenceSkippingAudioProcessor(), new androidx.media3.common.audio.SonicAudioProcessor());
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public AudioProcessor[] getAudioProcessors() {
            return this.audioProcessors;
        }

        public DefaultAudioProcessorChain(AudioProcessor[] audioProcessorArr, SilenceSkippingAudioProcessor silenceSkippingAudioProcessor, androidx.media3.common.audio.SonicAudioProcessor sonicAudioProcessor) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.audioProcessors = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            this.silenceSkippingAudioProcessor = silenceSkippingAudioProcessor;
            this.sonicAudioProcessor = sonicAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length] = silenceSkippingAudioProcessor;
            audioProcessorArr2[audioProcessorArr.length + 1] = sonicAudioProcessor;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public boolean a(boolean z6) {
            this.silenceSkippingAudioProcessor.q(z6);
            return z6;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public PlaybackParameters b(PlaybackParameters playbackParameters) {
            this.sonicAudioProcessor.d(playbackParameters.speed);
            this.sonicAudioProcessor.c(playbackParameters.pitch);
            return playbackParameters;
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getMediaDuration(long j6) {
            return this.sonicAudioProcessor.b(j6);
        }

        @Override // androidx.media3.common.audio.AudioProcessorChain
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.k();
        }
    }

    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    private static final class MediaPositionParameters {
        public final long audioTrackPositionUs;
        public final long mediaTimeUs;
        public final PlaybackParameters playbackParameters;

        private MediaPositionParameters(PlaybackParameters playbackParameters, long j6, long j10) {
            this.playbackParameters = playbackParameters;
            this.mediaTimeUs = j6;
            this.audioTrackPositionUs = j10;
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OffloadMode {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface OutputMode {
    }

    private final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void b(long j6) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.b(j6);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j6) {
            Log.i(DefaultAudioSink.TAG, "Ignoring impossibly large audio latency: " + j6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j6, long j10, long j11, long j12) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j6 + ", " + j10 + ", " + j11 + ", " + j12 + ", " + DefaultAudioSink.this.G() + ", " + DefaultAudioSink.this.H();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.i(DefaultAudioSink.TAG, str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j6, long j10, long j11, long j12) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j6 + ", " + j10 + ", " + j11 + ", " + j12 + ", " + DefaultAudioSink.this.G() + ", " + DefaultAudioSink.this.H();
            if (DefaultAudioSink.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(str);
            }
            Log.i(DefaultAudioSink.TAG, str);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onUnderrun(int i10, long j6) {
            if (DefaultAudioSink.this.listener != null) {
                DefaultAudioSink.this.listener.onUnderrun(i10, j6, SystemClock.elapsedRealtime() - DefaultAudioSink.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    @RequiresApi
    private final class StreamEventCallbackV29 {
        private final AudioTrack$StreamEventCallback callback;
        private final Handler handler = new Handler(Looper.myLooper());

        public StreamEventCallbackV29() {
            this.callback = new AudioTrack$StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.DefaultAudioSink.StreamEventCallbackV29.1
                public void onDataRequest(AudioTrack audioTrack, int i10) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.d();
                    }
                }

                public void onTearDown(AudioTrack audioTrack) {
                    if (audioTrack.equals(DefaultAudioSink.this.audioTrack) && DefaultAudioSink.this.listener != null && DefaultAudioSink.this.playing) {
                        DefaultAudioSink.this.listener.d();
                    }
                }
            };
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.handler;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new a0(handler), this.callback);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    private static int E(int i10, ByteBuffer byteBuffer) {
        switch (i10) {
            case 5:
            case 6:
            case 18:
                return Ac3Util.e(byteBuffer);
            case 7:
            case 8:
                return DtsUtil.e(byteBuffer);
            case 9:
                int iM = MpegAudioUtil.m(Util.J(byteBuffer, byteBuffer.position()));
                if (iM != -1) {
                    return iM;
                }
                throw new IllegalArgumentException();
            case 10:
                return 1024;
            case 11:
            case 12:
                return 2048;
            case 13:
            case 19:
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i10);
            case 14:
                int iB = Ac3Util.b(byteBuffer);
                if (iB == -1) {
                    return 0;
                }
                return Ac3Util.i(byteBuffer, iB) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return Ac4Util.c(byteBuffer);
            case 20:
                return OpusUtil.g(byteBuffer);
        }
    }

    private boolean K() {
        return this.audioTrack != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void M(AudioTrack audioTrack, ConditionVariable conditionVariable) {
        try {
            audioTrack.flush();
            audioTrack.release();
            conditionVariable.f();
            synchronized (releaseExecutorLock) {
                try {
                    int i10 = pendingReleaseCount - 1;
                    pendingReleaseCount = i10;
                    if (i10 == 0) {
                        releaseExecutor.shutdown();
                        releaseExecutor = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } catch (Throwable th2) {
            conditionVariable.f();
            synchronized (releaseExecutorLock) {
                try {
                    int i11 = pendingReleaseCount - 1;
                    pendingReleaseCount = i11;
                    if (i11 == 0) {
                        releaseExecutor.shutdown();
                        releaseExecutor = null;
                    }
                    throw th2;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    @RequiresApi
    private static int f0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public /* synthetic */ void f(long j6) {
        m.b(this, j6);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public PlaybackParameters getPlaybackParameters() {
        return this.playbackParameters;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void i(AudioSink.Listener listener) {
        this.listener = listener;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void m(@Nullable PlayerId playerId) {
        this.playerId = playerId;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void pause() {
        this.playing = false;
        if (K() && this.audioTrackPositionTracker.o()) {
            this.audioTrack.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void play() {
        this.playing = true;
        if (K()) {
            this.audioTrackPositionTracker.t();
            this.audioTrack.play();
        }
    }

    @RequiresApi
    private static final class Api31 {
        private Api31() {
        }

        @DoNotInline
        public static void a(AudioTrack audioTrack, PlayerId playerId) {
            LogSessionId logSessionIdA = playerId.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                audioTrack.setLogSessionId(logSessionIdA);
            }
        }
    }

    @RequiresApi
    private static final class AudioDeviceInfoApi23 {
        public final AudioDeviceInfo audioDeviceInfo;

        public AudioDeviceInfoApi23(AudioDeviceInfo audioDeviceInfo) {
            this.audioDeviceInfo = audioDeviceInfo;
        }
    }

    private static final class PendingExceptionHolder<T extends Exception> {

        @Nullable
        private T pendingException;
        private long throwDeadlineMs;
        private final long throwDelayMs;

        public void a() {
            this.pendingException = null;
        }

        public PendingExceptionHolder(long j6) {
            this.throwDelayMs = j6;
        }

        /* JADX INFO: Thrown type has an unknown type hierarchy: T extends java.lang.Exception */
        public void b(T t5) throws Exception {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (this.pendingException == null) {
                this.pendingException = t5;
                this.throwDeadlineMs = this.throwDelayMs + jElapsedRealtime;
            }
            if (jElapsedRealtime >= this.throwDeadlineMs) {
                T t10 = this.pendingException;
                if (t10 != t5) {
                    t10.addSuppressed(t5);
                }
                T t11 = this.pendingException;
                a();
                throw t11;
            }
        }
    }

    private DefaultAudioSink(Builder builder) {
        Context context = builder.context;
        this.context = context;
        this.audioCapabilities = context != null ? AudioCapabilities.c(context) : builder.audioCapabilities;
        this.audioProcessorChain = builder.audioProcessorChain;
        int i10 = Util.SDK_INT;
        this.enableFloatOutput = i10 >= 21 && builder.enableFloatOutput;
        this.preferAudioTrackPlaybackParams = i10 >= 23 && builder.enableAudioTrackPlaybackParams;
        this.offloadMode = i10 >= 29 ? builder.offloadMode : 0;
        this.audioTrackBufferSizeProvider = builder.audioTrackBufferSizeProvider;
        ConditionVariable conditionVariable = new ConditionVariable(Clock.DEFAULT);
        this.releasingConditionVariable = conditionVariable;
        conditionVariable.f();
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener());
        ChannelMappingAudioProcessor channelMappingAudioProcessor = new ChannelMappingAudioProcessor();
        this.channelMappingAudioProcessor = channelMappingAudioProcessor;
        TrimmingAudioProcessor trimmingAudioProcessor = new TrimmingAudioProcessor();
        this.trimmingAudioProcessor = trimmingAudioProcessor;
        this.toIntPcmAvailableAudioProcessors = com.google.common.collect.a0.A(new ToInt16PcmAudioProcessor(), channelMappingAudioProcessor, trimmingAudioProcessor);
        this.toFloatPcmAvailableAudioProcessors = com.google.common.collect.a0.y(new ToFloatPcmAudioProcessor());
        this.volume = 1.0f;
        this.audioAttributes = AudioAttributes.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new AuxEffectInfo(0, 0.0f);
        PlaybackParameters playbackParameters = PlaybackParameters.DEFAULT;
        this.mediaPositionParameters = new MediaPositionParameters(playbackParameters, 0L, 0L);
        this.playbackParameters = playbackParameters;
        this.skipSilenceEnabled = false;
        this.mediaPositionParametersCheckpoints = new ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new PendingExceptionHolder<>(100L);
        this.writeExceptionPendingExceptionHolder = new PendingExceptionHolder<>(100L);
        this.audioOffloadListener = builder.audioOffloadListener;
    }

    private boolean A() throws Exception {
        if (!this.audioProcessingPipeline.f()) {
            ByteBuffer byteBuffer = this.outputBuffer;
            if (byteBuffer == null) {
                return true;
            }
            e0(byteBuffer, Long.MIN_VALUE);
            return this.outputBuffer == null;
        }
        this.audioProcessingPipeline.h();
        Q(Long.MIN_VALUE);
        if (!this.audioProcessingPipeline.e()) {
            return false;
        }
        ByteBuffer byteBuffer2 = this.outputBuffer;
        return byteBuffer2 == null || !byteBuffer2.hasRemaining();
    }

    private AudioCapabilities B() {
        if (this.audioCapabilitiesReceiver == null && this.context != null) {
            this.playbackLooper = Looper.myLooper();
            AudioCapabilitiesReceiver audioCapabilitiesReceiver = new AudioCapabilitiesReceiver(this.context, new AudioCapabilitiesReceiver.Listener() { // from class: androidx.media3.exoplayer.audio.u
                @Override // androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener
                public final void a(AudioCapabilities audioCapabilities) {
                    this.f474a.O(audioCapabilities);
                }
            });
            this.audioCapabilitiesReceiver = audioCapabilitiesReceiver;
            this.audioCapabilities = audioCapabilitiesReceiver.d();
        }
        return this.audioCapabilities;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    public static AudioFormat C(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    @RequiresApi
    @SuppressLint({"InlinedApi"})
    private int F(AudioFormat audioFormat, android.media.AudioAttributes audioAttributes) {
        int i10 = Util.SDK_INT;
        if (i10 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i10 == 30 && Util.MODEL.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long G() {
        Configuration configuration = this.configuration;
        return configuration.outputMode == 0 ? this.submittedPcmBytes / ((long) configuration.inputPcmFrameSize) : this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long H() {
        Configuration configuration = this.configuration;
        return configuration.outputMode == 0 ? this.writtenPcmBytes / ((long) configuration.outputPcmFrameSize) : this.writtenEncodedFrames;
    }

    private boolean I() throws AudioSink.InitializationException {
        PlayerId playerId;
        if (!this.releasingConditionVariable.e()) {
            return false;
        }
        AudioTrack audioTrackZ = z();
        this.audioTrack = audioTrackZ;
        if (L(audioTrackZ)) {
            R(this.audioTrack);
            if (this.offloadMode != 3) {
                AudioTrack audioTrack = this.audioTrack;
                Format format = this.configuration.inputFormat;
                audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
            }
        }
        int i10 = Util.SDK_INT;
        if (i10 >= 31 && (playerId = this.playerId) != null) {
            Api31.a(this.audioTrack, playerId);
        }
        this.audioSessionId = this.audioTrack.getAudioSessionId();
        AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
        AudioTrack audioTrack2 = this.audioTrack;
        Configuration configuration = this.configuration;
        audioTrackPositionTracker.r(audioTrack2, configuration.outputMode == 2, configuration.outputEncoding, configuration.outputPcmFrameSize, configuration.bufferSize);
        W();
        int i11 = this.auxEffectInfo.effectId;
        if (i11 != 0) {
            this.audioTrack.attachAuxEffect(i11);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        AudioDeviceInfoApi23 audioDeviceInfoApi23 = this.preferredDevice;
        if (audioDeviceInfoApi23 != null && i10 >= 23) {
            Api23.a(this.audioTrack, audioDeviceInfoApi23);
        }
        this.startMediaTimeUsNeedsInit = true;
        return true;
    }

    private static boolean J(int i10) {
        return (Util.SDK_INT >= 24 && i10 == -6) || i10 == ERROR_NATIVE_DEAD_OBJECT;
    }

    private static boolean L(AudioTrack audioTrack) {
        return Util.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    private void N() {
        if (this.configuration.l()) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    private void P() {
        if (this.stoppedAudioTrack) {
            return;
        }
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.f(H());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    private void Q(long j6) throws Exception {
        ByteBuffer byteBufferD;
        if (!this.audioProcessingPipeline.f()) {
            ByteBuffer byteBuffer = this.inputBuffer;
            if (byteBuffer == null) {
                byteBuffer = AudioProcessor.EMPTY_BUFFER;
            }
            e0(byteBuffer, j6);
            return;
        }
        while (!this.audioProcessingPipeline.e()) {
            do {
                byteBufferD = this.audioProcessingPipeline.d();
                if (byteBufferD.hasRemaining()) {
                    e0(byteBufferD, j6);
                } else {
                    ByteBuffer byteBuffer2 = this.inputBuffer;
                    if (byteBuffer2 == null || !byteBuffer2.hasRemaining()) {
                        return;
                    } else {
                        this.audioProcessingPipeline.i(this.inputBuffer);
                    }
                }
            } while (!byteBufferD.hasRemaining());
            return;
        }
    }

    @RequiresApi
    private void R(AudioTrack audioTrack) {
        if (this.offloadStreamEventCallbackV29 == null) {
            this.offloadStreamEventCallbackV29 = new StreamEventCallbackV29();
        }
        this.offloadStreamEventCallbackV29.a(audioTrack);
    }

    private void T() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new MediaPositionParameters(this.playbackParameters, 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.i();
        Z();
    }

    private void U(PlaybackParameters playbackParameters) {
        MediaPositionParameters mediaPositionParameters = new MediaPositionParameters(playbackParameters, -9223372036854775807L, -9223372036854775807L);
        if (K()) {
            this.afterDrainParameters = mediaPositionParameters;
        } else {
            this.mediaPositionParameters = mediaPositionParameters;
        }
    }

    private void Z() {
        AudioProcessingPipeline audioProcessingPipeline = this.configuration.audioProcessingPipeline;
        this.audioProcessingPipeline = audioProcessingPipeline;
        audioProcessingPipeline.b();
    }

    private boolean a0() {
        if (!this.tunneling) {
            Configuration configuration = this.configuration;
            if (configuration.outputMode == 0 && !b0(configuration.inputFormat.pcmEncoding)) {
                return true;
            }
        }
        return false;
    }

    private boolean b0(int i10) {
        return this.enableFloatOutput && Util.B0(i10);
    }

    private boolean c0() {
        Configuration configuration = this.configuration;
        return configuration != null && configuration.enableAudioTrackPlaybackParams && Util.SDK_INT >= 23;
    }

    private boolean d0(Format format, AudioAttributes audioAttributes) {
        int iF;
        int iH;
        int iF2;
        if (Util.SDK_INT < 29 || this.offloadMode == 0 || (iF = MimeTypes.f((String) Assertions.e(format.sampleMimeType), format.codecs)) == 0 || (iH = Util.H(format.channelCount)) == 0 || (iF2 = F(C(format.sampleRate, iH, iF), audioAttributes.b().audioAttributes)) == 0) {
            return false;
        }
        if (iF2 == 1) {
            return ((format.encoderDelay != 0 || format.encoderPadding != 0) && (this.offloadMode == 1)) ? false : true;
        }
        if (iF2 == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    @RequiresApi
    private int g0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j6) {
        if (Util.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, i10, 1, j6 * 1000);
        }
        if (this.avSyncHeader == null) {
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
            this.avSyncHeader = byteBufferAllocate;
            byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, i10);
            this.avSyncHeader.putLong(8, j6 * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = i10;
        }
        int iRemaining = this.avSyncHeader.remaining();
        if (iRemaining > 0) {
            int iWrite = audioTrack.write(this.avSyncHeader, iRemaining, 1);
            if (iWrite < 0) {
                this.bytesUntilNextAvSync = 0;
                return iWrite;
            }
            if (iWrite < iRemaining) {
                return 0;
            }
        }
        int iF0 = f0(audioTrack, byteBuffer, i10);
        if (iF0 < 0) {
            this.bytesUntilNextAvSync = 0;
            return iF0;
        }
        this.bytesUntilNextAvSync -= iF0;
        return iF0;
    }

    private long w(long j6) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j6 >= this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        MediaPositionParameters mediaPositionParameters = this.mediaPositionParameters;
        long j10 = j6 - mediaPositionParameters.audioTrackPositionUs;
        if (mediaPositionParameters.playbackParameters.equals(PlaybackParameters.DEFAULT)) {
            return this.mediaPositionParameters.mediaTimeUs + j10;
        }
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            return this.mediaPositionParameters.mediaTimeUs + this.audioProcessorChain.getMediaDuration(j10);
        }
        MediaPositionParameters first = this.mediaPositionParametersCheckpoints.getFirst();
        return first.mediaTimeUs - Util.d0(first.audioTrackPositionUs - j6, this.mediaPositionParameters.playbackParameters.speed);
    }

    private long x(long j6) {
        return j6 + this.configuration.h(this.audioProcessorChain.getSkippedOutputFrameCount());
    }

    private AudioTrack y(Configuration configuration) throws AudioSink.InitializationException {
        try {
            AudioTrack audioTrackA = configuration.a(this.tunneling, this.audioAttributes, this.audioSessionId);
            ExoPlayer.AudioOffloadListener audioOffloadListener = this.audioOffloadListener;
            if (audioOffloadListener != null) {
                audioOffloadListener.v(L(audioTrackA));
            }
            return audioTrackA;
        } catch (AudioSink.InitializationException e) {
            AudioSink.Listener listener = this.listener;
            if (listener != null) {
                listener.a(e);
            }
            throw e;
        }
    }

    private AudioTrack z() throws AudioSink.InitializationException {
        try {
            return y((Configuration) Assertions.e(this.configuration));
        } catch (AudioSink.InitializationException e) {
            Configuration configuration = this.configuration;
            if (configuration.bufferSize > 1000000) {
                Configuration configurationC = configuration.c(1000000);
                try {
                    AudioTrack audioTrackY = y(configurationC);
                    this.configuration = configurationC;
                    return audioTrackY;
                } catch (AudioSink.InitializationException e2) {
                    e.addSuppressed(e2);
                    N();
                    throw e;
                }
            }
            N();
            throw e;
        }
    }

    public void O(AudioCapabilities audioCapabilities) {
        Assertions.g(this.playbackLooper == Looper.myLooper());
        if (audioCapabilities.equals(B())) {
            return;
        }
        this.audioCapabilities = audioCapabilities;
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.e();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void b(PlaybackParameters playbackParameters) {
        this.playbackParameters = new PlaybackParameters(Util.p(playbackParameters.speed, 0.1f, 8.0f), Util.p(playbackParameters.pitch, 0.1f, 8.0f));
        if (c0()) {
            V();
        } else {
            U(playbackParameters);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void c() {
        if (Util.SDK_INT < 25) {
            flush();
            return;
        }
        this.writeExceptionPendingExceptionHolder.a();
        this.initializationExceptionPendingExceptionHolder.a();
        if (K()) {
            T();
            if (this.audioTrackPositionTracker.h()) {
                this.audioTrack.pause();
            }
            this.audioTrack.flush();
            this.audioTrackPositionTracker.p();
            AudioTrackPositionTracker audioTrackPositionTracker = this.audioTrackPositionTracker;
            AudioTrack audioTrack = this.audioTrack;
            Configuration configuration = this.configuration;
            audioTrackPositionTracker.r(audioTrack, configuration.outputMode == 2, configuration.outputEncoding, configuration.outputPcmFrameSize, configuration.bufferSize);
            this.startMediaTimeUsNeedsInit = true;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void d() {
        Assertions.g(Util.SDK_INT >= 21);
        Assertions.g(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean e(ByteBuffer byteBuffer, long j6, int i10) throws Exception {
        ByteBuffer byteBuffer2 = this.inputBuffer;
        Assertions.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!A()) {
                return false;
            }
            if (this.pendingConfiguration.b(this.configuration)) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                if (L(this.audioTrack) && this.offloadMode != 3) {
                    if (this.audioTrack.getPlayState() == 3) {
                        this.audioTrack.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.audioTrack;
                    Format format = this.configuration.inputFormat;
                    audioTrack.setOffloadDelayPadding(format.encoderDelay, format.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            } else {
                P();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            v(j6);
        }
        if (!K()) {
            try {
                if (!I()) {
                    return false;
                }
            } catch (AudioSink.InitializationException e) {
                if (e.isRecoverable) {
                    throw e;
                }
                this.initializationExceptionPendingExceptionHolder.b(e);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.a();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = Math.max(0L, j6);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (c0()) {
                V();
            }
            v(j6);
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.j(H())) {
            return false;
        }
        if (this.inputBuffer == null) {
            Assertions.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            Configuration configuration = this.configuration;
            if (configuration.outputMode != 0 && this.framesPerEncodedSample == 0) {
                int iE = E(configuration.outputEncoding, byteBuffer);
                this.framesPerEncodedSample = iE;
                if (iE == 0) {
                    return true;
                }
            }
            if (this.afterDrainParameters != null) {
                if (!A()) {
                    return false;
                }
                v(j6);
                this.afterDrainParameters = null;
            }
            long jK = this.startMediaTimeUs + this.configuration.k(G() - this.trimmingAudioProcessor.h());
            if (!this.startMediaTimeUsNeedsSync && Math.abs(jK - j6) > 200000) {
                AudioSink.Listener listener = this.listener;
                if (listener != null) {
                    listener.a(new AudioSink.UnexpectedDiscontinuityException(j6, jK));
                }
                this.startMediaTimeUsNeedsSync = true;
            }
            if (this.startMediaTimeUsNeedsSync) {
                if (!A()) {
                    return false;
                }
                long j10 = j6 - jK;
                this.startMediaTimeUs += j10;
                this.startMediaTimeUsNeedsSync = false;
                v(j6);
                AudioSink.Listener listener2 = this.listener;
                if (listener2 != null && j10 != 0) {
                    listener2.onPositionDiscontinuity();
                }
            }
            if (this.configuration.outputMode == 0) {
                this.submittedPcmBytes += (long) byteBuffer.remaining();
            } else {
                this.submittedEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) i10);
            }
            this.inputBuffer = byteBuffer;
            this.inputBufferAccessUnitCount = i10;
        }
        Q(j6);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return true;
        }
        if (!this.audioTrackPositionTracker.i(H())) {
            return false;
        }
        Log.i(TAG, "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void g(boolean z6) {
        this.skipSilenceEnabled = z6;
        U(c0() ? PlaybackParameters.DEFAULT : this.playbackParameters);
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void h(AudioAttributes audioAttributes) {
        if (this.audioAttributes.equals(audioAttributes)) {
            return;
        }
        this.audioAttributes = audioAttributes;
        if (this.tunneling) {
            return;
        }
        flush();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void j(Format format, int i10, @Nullable int[] iArr) throws AudioSink.ConfigurationException {
        AudioProcessingPipeline audioProcessingPipeline;
        int iH0;
        int iH1;
        int i11;
        int iIntValue;
        int iF;
        boolean z6;
        int i12;
        int[] iArr2;
        if ("audio/raw".equals(format.sampleMimeType)) {
            Assertions.a(Util.C0(format.pcmEncoding));
            iH0 = Util.h0(format.pcmEncoding, format.channelCount);
            com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
            if (b0(format.pcmEncoding)) {
                aVar.j(this.toFloatPcmAvailableAudioProcessors);
            } else {
                aVar.j(this.toIntPcmAvailableAudioProcessors);
                aVar.i(this.audioProcessorChain.getAudioProcessors());
            }
            AudioProcessingPipeline audioProcessingPipeline2 = new AudioProcessingPipeline(aVar.k());
            if (audioProcessingPipeline2.equals(this.audioProcessingPipeline)) {
                audioProcessingPipeline2 = this.audioProcessingPipeline;
            }
            this.trimmingAudioProcessor.j(format.encoderDelay, format.encoderPadding);
            if (Util.SDK_INT < 21 && format.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i13 = 0; i13 < 6; i13++) {
                    iArr2[i13] = i13;
                }
            } else {
                iArr2 = iArr;
            }
            this.channelMappingAudioProcessor.h(iArr2);
            try {
                AudioProcessor.AudioFormat audioFormatA = audioProcessingPipeline2.a(new AudioProcessor.AudioFormat(format.sampleRate, format.channelCount, format.pcmEncoding));
                int i14 = audioFormatA.encoding;
                int i15 = audioFormatA.sampleRate;
                int iH = Util.H(audioFormatA.channelCount);
                i12 = 0;
                iH1 = Util.h0(i14, audioFormatA.channelCount);
                audioProcessingPipeline = audioProcessingPipeline2;
                i11 = i15;
                iIntValue = iH;
                z6 = this.preferAudioTrackPlaybackParams;
                iF = i14;
            } catch (AudioProcessor.UnhandledAudioFormatException e) {
                throw new AudioSink.ConfigurationException(e, format);
            }
        } else {
            AudioProcessingPipeline audioProcessingPipeline3 = new AudioProcessingPipeline(com.google.common.collect.a0.x());
            int i16 = format.sampleRate;
            if (d0(format, this.audioAttributes)) {
                audioProcessingPipeline = audioProcessingPipeline3;
                iH0 = -1;
                iH1 = -1;
                i12 = 1;
                z6 = true;
                i11 = i16;
                iF = MimeTypes.f((String) Assertions.e(format.sampleMimeType), format.codecs);
                iIntValue = Util.H(format.channelCount);
            } else {
                Pair<Integer, Integer> pairF = B().f(format);
                if (pairF == null) {
                    throw new AudioSink.ConfigurationException("Unable to configure passthrough for: " + format, format);
                }
                int iIntValue2 = ((Integer) pairF.first).intValue();
                audioProcessingPipeline = audioProcessingPipeline3;
                iH0 = -1;
                iH1 = -1;
                i11 = i16;
                iIntValue = ((Integer) pairF.second).intValue();
                iF = iIntValue2;
                z6 = this.preferAudioTrackPlaybackParams;
                i12 = 2;
            }
        }
        if (iF == 0) {
            throw new AudioSink.ConfigurationException("Invalid output encoding (mode=" + i12 + ") for: " + format, format);
        }
        if (iIntValue == 0) {
            throw new AudioSink.ConfigurationException("Invalid output channel config (mode=" + i12 + ") for: " + format, format);
        }
        int iA = i10 != 0 ? i10 : this.audioTrackBufferSizeProvider.a(D(i11, iIntValue, iF), iF, i12, iH1 != -1 ? iH1 : 1, i11, format.bitrate, z6 ? 8.0d : 1.0d);
        this.offloadDisabledUntilNextConfiguration = false;
        Configuration configuration = new Configuration(format, iH0, i12, iH1, i11, iIntValue, iF, iA, audioProcessingPipeline, z6);
        if (K()) {
            this.pendingConfiguration = configuration;
        } else {
            this.configuration = configuration;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public int k(Format format) {
        if (!"audio/raw".equals(format.sampleMimeType)) {
            return ((this.offloadDisabledUntilNextConfiguration || !d0(format, this.audioAttributes)) && !B().i(format)) ? 0 : 2;
        }
        if (Util.C0(format.pcmEncoding)) {
            int i10 = format.pcmEncoding;
            return (i10 == 2 || (this.enableFloatOutput && i10 == 4)) ? 2 : 1;
        }
        Log.i(TAG, "Invalid PCM encoding: " + format.pcmEncoding);
        return 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void l(AuxEffectInfo auxEffectInfo) {
        if (this.auxEffectInfo.equals(auxEffectInfo)) {
            return;
        }
        int i10 = auxEffectInfo.effectId;
        float f = auxEffectInfo.sendLevel;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            if (this.auxEffectInfo.effectId != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.audioTrack.setAuxEffectSendLevel(f);
            }
        }
        this.auxEffectInfo = auxEffectInfo;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void playToEndOfStream() throws AudioSink.WriteException {
        if (!this.handledEndOfStream && K() && A()) {
            P();
            this.handledEndOfStream = true;
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void release() {
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver != null) {
            audioCapabilitiesReceiver.e();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setAudioSessionId(int i10) {
        if (this.audioSessionId != i10) {
            this.audioSessionId = i10;
            this.externalAudioSessionIdProvided = i10 != 0;
            flush();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    @RequiresApi
    public void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfoApi23 audioDeviceInfoApi23 = audioDeviceInfo == null ? null : new AudioDeviceInfoApi23(audioDeviceInfo);
        this.preferredDevice = audioDeviceInfoApi23;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            Api23.a(audioTrack, audioDeviceInfoApi23);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void setVolume(float f) {
        if (this.volume != f) {
            this.volume = f;
            W();
        }
    }

    private static int D(int i10, int i11, int i12) {
        boolean z6;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        if (minBufferSize != -2) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.g(z6);
        return minBufferSize;
    }

    private static void S(final AudioTrack audioTrack, final ConditionVariable conditionVariable) {
        conditionVariable.d();
        synchronized (releaseExecutorLock) {
            try {
                if (releaseExecutor == null) {
                    releaseExecutor = Util.L0("ExoPlayer:AudioTrackReleaseThread");
                }
                pendingReleaseCount++;
                releaseExecutor.execute(new Runnable() { // from class: androidx.media3.exoplayer.audio.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultAudioSink.M(audioTrack, conditionVariable);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @RequiresApi
    private void V() {
        if (K()) {
            try {
                this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.playbackParameters.speed).setPitch(this.playbackParameters.pitch).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                Log.j(TAG, "Failed to set playback params", e);
            }
            PlaybackParameters playbackParameters = new PlaybackParameters(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
            this.playbackParameters = playbackParameters;
            this.audioTrackPositionTracker.s(playbackParameters.speed);
        }
    }

    private void W() {
        if (K()) {
            if (Util.SDK_INT >= 21) {
                X(this.audioTrack, this.volume);
            } else {
                Y(this.audioTrack, this.volume);
            }
        }
    }

    @RequiresApi
    private static void X(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    private static void Y(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    private void e0(ByteBuffer byteBuffer, long j6) throws Exception {
        int iF0;
        boolean z6;
        AudioSink.Listener listener;
        boolean z10;
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        ByteBuffer byteBuffer2 = this.outputBuffer;
        boolean z11 = true;
        if (byteBuffer2 != null) {
            if (byteBuffer2 == byteBuffer) {
                z10 = true;
            } else {
                z10 = false;
            }
            Assertions.a(z10);
        } else {
            this.outputBuffer = byteBuffer;
            if (Util.SDK_INT < 21) {
                int iRemaining = byteBuffer.remaining();
                byte[] bArr = this.preV21OutputBuffer;
                if (bArr == null || bArr.length < iRemaining) {
                    this.preV21OutputBuffer = new byte[iRemaining];
                }
                int iPosition = byteBuffer.position();
                byteBuffer.get(this.preV21OutputBuffer, 0, iRemaining);
                byteBuffer.position(iPosition);
                this.preV21OutputBufferOffset = 0;
            }
        }
        int iRemaining2 = byteBuffer.remaining();
        if (Util.SDK_INT < 21) {
            int iB = this.audioTrackPositionTracker.b(this.writtenPcmBytes);
            if (iB > 0) {
                iF0 = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(iRemaining2, iB));
                if (iF0 > 0) {
                    this.preV21OutputBufferOffset += iF0;
                    byteBuffer.position(byteBuffer.position() + iF0);
                }
            } else {
                iF0 = 0;
            }
        } else if (this.tunneling) {
            if (j6 != -9223372036854775807L) {
                z6 = true;
            } else {
                z6 = false;
            }
            Assertions.g(z6);
            if (j6 == Long.MIN_VALUE) {
                j6 = this.lastTunnelingAvSyncPresentationTimeUs;
            } else {
                this.lastTunnelingAvSyncPresentationTimeUs = j6;
            }
            iF0 = g0(this.audioTrack, byteBuffer, iRemaining2, j6);
        } else {
            iF0 = f0(this.audioTrack, byteBuffer, iRemaining2);
        }
        this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
        if (iF0 < 0) {
            if (!J(iF0) || this.writtenEncodedFrames <= 0) {
                z11 = false;
            }
            AudioSink.WriteException writeException = new AudioSink.WriteException(iF0, this.configuration.inputFormat, z11);
            AudioSink.Listener listener2 = this.listener;
            if (listener2 != null) {
                listener2.a(writeException);
            }
            if (!writeException.isRecoverable) {
                this.writeExceptionPendingExceptionHolder.b(writeException);
                return;
            } else {
                this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
                throw writeException;
            }
        }
        this.writeExceptionPendingExceptionHolder.a();
        if (L(this.audioTrack)) {
            if (this.writtenEncodedFrames > 0) {
                this.isWaitingForOffloadEndOfStreamHandled = false;
            }
            if (this.playing && (listener = this.listener) != null && iF0 < iRemaining2 && !this.isWaitingForOffloadEndOfStreamHandled) {
                listener.c();
            }
        }
        int i10 = this.configuration.outputMode;
        if (i10 == 0) {
            this.writtenPcmBytes += (long) iF0;
        }
        if (iF0 == iRemaining2) {
            if (i10 != 0) {
                if (byteBuffer != this.inputBuffer) {
                    z11 = false;
                }
                Assertions.g(z11);
                this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) this.inputBufferAccessUnitCount);
            }
            this.outputBuffer = null;
        }
    }

    private void v(long j6) {
        PlaybackParameters playbackParametersB;
        boolean zA;
        if (!c0()) {
            if (a0()) {
                playbackParametersB = this.audioProcessorChain.b(this.playbackParameters);
            } else {
                playbackParametersB = PlaybackParameters.DEFAULT;
            }
            this.playbackParameters = playbackParametersB;
        } else {
            playbackParametersB = PlaybackParameters.DEFAULT;
        }
        PlaybackParameters playbackParameters = playbackParametersB;
        if (a0()) {
            zA = this.audioProcessorChain.a(this.skipSilenceEnabled);
        } else {
            zA = false;
        }
        this.skipSilenceEnabled = zA;
        this.mediaPositionParametersCheckpoints.add(new MediaPositionParameters(playbackParameters, Math.max(0L, j6), this.configuration.h(H())));
        Z();
        AudioSink.Listener listener = this.listener;
        if (listener != null) {
            listener.onSkipSilenceEnabledChanged(this.skipSilenceEnabled);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean a(Format format) {
        if (k(format) != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void flush() {
        if (K()) {
            T();
            if (this.audioTrackPositionTracker.h()) {
                this.audioTrack.pause();
            }
            if (L(this.audioTrack)) {
                ((StreamEventCallbackV29) Assertions.e(this.offloadStreamEventCallbackV29)).b(this.audioTrack);
            }
            if (Util.SDK_INT < 21 && !this.externalAudioSessionIdProvided) {
                this.audioSessionId = 0;
            }
            Configuration configuration = this.pendingConfiguration;
            if (configuration != null) {
                this.configuration = configuration;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.p();
            S(this.audioTrack, this.releasingConditionVariable);
            this.audioTrack = null;
        }
        this.writeExceptionPendingExceptionHolder.a();
        this.initializationExceptionPendingExceptionHolder.a();
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public long getCurrentPositionUs(boolean z6) {
        if (K() && !this.startMediaTimeUsNeedsInit) {
            return x(w(Math.min(this.audioTrackPositionTracker.c(z6), this.configuration.h(H()))));
        }
        return Long.MIN_VALUE;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean hasPendingData() {
        if (K() && this.audioTrackPositionTracker.g(H())) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public boolean isEnded() {
        if (K() && (!this.handledEndOfStream || hasPendingData())) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.audio.AudioSink
    public void reset() {
        flush();
        l1<AudioProcessor> it = this.toIntPcmAvailableAudioProcessors.iterator();
        while (it.hasNext()) {
            it.next().reset();
        }
        l1<AudioProcessor> it2 = this.toFloatPcmAvailableAudioProcessors.iterator();
        while (it2.hasNext()) {
            it2.next().reset();
        }
        AudioProcessingPipeline audioProcessingPipeline = this.audioProcessingPipeline;
        if (audioProcessingPipeline != null) {
            audioProcessingPipeline.j();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }
}
