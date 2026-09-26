package com.google.android.exoplayer2.audio;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
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
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.c3;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes9.dex */
public final class c0 implements v {
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
    private com.google.android.exoplayer2.audio.g[] activeAudioProcessors;

    @Nullable
    private k afterDrainParameters;
    private com.google.android.exoplayer2.audio.e audioAttributes;
    private final com.google.android.exoplayer2.audio.f audioCapabilities;

    @Nullable
    private final com.google.android.exoplayer2.s.a audioOffloadListener;
    private final com.google.android.exoplayer2.audio.h audioProcessorChain;
    private int audioSessionId;

    @Nullable
    private AudioTrack audioTrack;
    private final f audioTrackBufferSizeProvider;
    private c3 audioTrackPlaybackParameters;
    private final x audioTrackPositionTracker;
    private y auxEffectInfo;

    @Nullable
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final a0 channelMappingAudioProcessor;
    private h configuration;
    private int drainingAudioProcessorIndex;
    private final boolean enableAudioTrackPlaybackParams;
    private final boolean enableFloatOutput;
    private boolean externalAudioSessionIdProvided;
    private int framesPerEncodedSample;
    private boolean handledEndOfStream;
    private final l<v.b> initializationExceptionPendingExceptionHolder;

    @Nullable
    private ByteBuffer inputBuffer;
    private int inputBufferAccessUnitCount;
    private boolean isWaitingForOffloadEndOfStreamHandled;
    private long lastFeedElapsedRealtimeMs;

    @Nullable
    private v.c listener;
    private k mediaPositionParameters;
    private final ArrayDeque<k> mediaPositionParametersCheckpoints;
    private boolean offloadDisabledUntilNextConfiguration;
    private final int offloadMode;
    private n offloadStreamEventCallbackV29;

    @Nullable
    private ByteBuffer outputBuffer;
    private ByteBuffer[] outputBuffers;

    @Nullable
    private h pendingConfiguration;

    @Nullable
    private t1 playerId;
    private boolean playing;
    private byte[] preV21OutputBuffer;
    private int preV21OutputBufferOffset;

    @Nullable
    private d preferredDevice;
    private final com.google.android.exoplayer2.util.g releasingConditionVariable;
    private long startMediaTimeUs;
    private boolean startMediaTimeUsNeedsInit;
    private boolean startMediaTimeUsNeedsSync;
    private boolean stoppedAudioTrack;
    private long submittedEncodedFrames;
    private long submittedPcmBytes;
    private final com.google.android.exoplayer2.audio.g[] toFloatPcmAvailableAudioProcessors;
    private final com.google.android.exoplayer2.audio.g[] toIntPcmAvailableAudioProcessors;
    private final n0 trimmingAudioProcessor;
    private boolean tunneling;
    private float volume;
    private final l<v.e> writeExceptionPendingExceptionHolder;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    @RequiresApi
    private static final class b {
        @DoNotInline
        public static void a(AudioTrack audioTrack, @Nullable d dVar) {
            audioTrack.setPreferredDevice(dVar == null ? null : dVar.audioDeviceInfo);
        }
    }

    @Deprecated
    public interface e extends com.google.android.exoplayer2.audio.h {
    }

    public interface f {
        public static final f DEFAULT = new d0.a().g();

        int a(int i10, int i11, int i12, int i13, int i14, double d);
    }

    public static final class g {

        @Nullable
        com.google.android.exoplayer2.s.a audioOffloadListener;

        @Nullable
        private com.google.android.exoplayer2.audio.h audioProcessorChain;
        private boolean enableAudioTrackPlaybackParams;
        private boolean enableFloatOutput;
        private com.google.android.exoplayer2.audio.f audioCapabilities = com.google.android.exoplayer2.audio.f.DEFAULT_AUDIO_CAPABILITIES;
        private int offloadMode = 0;
        f audioTrackBufferSizeProvider = f.DEFAULT;

        public g j(boolean z6) {
            this.enableAudioTrackPlaybackParams = z6;
            return this;
        }

        public g k(boolean z6) {
            this.enableFloatOutput = z6;
            return this;
        }

        public g l(int i10) {
            this.offloadMode = i10;
            return this;
        }

        public c0 f() {
            if (this.audioProcessorChain == null) {
                this.audioProcessorChain = new i(new com.google.android.exoplayer2.audio.g[0]);
            }
            return new c0(this);
        }

        public g g(com.google.android.exoplayer2.audio.f fVar) {
            com.google.android.exoplayer2.util.a.e(fVar);
            this.audioCapabilities = fVar;
            return this;
        }

        public g h(com.google.android.exoplayer2.audio.h hVar) {
            com.google.android.exoplayer2.util.a.e(hVar);
            this.audioProcessorChain = hVar;
            return this;
        }

        public g i(com.google.android.exoplayer2.audio.g[] gVarArr) {
            com.google.android.exoplayer2.util.a.e(gVarArr);
            return h(new i(gVarArr));
        }
    }

    private static final class h {
        public final com.google.android.exoplayer2.audio.g[] availableAudioProcessors;
        public final int bufferSize;
        public final a2 inputFormat;
        public final int inputPcmFrameSize;
        public final int outputChannelConfig;
        public final int outputEncoding;
        public final int outputMode;
        public final int outputPcmFrameSize;
        public final int outputSampleRate;

        public boolean l() {
            return this.outputMode == 1;
        }

        private AudioTrack d(boolean z6, com.google.android.exoplayer2.audio.e eVar, int i10) {
            int i11 = com.google.android.exoplayer2.util.o0.SDK_INT;
            if (i11 >= 29) {
                return f(z6, eVar, i10);
            }
            return i11 >= 21 ? e(z6, eVar, i10) : g(eVar, i10);
        }

        @RequiresApi
        private AudioTrack e(boolean z6, com.google.android.exoplayer2.audio.e eVar, int i10) {
            return new AudioTrack(i(eVar, z6), c0.C(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding), this.bufferSize, 1, i10);
        }

        @RequiresApi
        private AudioTrack f(boolean z6, com.google.android.exoplayer2.audio.e eVar, int i10) {
            return new AudioTrack.Builder().setAudioAttributes(i(eVar, z6)).setAudioFormat(c0.C(this.outputSampleRate, this.outputChannelConfig, this.outputEncoding)).setTransferMode(1).setBufferSizeInBytes(this.bufferSize).setSessionId(i10).setOffloadedPlayback(this.outputMode == 1).build();
        }

        private AudioTrack g(com.google.android.exoplayer2.audio.e eVar, int i10) {
            int iA0 = com.google.android.exoplayer2.util.o0.a0(eVar.usage);
            return i10 == 0 ? new AudioTrack(iA0, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1) : new AudioTrack(iA0, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, this.bufferSize, 1, i10);
        }

        @RequiresApi
        private static AudioAttributes i(com.google.android.exoplayer2.audio.e eVar, boolean z6) {
            return z6 ? j() : eVar.b().audioAttributes;
        }

        @RequiresApi
        private static AudioAttributes j() {
            return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
        }

        public boolean b(h hVar) {
            return hVar.outputMode == this.outputMode && hVar.outputEncoding == this.outputEncoding && hVar.outputSampleRate == this.outputSampleRate && hVar.outputChannelConfig == this.outputChannelConfig && hVar.outputPcmFrameSize == this.outputPcmFrameSize;
        }

        public h c(int i10) {
            return new h(this.inputFormat, this.inputPcmFrameSize, this.outputMode, this.outputPcmFrameSize, this.outputSampleRate, this.outputChannelConfig, this.outputEncoding, i10, this.availableAudioProcessors);
        }

        public h(a2 a2Var, int i10, int i11, int i12, int i13, int i14, int i15, int i16, com.google.android.exoplayer2.audio.g[] gVarArr) {
            this.inputFormat = a2Var;
            this.inputPcmFrameSize = i10;
            this.outputMode = i11;
            this.outputPcmFrameSize = i12;
            this.outputSampleRate = i13;
            this.outputChannelConfig = i14;
            this.outputEncoding = i15;
            this.bufferSize = i16;
            this.availableAudioProcessors = gVarArr;
        }

        public AudioTrack a(boolean z6, com.google.android.exoplayer2.audio.e eVar, int i10) throws v.b {
            try {
                AudioTrack audioTrackD = d(z6, eVar, i10);
                int state = audioTrackD.getState();
                if (state == 1) {
                    return audioTrackD;
                }
                try {
                    audioTrackD.release();
                } catch (Exception unused) {
                }
                throw new v.b(state, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, l(), null);
            } catch (IllegalArgumentException | UnsupportedOperationException e) {
                throw new v.b(0, this.outputSampleRate, this.outputChannelConfig, this.bufferSize, this.inputFormat, l(), e);
            }
        }

        public long h(long j6) {
            return (j6 * 1000000) / ((long) this.outputSampleRate);
        }

        public long k(long j6) {
            return (j6 * 1000000) / ((long) this.inputFormat.sampleRate);
        }
    }

    public static class i implements e {
        private final com.google.android.exoplayer2.audio.g[] audioProcessors;
        private final k0 silenceSkippingAudioProcessor;
        private final m0 sonicAudioProcessor;

        public i(com.google.android.exoplayer2.audio.g... gVarArr) {
            this(gVarArr, new k0(), new m0());
        }

        @Override // com.google.android.exoplayer2.audio.h
        public com.google.android.exoplayer2.audio.g[] getAudioProcessors() {
            return this.audioProcessors;
        }

        public i(com.google.android.exoplayer2.audio.g[] gVarArr, k0 k0Var, m0 m0Var) {
            com.google.android.exoplayer2.audio.g[] gVarArr2 = new com.google.android.exoplayer2.audio.g[gVarArr.length + 2];
            this.audioProcessors = gVarArr2;
            System.arraycopy(gVarArr, 0, gVarArr2, 0, gVarArr.length);
            this.silenceSkippingAudioProcessor = k0Var;
            this.sonicAudioProcessor = m0Var;
            gVarArr2[gVarArr.length] = k0Var;
            gVarArr2[gVarArr.length + 1] = m0Var;
        }

        @Override // com.google.android.exoplayer2.audio.h
        public boolean a(boolean z6) {
            this.silenceSkippingAudioProcessor.q(z6);
            return z6;
        }

        @Override // com.google.android.exoplayer2.audio.h
        public c3 b(c3 c3Var) {
            this.sonicAudioProcessor.d(c3Var.speed);
            this.sonicAudioProcessor.c(c3Var.pitch);
            return c3Var;
        }

        @Override // com.google.android.exoplayer2.audio.h
        public long getMediaDuration(long j6) {
            return this.sonicAudioProcessor.b(j6);
        }

        @Override // com.google.android.exoplayer2.audio.h
        public long getSkippedOutputFrameCount() {
            return this.silenceSkippingAudioProcessor.k();
        }
    }

    public static final class j extends RuntimeException {
        private j(String str) {
            super(str);
        }
    }

    private static final class k {
        public final long audioTrackPositionUs;
        public final long mediaTimeUs;
        public final c3 playbackParameters;
        public final boolean skipSilence;

        private k(c3 c3Var, boolean z6, long j6, long j10) {
            this.playbackParameters = c3Var;
            this.skipSilence = z6;
            this.mediaTimeUs = j6;
            this.audioTrackPositionUs = j10;
        }
    }

    private final class m implements x.a {
        private m() {
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void b(long j6) {
            if (c0.this.listener != null) {
                c0.this.listener.b(j6);
            }
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void onInvalidLatency(long j6) {
            com.google.android.exoplayer2.util.t.i(c0.TAG, "Ignoring impossibly large audio latency: " + j6);
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void onPositionFramesMismatch(long j6, long j10, long j11, long j12) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j6 + ", " + j10 + ", " + j11 + ", " + j12 + ", " + c0.this.J() + ", " + c0.this.K();
            if (c0.failOnSpuriousAudioTimestamp) {
                throw new j(str);
            }
            com.google.android.exoplayer2.util.t.i(c0.TAG, str);
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void onSystemTimeUsMismatch(long j6, long j10, long j11, long j12) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j6 + ", " + j10 + ", " + j11 + ", " + j12 + ", " + c0.this.J() + ", " + c0.this.K();
            if (c0.failOnSpuriousAudioTimestamp) {
                throw new j(str);
            }
            com.google.android.exoplayer2.util.t.i(c0.TAG, str);
        }

        @Override // com.google.android.exoplayer2.audio.x.a
        public void onUnderrun(int i10, long j6) {
            if (c0.this.listener != null) {
                c0.this.listener.onUnderrun(i10, j6, SystemClock.elapsedRealtime() - c0.this.lastFeedElapsedRealtimeMs);
            }
        }
    }

    @RequiresApi
    private final class n {
        private final AudioTrack$StreamEventCallback callback;
        private final Handler handler = new Handler(Looper.myLooper());

        class a extends AudioTrack$StreamEventCallback {
            final /* synthetic */ c0 val$this$0;

            a(c0 c0Var) {
                this.val$this$0 = c0Var;
            }

            public void onDataRequest(AudioTrack audioTrack, int i10) {
                if (audioTrack.equals(c0.this.audioTrack) && c0.this.listener != null && c0.this.playing) {
                    c0.this.listener.d();
                }
            }

            public void onTearDown(AudioTrack audioTrack) {
                if (audioTrack.equals(c0.this.audioTrack) && c0.this.listener != null && c0.this.playing) {
                    c0.this.listener.d();
                }
            }
        }

        public n() {
            this.callback = new a(c0.this);
        }

        public void a(AudioTrack audioTrack) {
            Handler handler = this.handler;
            Objects.requireNonNull(handler);
            audioTrack.registerStreamEventCallback(new androidx.media3.exoplayer.audio.a0(handler), this.callback);
        }

        public void b(AudioTrack audioTrack) {
            audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }
    }

    private void B() {
        int i10 = 0;
        while (true) {
            com.google.android.exoplayer2.audio.g[] gVarArr = this.activeAudioProcessors;
            if (i10 >= gVarArr.length) {
                return;
            }
            com.google.android.exoplayer2.audio.g gVar = gVarArr[i10];
            gVar.flush();
            this.outputBuffers[i10] = gVar.getOutput();
            i10++;
        }
    }

    private static int F(int i10, ByteBuffer byteBuffer) {
        switch (i10) {
            case 5:
            case 6:
            case 18:
                return com.google.android.exoplayer2.audio.b.d(byteBuffer);
            case 7:
            case 8:
                return e0.e(byteBuffer);
            case 9:
                int iM = h0.m(com.google.android.exoplayer2.util.o0.F(byteBuffer, byteBuffer.position()));
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
            default:
                throw new IllegalStateException("Unexpected audio encoding: " + i10);
            case 14:
                int iA = com.google.android.exoplayer2.audio.b.a(byteBuffer);
                if (iA == -1) {
                    return 0;
                }
                return com.google.android.exoplayer2.audio.b.h(byteBuffer, iA) * 16;
            case 15:
                return 512;
            case 16:
                return 1024;
            case 17:
                return com.google.android.exoplayer2.audio.c.c(byteBuffer);
        }
    }

    private boolean N() {
        return this.audioTrack != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void P(AudioTrack audioTrack, com.google.android.exoplayer2.util.g gVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            gVar.e();
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
            gVar.e();
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
    private static int g0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10) {
        return audioTrack.write(byteBuffer, i10, 1);
    }

    @Override // com.google.android.exoplayer2.audio.v
    public /* synthetic */ void f(long j6) {
        u.a(this, j6);
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void handleDiscontinuity() {
        this.startMediaTimeUsNeedsSync = true;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void i(@Nullable t1 t1Var) {
        this.playerId = t1Var;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void j(v.c cVar) {
        this.listener = cVar;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void pause() {
        this.playing = false;
        if (N() && this.audioTrackPositionTracker.p()) {
            this.audioTrack.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void play() {
        this.playing = true;
        if (N()) {
            this.audioTrackPositionTracker.u();
            this.audioTrack.play();
        }
    }

    @RequiresApi
    private static final class c {
        @DoNotInline
        public static void a(AudioTrack audioTrack, t1 t1Var) {
            LogSessionId logSessionIdA = t1Var.a();
            if (!logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                audioTrack.setLogSessionId(logSessionIdA);
            }
        }
    }

    @RequiresApi
    private static final class d {
        public final AudioDeviceInfo audioDeviceInfo;

        public d(AudioDeviceInfo audioDeviceInfo) {
            this.audioDeviceInfo = audioDeviceInfo;
        }
    }

    private static final class l<T extends Exception> {

        @Nullable
        private T pendingException;
        private long throwDeadlineMs;
        private final long throwDelayMs;

        public void a() {
            this.pendingException = null;
        }

        public l(long j6) {
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

    @Deprecated
    public c0(@Nullable com.google.android.exoplayer2.audio.f fVar, com.google.android.exoplayer2.audio.g[] gVarArr) {
        this(new g().g((com.google.android.exoplayer2.audio.f) com.google.common.base.i.a(fVar, com.google.android.exoplayer2.audio.f.DEFAULT_AUDIO_CAPABILITIES)).i(gVarArr));
    }

    /* JADX WARN: Code duplicated, block: B:11:0x001c  */
    /* JADX WARN: Code duplicated, block: B:14:0x0028 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:15:0x0029  */
    /* JADX WARN: Code duplicated, block: B:9:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0029 -> B:5:0x0009). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    private boolean A() throws com.google.android.exoplayer2.audio.v.e {
        /*
            r9 = this;
            int r0 = r9.drainingAudioProcessorIndex
            r1 = 1
            r2 = 0
            r3 = -1
            if (r0 != r3) goto Lb
            r9.drainingAudioProcessorIndex = r2
        L9:
            r0 = r1
            goto Lc
        Lb:
            r0 = r2
        Lc:
            int r4 = r9.drainingAudioProcessorIndex
            com.google.android.exoplayer2.audio.g[] r5 = r9.activeAudioProcessors
            int r6 = r5.length
            r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r4 >= r6) goto L2f
            r4 = r5[r4]
            if (r0 == 0) goto L1f
            r4.queueEndOfStream()
        L1f:
            r9.S(r7)
            boolean r0 = r4.isEnded()
            if (r0 != 0) goto L29
            return r2
        L29:
            int r0 = r9.drainingAudioProcessorIndex
            int r0 = r0 + r1
            r9.drainingAudioProcessorIndex = r0
            goto L9
        L2f:
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            r9.f0(r0, r7)
            java.nio.ByteBuffer r0 = r9.outputBuffer
            if (r0 == 0) goto L3b
            return r2
        L3b:
            r9.drainingAudioProcessorIndex = r3
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.c0.A():boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    public static AudioFormat C(int i10, int i11, int i12) {
        return new AudioFormat.Builder().setSampleRate(i10).setChannelMask(i11).setEncoding(i12).build();
    }

    private k G() {
        k kVar = this.afterDrainParameters;
        if (kVar != null) {
            return kVar;
        }
        return !this.mediaPositionParametersCheckpoints.isEmpty() ? this.mediaPositionParametersCheckpoints.getLast() : this.mediaPositionParameters;
    }

    @RequiresApi
    @SuppressLint({"InlinedApi"})
    private int H(AudioFormat audioFormat, AudioAttributes audioAttributes) {
        int i10 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i10 >= 31) {
            return AudioManager.getPlaybackOffloadSupport(audioFormat, audioAttributes);
        }
        if (AudioManager.isOffloadedPlaybackSupported(audioFormat, audioAttributes)) {
            return (i10 == 30 && com.google.android.exoplayer2.util.o0.MODEL.startsWith("Pixel")) ? 2 : 1;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long J() {
        h hVar = this.configuration;
        return hVar.outputMode == 0 ? this.submittedPcmBytes / ((long) hVar.inputPcmFrameSize) : this.submittedEncodedFrames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long K() {
        h hVar = this.configuration;
        return hVar.outputMode == 0 ? this.writtenPcmBytes / ((long) hVar.outputPcmFrameSize) : this.writtenEncodedFrames;
    }

    private boolean L() throws v.b {
        t1 t1Var;
        if (!this.releasingConditionVariable.d()) {
            return false;
        }
        AudioTrack audioTrackZ = z();
        this.audioTrack = audioTrackZ;
        if (O(audioTrackZ)) {
            T(this.audioTrack);
            if (this.offloadMode != 3) {
                AudioTrack audioTrack = this.audioTrack;
                a2 a2Var = this.configuration.inputFormat;
                audioTrack.setOffloadDelayPadding(a2Var.encoderDelay, a2Var.encoderPadding);
            }
        }
        int i10 = com.google.android.exoplayer2.util.o0.SDK_INT;
        if (i10 >= 31 && (t1Var = this.playerId) != null) {
            c.a(this.audioTrack, t1Var);
        }
        this.audioSessionId = this.audioTrack.getAudioSessionId();
        x xVar = this.audioTrackPositionTracker;
        AudioTrack audioTrack2 = this.audioTrack;
        h hVar = this.configuration;
        xVar.s(audioTrack2, hVar.outputMode == 2, hVar.outputEncoding, hVar.outputPcmFrameSize, hVar.bufferSize);
        Y();
        int i11 = this.auxEffectInfo.effectId;
        if (i11 != 0) {
            this.audioTrack.attachAuxEffect(i11);
            this.audioTrack.setAuxEffectSendLevel(this.auxEffectInfo.sendLevel);
        }
        d dVar = this.preferredDevice;
        if (dVar != null && i10 >= 23) {
            b.a(this.audioTrack, dVar);
        }
        this.startMediaTimeUsNeedsInit = true;
        return true;
    }

    private static boolean M(int i10) {
        return (com.google.android.exoplayer2.util.o0.SDK_INT >= 24 && i10 == -6) || i10 == ERROR_NATIVE_DEAD_OBJECT;
    }

    private static boolean O(AudioTrack audioTrack) {
        return com.google.android.exoplayer2.util.o0.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    private void Q() {
        if (this.configuration.l()) {
            this.offloadDisabledUntilNextConfiguration = true;
        }
    }

    private void R() {
        if (this.stoppedAudioTrack) {
            return;
        }
        this.stoppedAudioTrack = true;
        this.audioTrackPositionTracker.g(K());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    private void S(long j6) throws Exception {
        ByteBuffer byteBuffer;
        int length = this.activeAudioProcessors.length;
        int i10 = length;
        while (i10 >= 0) {
            if (i10 > 0) {
                byteBuffer = this.outputBuffers[i10 - 1];
            } else {
                byteBuffer = this.inputBuffer;
                if (byteBuffer == null) {
                    byteBuffer = com.google.android.exoplayer2.audio.g.EMPTY_BUFFER;
                }
            }
            if (i10 == length) {
                f0(byteBuffer, j6);
            } else {
                com.google.android.exoplayer2.audio.g gVar = this.activeAudioProcessors[i10];
                if (i10 > this.drainingAudioProcessorIndex) {
                    gVar.queueInput(byteBuffer);
                }
                ByteBuffer output = gVar.getOutput();
                this.outputBuffers[i10] = output;
                if (output.hasRemaining()) {
                    i10++;
                }
            }
            if (byteBuffer.hasRemaining()) {
                return;
            } else {
                i10--;
            }
        }
    }

    @RequiresApi
    private void T(AudioTrack audioTrack) {
        if (this.offloadStreamEventCallbackV29 == null) {
            this.offloadStreamEventCallbackV29 = new n();
        }
        this.offloadStreamEventCallbackV29.a(audioTrack);
    }

    private void V() {
        this.submittedPcmBytes = 0L;
        this.submittedEncodedFrames = 0L;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.isWaitingForOffloadEndOfStreamHandled = false;
        this.framesPerEncodedSample = 0;
        this.mediaPositionParameters = new k(D(), I(), 0L, 0L);
        this.startMediaTimeUs = 0L;
        this.afterDrainParameters = null;
        this.mediaPositionParametersCheckpoints.clear();
        this.inputBuffer = null;
        this.inputBufferAccessUnitCount = 0;
        this.outputBuffer = null;
        this.stoppedAudioTrack = false;
        this.handledEndOfStream = false;
        this.drainingAudioProcessorIndex = -1;
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.trimmingAudioProcessor.i();
        B();
    }

    private void b0() {
        com.google.android.exoplayer2.audio.g[] gVarArr = this.configuration.availableAudioProcessors;
        ArrayList arrayList = new ArrayList();
        for (com.google.android.exoplayer2.audio.g gVar : gVarArr) {
            if (gVar.isActive()) {
                arrayList.add(gVar);
            } else {
                gVar.flush();
            }
        }
        int size = arrayList.size();
        this.activeAudioProcessors = (com.google.android.exoplayer2.audio.g[]) arrayList.toArray(new com.google.android.exoplayer2.audio.g[size]);
        this.outputBuffers = new ByteBuffer[size];
        B();
    }

    private boolean c0() {
        return (this.tunneling || !"audio/raw".equals(this.configuration.inputFormat.sampleMimeType) || d0(this.configuration.inputFormat.pcmEncoding)) ? false : true;
    }

    private boolean d0(int i10) {
        return this.enableFloatOutput && com.google.android.exoplayer2.util.o0.n0(i10);
    }

    private boolean e0(a2 a2Var, com.google.android.exoplayer2.audio.e eVar) {
        int iD;
        int iD2;
        int iH;
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 29 || this.offloadMode == 0 || (iD = com.google.android.exoplayer2.util.x.d((String) com.google.android.exoplayer2.util.a.e(a2Var.sampleMimeType), a2Var.codecs)) == 0 || (iD2 = com.google.android.exoplayer2.util.o0.D(a2Var.channelCount)) == 0 || (iH = H(C(a2Var.sampleRate, iD2, iD), eVar.b().audioAttributes)) == 0) {
            return false;
        }
        if (iH == 1) {
            return ((a2Var.encoderDelay != 0 || a2Var.encoderPadding != 0) && (this.offloadMode == 1)) ? false : true;
        }
        if (iH == 2) {
            return true;
        }
        throw new IllegalStateException();
    }

    @RequiresApi
    private int h0(AudioTrack audioTrack, ByteBuffer byteBuffer, int i10, long j6) {
        if (com.google.android.exoplayer2.util.o0.SDK_INT >= 26) {
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
        int iG0 = g0(audioTrack, byteBuffer, i10);
        if (iG0 < 0) {
            this.bytesUntilNextAvSync = 0;
            return iG0;
        }
        this.bytesUntilNextAvSync -= iG0;
        return iG0;
    }

    private long w(long j6) {
        while (!this.mediaPositionParametersCheckpoints.isEmpty() && j6 >= this.mediaPositionParametersCheckpoints.getFirst().audioTrackPositionUs) {
            this.mediaPositionParameters = this.mediaPositionParametersCheckpoints.remove();
        }
        k kVar = this.mediaPositionParameters;
        long j10 = j6 - kVar.audioTrackPositionUs;
        if (kVar.playbackParameters.equals(c3.DEFAULT)) {
            return this.mediaPositionParameters.mediaTimeUs + j10;
        }
        if (this.mediaPositionParametersCheckpoints.isEmpty()) {
            return this.mediaPositionParameters.mediaTimeUs + this.audioProcessorChain.getMediaDuration(j10);
        }
        k first = this.mediaPositionParametersCheckpoints.getFirst();
        return first.mediaTimeUs - com.google.android.exoplayer2.util.o0.U(first.audioTrackPositionUs - j6, this.mediaPositionParameters.playbackParameters.speed);
    }

    private long x(long j6) {
        return j6 + this.configuration.h(this.audioProcessorChain.getSkippedOutputFrameCount());
    }

    private AudioTrack y(h hVar) throws v.b {
        try {
            AudioTrack audioTrackA = hVar.a(this.tunneling, this.audioAttributes, this.audioSessionId);
            com.google.android.exoplayer2.s.a aVar = this.audioOffloadListener;
            if (aVar != null) {
                aVar.v(O(audioTrackA));
            }
            return audioTrackA;
        } catch (v.b e2) {
            v.c cVar = this.listener;
            if (cVar != null) {
                cVar.a(e2);
            }
            throw e2;
        }
    }

    private AudioTrack z() throws v.b {
        try {
            return y((h) com.google.android.exoplayer2.util.a.e(this.configuration));
        } catch (v.b e2) {
            h hVar = this.configuration;
            if (hVar.bufferSize > 1000000) {
                h hVarC = hVar.c(1000000);
                try {
                    AudioTrack audioTrackY = y(hVarC);
                    this.configuration = hVarC;
                    return audioTrackY;
                } catch (v.b e6) {
                    e2.addSuppressed(e6);
                    Q();
                    throw e2;
                }
            }
            Q();
            throw e2;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void b(c3 c3Var) {
        c3 c3Var2 = new c3(com.google.android.exoplayer2.util.o0.o(c3Var.speed, 0.1f, 8.0f), com.google.android.exoplayer2.util.o0.o(c3Var.pitch, 0.1f, 8.0f));
        if (!this.enableAudioTrackPlaybackParams || com.google.android.exoplayer2.util.o0.SDK_INT < 23) {
            W(c3Var2, I());
        } else {
            X(c3Var2);
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void c() {
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 25) {
            flush();
            return;
        }
        this.writeExceptionPendingExceptionHolder.a();
        this.initializationExceptionPendingExceptionHolder.a();
        if (N()) {
            V();
            if (this.audioTrackPositionTracker.i()) {
                this.audioTrack.pause();
            }
            this.audioTrack.flush();
            this.audioTrackPositionTracker.q();
            x xVar = this.audioTrackPositionTracker;
            AudioTrack audioTrack = this.audioTrack;
            h hVar = this.configuration;
            xVar.s(audioTrack, hVar.outputMode == 2, hVar.outputEncoding, hVar.outputPcmFrameSize, hVar.bufferSize);
            this.startMediaTimeUsNeedsInit = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void d() {
        com.google.android.exoplayer2.util.a.g(com.google.android.exoplayer2.util.o0.SDK_INT >= 21);
        com.google.android.exoplayer2.util.a.g(this.externalAudioSessionIdProvided);
        if (this.tunneling) {
            return;
        }
        this.tunneling = true;
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void disableTunneling() {
        if (this.tunneling) {
            this.tunneling = false;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public boolean e(ByteBuffer byteBuffer, long j6, int i10) throws Exception {
        ByteBuffer byteBuffer2 = this.inputBuffer;
        com.google.android.exoplayer2.util.a.a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.pendingConfiguration != null) {
            if (!A()) {
                return false;
            }
            if (this.pendingConfiguration.b(this.configuration)) {
                this.configuration = this.pendingConfiguration;
                this.pendingConfiguration = null;
                if (O(this.audioTrack) && this.offloadMode != 3) {
                    if (this.audioTrack.getPlayState() == 3) {
                        this.audioTrack.setOffloadEndOfStream();
                    }
                    AudioTrack audioTrack = this.audioTrack;
                    a2 a2Var = this.configuration.inputFormat;
                    audioTrack.setOffloadDelayPadding(a2Var.encoderDelay, a2Var.encoderPadding);
                    this.isWaitingForOffloadEndOfStreamHandled = true;
                }
            } else {
                R();
                if (hasPendingData()) {
                    return false;
                }
                flush();
            }
            v(j6);
        }
        if (!N()) {
            try {
                if (!L()) {
                    return false;
                }
            } catch (v.b e2) {
                if (e2.isRecoverable) {
                    throw e2;
                }
                this.initializationExceptionPendingExceptionHolder.b(e2);
                return false;
            }
        }
        this.initializationExceptionPendingExceptionHolder.a();
        if (this.startMediaTimeUsNeedsInit) {
            this.startMediaTimeUs = Math.max(0L, j6);
            this.startMediaTimeUsNeedsSync = false;
            this.startMediaTimeUsNeedsInit = false;
            if (this.enableAudioTrackPlaybackParams && com.google.android.exoplayer2.util.o0.SDK_INT >= 23) {
                X(this.audioTrackPlaybackParameters);
            }
            v(j6);
            if (this.playing) {
                play();
            }
        }
        if (!this.audioTrackPositionTracker.k(K())) {
            return false;
        }
        if (this.inputBuffer == null) {
            com.google.android.exoplayer2.util.a.a(byteBuffer.order() == ByteOrder.LITTLE_ENDIAN);
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            h hVar = this.configuration;
            if (hVar.outputMode != 0 && this.framesPerEncodedSample == 0) {
                int iF = F(hVar.outputEncoding, byteBuffer);
                this.framesPerEncodedSample = iF;
                if (iF == 0) {
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
            long jK = this.startMediaTimeUs + this.configuration.k(J() - this.trimmingAudioProcessor.h());
            if (!this.startMediaTimeUsNeedsSync && Math.abs(jK - j6) > 200000) {
                this.listener.a(new v.d(j6, jK));
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
                v.c cVar = this.listener;
                if (cVar != null && j10 != 0) {
                    cVar.onPositionDiscontinuity();
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
        S(j6);
        if (!this.inputBuffer.hasRemaining()) {
            this.inputBuffer = null;
            this.inputBufferAccessUnitCount = 0;
            return true;
        }
        if (!this.audioTrackPositionTracker.j(K())) {
            return false;
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Resetting stalled audio track");
        flush();
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public c3 getPlaybackParameters() {
        return this.enableAudioTrackPlaybackParams ? this.audioTrackPlaybackParameters : D();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void h(com.google.android.exoplayer2.audio.e eVar) {
        if (this.audioAttributes.equals(eVar)) {
            return;
        }
        this.audioAttributes = eVar;
        if (this.tunneling) {
            return;
        }
        flush();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public int k(a2 a2Var) {
        if (!"audio/raw".equals(a2Var.sampleMimeType)) {
            return ((this.offloadDisabledUntilNextConfiguration || !e0(a2Var, this.audioAttributes)) && !this.audioCapabilities.h(a2Var)) ? 0 : 2;
        }
        if (com.google.android.exoplayer2.util.o0.o0(a2Var.pcmEncoding)) {
            int i10 = a2Var.pcmEncoding;
            return (i10 == 2 || (this.enableFloatOutput && i10 == 4)) ? 2 : 1;
        }
        com.google.android.exoplayer2.util.t.i(TAG, "Invalid PCM encoding: " + a2Var.pcmEncoding);
        return 0;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void l(y yVar) {
        if (this.auxEffectInfo.equals(yVar)) {
            return;
        }
        int i10 = yVar.effectId;
        float f6 = yVar.sendLevel;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            if (this.auxEffectInfo.effectId != i10) {
                audioTrack.attachAuxEffect(i10);
            }
            if (i10 != 0) {
                this.audioTrack.setAuxEffectSendLevel(f6);
            }
        }
        this.auxEffectInfo = yVar;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void m(a2 a2Var, int i10, @Nullable int[] iArr) throws v.a {
        com.google.android.exoplayer2.audio.g[] gVarArr;
        int i11;
        int i12;
        int iIntValue;
        int i13;
        int iY;
        int iD;
        int i14;
        int[] iArr2;
        if ("audio/raw".equals(a2Var.sampleMimeType)) {
            com.google.android.exoplayer2.util.a.a(com.google.android.exoplayer2.util.o0.o0(a2Var.pcmEncoding));
            int iY2 = com.google.android.exoplayer2.util.o0.Y(a2Var.pcmEncoding, a2Var.channelCount);
            com.google.android.exoplayer2.audio.g[] gVarArr2 = d0(a2Var.pcmEncoding) ? this.toFloatPcmAvailableAudioProcessors : this.toIntPcmAvailableAudioProcessors;
            this.trimmingAudioProcessor.j(a2Var.encoderDelay, a2Var.encoderPadding);
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 21 && a2Var.channelCount == 8 && iArr == null) {
                iArr2 = new int[6];
                for (int i15 = 0; i15 < 6; i15++) {
                    iArr2[i15] = i15;
                }
            } else {
                iArr2 = iArr;
            }
            this.channelMappingAudioProcessor.h(iArr2);
            com.google.android.exoplayer2.audio.g.a aVar = new com.google.android.exoplayer2.audio.g.a(a2Var.sampleRate, a2Var.channelCount, a2Var.pcmEncoding);
            for (com.google.android.exoplayer2.audio.g gVar : gVarArr2) {
                try {
                    com.google.android.exoplayer2.audio.g.a aVarA = gVar.a(aVar);
                    if (gVar.isActive()) {
                        aVar = aVarA;
                    }
                } catch (com.google.android.exoplayer2.audio.g.b e2) {
                    throw new v.a(e2, a2Var);
                }
            }
            int i16 = aVar.encoding;
            int i17 = aVar.sampleRate;
            int iD2 = com.google.android.exoplayer2.util.o0.D(aVar.channelCount);
            gVarArr = gVarArr2;
            iY = com.google.android.exoplayer2.util.o0.Y(i16, aVar.channelCount);
            iD = i16;
            i11 = i17;
            iIntValue = iD2;
            i13 = iY2;
            i14 = 0;
        } else {
            gVarArr = new com.google.android.exoplayer2.audio.g[0];
            i11 = a2Var.sampleRate;
            if (e0(a2Var, this.audioAttributes)) {
                i12 = 1;
                iD = com.google.android.exoplayer2.util.x.d((String) com.google.android.exoplayer2.util.a.e(a2Var.sampleMimeType), a2Var.codecs);
                i13 = -1;
                iY = -1;
                iIntValue = com.google.android.exoplayer2.util.o0.D(a2Var.channelCount);
            } else {
                Pair<Integer, Integer> pairF = this.audioCapabilities.f(a2Var);
                if (pairF == null) {
                    throw new v.a("Unable to configure passthrough for: " + a2Var, a2Var);
                }
                int iIntValue2 = ((Integer) pairF.first).intValue();
                i12 = 2;
                iIntValue = ((Integer) pairF.second).intValue();
                i13 = -1;
                iY = -1;
                iD = iIntValue2;
            }
            i14 = i12;
        }
        if (iD == 0) {
            throw new v.a("Invalid output encoding (mode=" + i14 + ") for: " + a2Var, a2Var);
        }
        if (iIntValue == 0) {
            throw new v.a("Invalid output channel config (mode=" + i14 + ") for: " + a2Var, a2Var);
        }
        int iA = i10 != 0 ? i10 : this.audioTrackBufferSizeProvider.a(E(i11, iIntValue, iD), iD, i14, iY, i11, this.enableAudioTrackPlaybackParams ? 8.0d : 1.0d);
        this.offloadDisabledUntilNextConfiguration = false;
        h hVar = new h(a2Var, i13, i14, iY, i11, iIntValue, iD, iA, gVarArr);
        if (N()) {
            this.pendingConfiguration = hVar;
        } else {
            this.configuration = hVar;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void playToEndOfStream() throws v.e {
        if (!this.handledEndOfStream && N() && A()) {
            R();
            this.handledEndOfStream = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void setAudioSessionId(int i10) {
        if (this.audioSessionId != i10) {
            this.audioSessionId = i10;
            this.externalAudioSessionIdProvided = i10 != 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    @RequiresApi
    public void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo) {
        d dVar = audioDeviceInfo == null ? null : new d(audioDeviceInfo);
        this.preferredDevice = dVar;
        AudioTrack audioTrack = this.audioTrack;
        if (audioTrack != null) {
            b.a(audioTrack, dVar);
        }
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void setVolume(float f6) {
        if (this.volume != f6) {
            this.volume = f6;
            Y();
        }
    }

    private c3 D() {
        return G().playbackParameters;
    }

    private static int E(int i10, int i11, int i12) {
        boolean z6;
        int minBufferSize = AudioTrack.getMinBufferSize(i10, i11, i12);
        if (minBufferSize != -2) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.g(z6);
        return minBufferSize;
    }

    private static void U(final AudioTrack audioTrack, final com.google.android.exoplayer2.util.g gVar) {
        gVar.c();
        synchronized (releaseExecutorLock) {
            try {
                if (releaseExecutor == null) {
                    releaseExecutor = com.google.android.exoplayer2.util.o0.x0("ExoPlayer:AudioTrackReleaseThread");
                }
                pendingReleaseCount++;
                releaseExecutor.execute(new Runnable() { // from class: com.google.android.exoplayer2.audio.b0
                    @Override // java.lang.Runnable
                    public final void run() {
                        c0.P(audioTrack, gVar);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void W(c3 c3Var, boolean z6) {
        k kVarG = G();
        if (!c3Var.equals(kVarG.playbackParameters) || z6 != kVarG.skipSilence) {
            k kVar = new k(c3Var, z6, -9223372036854775807L, -9223372036854775807L);
            if (N()) {
                this.afterDrainParameters = kVar;
            } else {
                this.mediaPositionParameters = kVar;
            }
        }
    }

    @RequiresApi
    private void X(c3 c3Var) {
        if (N()) {
            try {
                this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(c3Var.speed).setPitch(c3Var.pitch).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e2) {
                com.google.android.exoplayer2.util.t.j(TAG, "Failed to set playback params", e2);
            }
            c3Var = new c3(this.audioTrack.getPlaybackParams().getSpeed(), this.audioTrack.getPlaybackParams().getPitch());
            this.audioTrackPositionTracker.t(c3Var.speed);
        }
        this.audioTrackPlaybackParameters = c3Var;
    }

    private void Y() {
        if (N()) {
            if (com.google.android.exoplayer2.util.o0.SDK_INT >= 21) {
                Z(this.audioTrack, this.volume);
            } else {
                a0(this.audioTrack, this.volume);
            }
        }
    }

    @RequiresApi
    private static void Z(AudioTrack audioTrack, float f6) {
        audioTrack.setVolume(f6);
    }

    private static void a0(AudioTrack audioTrack, float f6) {
        audioTrack.setStereoVolume(f6, f6);
    }

    private void f0(ByteBuffer byteBuffer, long j6) throws Exception {
        int iG0;
        boolean z6;
        v.c cVar;
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
            com.google.android.exoplayer2.util.a.a(z10);
        } else {
            this.outputBuffer = byteBuffer;
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 21) {
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
        if (com.google.android.exoplayer2.util.o0.SDK_INT < 21) {
            int iC = this.audioTrackPositionTracker.c(this.writtenPcmBytes);
            if (iC > 0) {
                iG0 = this.audioTrack.write(this.preV21OutputBuffer, this.preV21OutputBufferOffset, Math.min(iRemaining2, iC));
                if (iG0 > 0) {
                    this.preV21OutputBufferOffset += iG0;
                    byteBuffer.position(byteBuffer.position() + iG0);
                }
            } else {
                iG0 = 0;
            }
        } else if (this.tunneling) {
            if (j6 != -9223372036854775807L) {
                z6 = true;
            } else {
                z6 = false;
            }
            com.google.android.exoplayer2.util.a.g(z6);
            iG0 = h0(this.audioTrack, byteBuffer, iRemaining2, j6);
        } else {
            iG0 = g0(this.audioTrack, byteBuffer, iRemaining2);
        }
        this.lastFeedElapsedRealtimeMs = SystemClock.elapsedRealtime();
        if (iG0 < 0) {
            if (!M(iG0) || this.writtenEncodedFrames <= 0) {
                z11 = false;
            }
            v.e eVar = new v.e(iG0, this.configuration.inputFormat, z11);
            v.c cVar2 = this.listener;
            if (cVar2 != null) {
                cVar2.a(eVar);
            }
            if (!eVar.isRecoverable) {
                this.writeExceptionPendingExceptionHolder.b(eVar);
                return;
            }
            throw eVar;
        }
        this.writeExceptionPendingExceptionHolder.a();
        if (O(this.audioTrack)) {
            if (this.writtenEncodedFrames > 0) {
                this.isWaitingForOffloadEndOfStreamHandled = false;
            }
            if (this.playing && (cVar = this.listener) != null && iG0 < iRemaining2 && !this.isWaitingForOffloadEndOfStreamHandled) {
                cVar.c();
            }
        }
        int i10 = this.configuration.outputMode;
        if (i10 == 0) {
            this.writtenPcmBytes += (long) iG0;
        }
        if (iG0 == iRemaining2) {
            if (i10 != 0) {
                if (byteBuffer != this.inputBuffer) {
                    z11 = false;
                }
                com.google.android.exoplayer2.util.a.g(z11);
                this.writtenEncodedFrames += ((long) this.framesPerEncodedSample) * ((long) this.inputBufferAccessUnitCount);
            }
            this.outputBuffer = null;
        }
    }

    private void v(long j6) {
        c3 c3VarB;
        boolean zA;
        if (c0()) {
            c3VarB = this.audioProcessorChain.b(D());
        } else {
            c3VarB = c3.DEFAULT;
        }
        c3 c3Var = c3VarB;
        if (c0()) {
            zA = this.audioProcessorChain.a(I());
        } else {
            zA = false;
        }
        this.mediaPositionParametersCheckpoints.add(new k(c3Var, zA, Math.max(0L, j6), this.configuration.h(K())));
        b0();
        v.c cVar = this.listener;
        if (cVar != null) {
            cVar.onSkipSilenceEnabledChanged(zA);
        }
    }

    public boolean I() {
        return G().skipSilence;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public boolean a(a2 a2Var) {
        if (k(a2Var) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void flush() {
        if (N()) {
            V();
            if (this.audioTrackPositionTracker.i()) {
                this.audioTrack.pause();
            }
            if (O(this.audioTrack)) {
                ((n) com.google.android.exoplayer2.util.a.e(this.offloadStreamEventCallbackV29)).b(this.audioTrack);
            }
            if (com.google.android.exoplayer2.util.o0.SDK_INT < 21 && !this.externalAudioSessionIdProvided) {
                this.audioSessionId = 0;
            }
            h hVar = this.pendingConfiguration;
            if (hVar != null) {
                this.configuration = hVar;
                this.pendingConfiguration = null;
            }
            this.audioTrackPositionTracker.q();
            U(this.audioTrack, this.releasingConditionVariable);
            this.audioTrack = null;
        }
        this.writeExceptionPendingExceptionHolder.a();
        this.initializationExceptionPendingExceptionHolder.a();
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void g(boolean z6) {
        W(D(), z6);
    }

    @Override // com.google.android.exoplayer2.audio.v
    public long getCurrentPositionUs(boolean z6) {
        if (N() && !this.startMediaTimeUsNeedsInit) {
            return x(w(Math.min(this.audioTrackPositionTracker.d(z6), this.configuration.h(K()))));
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public boolean hasPendingData() {
        if (N() && this.audioTrackPositionTracker.h(K())) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public boolean isEnded() {
        if (N() && (!this.handledEndOfStream || hasPendingData())) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.audio.v
    public void reset() {
        flush();
        for (com.google.android.exoplayer2.audio.g gVar : this.toIntPcmAvailableAudioProcessors) {
            gVar.reset();
        }
        for (com.google.android.exoplayer2.audio.g gVar2 : this.toFloatPcmAvailableAudioProcessors) {
            gVar2.reset();
        }
        this.playing = false;
        this.offloadDisabledUntilNextConfiguration = false;
    }

    @Deprecated
    public c0(@Nullable com.google.android.exoplayer2.audio.f fVar, com.google.android.exoplayer2.audio.g[] gVarArr, boolean z6) {
        this(new g().g((com.google.android.exoplayer2.audio.f) com.google.common.base.i.a(fVar, com.google.android.exoplayer2.audio.f.DEFAULT_AUDIO_CAPABILITIES)).i(gVarArr).k(z6));
    }

    @Deprecated
    public c0(@Nullable com.google.android.exoplayer2.audio.f fVar, e eVar, boolean z6, boolean z10, int i10) {
        this(new g().g((com.google.android.exoplayer2.audio.f) com.google.common.base.i.a(fVar, com.google.android.exoplayer2.audio.f.DEFAULT_AUDIO_CAPABILITIES)).h(eVar).k(z6).j(z10).l(i10));
    }

    private c0(g gVar) {
        this.audioCapabilities = gVar.audioCapabilities;
        com.google.android.exoplayer2.audio.h hVar = gVar.audioProcessorChain;
        this.audioProcessorChain = hVar;
        int i10 = com.google.android.exoplayer2.util.o0.SDK_INT;
        this.enableFloatOutput = i10 >= 21 && gVar.enableFloatOutput;
        this.enableAudioTrackPlaybackParams = i10 >= 23 && gVar.enableAudioTrackPlaybackParams;
        this.offloadMode = i10 >= 29 ? gVar.offloadMode : 0;
        this.audioTrackBufferSizeProvider = gVar.audioTrackBufferSizeProvider;
        com.google.android.exoplayer2.util.g gVar2 = new com.google.android.exoplayer2.util.g(com.google.android.exoplayer2.util.d.DEFAULT);
        this.releasingConditionVariable = gVar2;
        gVar2.e();
        this.audioTrackPositionTracker = new x(new m());
        a0 a0Var = new a0();
        this.channelMappingAudioProcessor = a0Var;
        n0 n0Var = new n0();
        this.trimmingAudioProcessor = n0Var;
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new j0(), a0Var, n0Var);
        Collections.addAll(arrayList, hVar.getAudioProcessors());
        this.toIntPcmAvailableAudioProcessors = (com.google.android.exoplayer2.audio.g[]) arrayList.toArray(new com.google.android.exoplayer2.audio.g[0]);
        this.toFloatPcmAvailableAudioProcessors = new com.google.android.exoplayer2.audio.g[]{new f0()};
        this.volume = 1.0f;
        this.audioAttributes = com.google.android.exoplayer2.audio.e.DEFAULT;
        this.audioSessionId = 0;
        this.auxEffectInfo = new y(0, 0.0f);
        c3 c3Var = c3.DEFAULT;
        this.mediaPositionParameters = new k(c3Var, false, 0L, 0L);
        this.audioTrackPlaybackParameters = c3Var;
        this.drainingAudioProcessorIndex = -1;
        this.activeAudioProcessors = new com.google.android.exoplayer2.audio.g[0];
        this.outputBuffers = new ByteBuffer[0];
        this.mediaPositionParametersCheckpoints = new ArrayDeque<>();
        this.initializationExceptionPendingExceptionHolder = new l<>(100L);
        this.writeExceptionPendingExceptionHolder = new l<>(100L);
        this.audioOffloadListener = gVar.audioOffloadListener;
    }
}
