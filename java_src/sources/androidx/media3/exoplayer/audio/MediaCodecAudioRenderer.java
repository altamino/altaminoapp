package androidx.media3.exoplayer.audio;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.AuxEffectInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.MediaClock;
import androidx.media3.exoplayer.Renderer;
import androidx.media3.exoplayer.h2;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import java.nio.ByteBuffer;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public class MediaCodecAudioRenderer extends MediaCodecRenderer implements MediaClock {
    private static final String TAG = "MediaCodecAudioRenderer";
    private static final String VIVO_BITS_PER_SAMPLE_KEY = "v-bits-per-sample";
    private boolean allowFirstBufferPositionDiscontinuity;
    private boolean allowPositionDiscontinuity;
    private final AudioSink audioSink;
    private boolean audioSinkNeedsReset;
    private int codecMaxInputSize;
    private boolean codecNeedsDiscardChannelsWorkaround;
    private final Context context;
    private long currentPositionUs;

    @Nullable
    private Format decryptOnlyCodecFormat;
    private final AudioRendererEventListener.EventDispatcher eventDispatcher;
    private boolean experimentalKeepAudioTrackOnSeek;

    @Nullable
    private Format inputFormat;

    @Nullable
    private Renderer.WakeupListener wakeupListener;

    @RequiresApi
    private static final class Api23 {
        @DoNotInline
        public static void a(AudioSink audioSink, @Nullable Object obj) {
            audioSink.setPreferredDevice((AudioDeviceInfo) obj);
        }

        private Api23() {
        }
    }

    private final class AudioSinkListener implements AudioSink.Listener {
        private AudioSinkListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void a(Exception exc) {
            Log.d(MediaCodecAudioRenderer.TAG, "Audio sink error", exc);
            MediaCodecAudioRenderer.this.eventDispatcher.l(exc);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void b(long j6) {
            MediaCodecAudioRenderer.this.eventDispatcher.B(j6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void c() {
            if (MediaCodecAudioRenderer.this.wakeupListener != null) {
                MediaCodecAudioRenderer.this.wakeupListener.a();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void d() {
            if (MediaCodecAudioRenderer.this.wakeupListener != null) {
                MediaCodecAudioRenderer.this.wakeupListener.b();
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void e() {
            MediaCodecAudioRenderer.this.v();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            MediaCodecAudioRenderer.this.n1();
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean z6) {
            MediaCodecAudioRenderer.this.eventDispatcher.C(z6);
        }

        @Override // androidx.media3.exoplayer.audio.AudioSink.Listener
        public void onUnderrun(int i10, long j6, long j10) {
            MediaCodecAudioRenderer.this.eventDispatcher.D(i10, j6, j10);
        }
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, null, null);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float e0(float f, Format format, Format[] formatArr) {
        int iMax = -1;
        for (Format format2 : formatArr) {
            int i10 = format2.sampleRate;
            if (i10 != -1) {
                iMax = Math.max(iMax, i10);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f * iMax;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    @Nullable
    public MediaClock getMediaClock() {
        return this;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 2) {
            this.audioSink.setVolume(((Float) obj).floatValue());
        }
        if (i10 == 3) {
            this.audioSink.h((AudioAttributes) obj);
            return;
        }
        if (i10 == 6) {
            this.audioSink.l((AuxEffectInfo) obj);
            return;
        }
        switch (i10) {
            case 9:
                this.audioSink.g(((Boolean) obj).booleanValue());
                break;
            case 10:
                this.audioSink.setAudioSessionId(((Integer) obj).intValue());
                break;
            case 11:
                this.wakeupListener = (Renderer.WakeupListener) obj;
                break;
            case 12:
                if (Util.SDK_INT >= 23) {
                    Api23.a(this.audioSink, obj);
                }
                break;
            default:
                super.handleMessage(i10, obj);
                break;
        }
    }

    @CallSuper
    protected void n1() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        this.audioSinkNeedsReset = true;
        this.inputFormat = null;
        try {
            this.audioSink.flush();
            try {
                super.r();
            } finally {
                this.eventDispatcher.o(this.decoderCounters);
            }
        } catch (Throwable th) {
            try {
                super.r();
                throw th;
            } finally {
                this.eventDispatcher.o(this.decoderCounters);
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void w() {
        try {
            super.w();
        } finally {
            if (this.audioSinkNeedsReset) {
                this.audioSinkNeedsReset = false;
                this.audioSink.reset();
            }
        }
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener) {
        this(context, mediaCodecSelector, handler, audioRendererEventListener, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES, new AudioProcessor[0]);
    }

    private static boolean h1(String str) {
        if (Util.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(Util.MANUFACTURER)) {
            String str2 = Util.DEVICE;
            if (str2.startsWith("zeroflte") || str2.startsWith("herolte") || str2.startsWith("heroqlte")) {
                return true;
            }
        }
        return false;
    }

    private static boolean i1() {
        if (Util.SDK_INT == 23) {
            String str = Util.MODEL;
            if ("ZTE B2017G".equals(str) || "AXON 7 mini".equals(str)) {
                return true;
            }
        }
        return false;
    }

    private int j1(MediaCodecInfo mediaCodecInfo, Format format) {
        int i10;
        if (!"OMX.google.raw.decoder".equals(mediaCodecInfo.name) || (i10 = Util.SDK_INT) >= 24 || (i10 == 23 && Util.F0(this.context))) {
            return format.maxInputSize;
        }
        return -1;
    }

    private static List<MediaCodecInfo> l1(MediaCodecSelector mediaCodecSelector, Format format, boolean z6, AudioSink audioSink) throws MediaCodecUtil.DecoderQueryException {
        MediaCodecInfo mediaCodecInfoX;
        if (format.sampleMimeType == null) {
            return com.google.common.collect.a0.x();
        }
        return (!audioSink.a(format) || (mediaCodecInfoX = MediaCodecUtil.x()) == null) ? MediaCodecUtil.v(mediaCodecSelector, format, z6, false) : com.google.common.collect.a0.y(mediaCodecInfoX);
    }

    private void o1() {
        long currentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void A0(long j6) {
        this.audioSink.f(j6);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void D0(DecoderInputBuffer decoderInputBuffer) {
        if (!this.allowFirstBufferPositionDiscontinuity || decoderInputBuffer.f()) {
            return;
        }
        if (Math.abs(decoderInputBuffer.timeUs - this.currentPositionUs) > 500000) {
            this.currentPositionUs = decoderInputBuffer.timeUs;
        }
        this.allowFirstBufferPositionDiscontinuity = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void L0() throws ExoPlaybackException {
        try {
            this.audioSink.playToEndOfStream();
        } catch (AudioSink.WriteException e) {
            throw k(e, e.format, e.isRecoverable, 5002);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean Y0(Format format) {
        return this.audioSink.a(format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int Z0(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z6;
        if (!MimeTypes.o(format.sampleMimeType)) {
            return h2.c(0);
        }
        int i10 = Util.SDK_INT >= 21 ? 32 : 0;
        boolean z10 = true;
        boolean z11 = format.cryptoType != 0;
        boolean zA1 = MediaCodecRenderer.a1(format);
        int i11 = 8;
        if (zA1 && this.audioSink.a(format) && (!z11 || MediaCodecUtil.x() != null)) {
            return h2.d(4, 8, i10);
        }
        if ("audio/raw".equals(format.sampleMimeType) && !this.audioSink.a(format)) {
            return h2.c(1);
        }
        if (!this.audioSink.a(Util.g0(2, format.channelCount, format.sampleRate))) {
            return h2.c(1);
        }
        List<MediaCodecInfo> listL1 = l1(mediaCodecSelector, format, false, this.audioSink);
        if (listL1.isEmpty()) {
            return h2.c(1);
        }
        if (!zA1) {
            return h2.c(2);
        }
        MediaCodecInfo mediaCodecInfo = listL1.get(0);
        boolean zO = mediaCodecInfo.o(format);
        if (!zO) {
            int i12 = 1;
            while (true) {
                if (i12 >= listL1.size()) {
                    z6 = true;
                    z10 = zO;
                    break;
                }
                MediaCodecInfo mediaCodecInfo2 = listL1.get(i12);
                if (mediaCodecInfo2.o(format)) {
                    z6 = false;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
                i12++;
            }
        } else {
            z6 = true;
            z10 = zO;
            break;
        }
        int i13 = z10 ? 4 : 3;
        if (z10 && mediaCodecInfo.r(format)) {
            i11 = 16;
        }
        return h2.e(i13, i11, i10, mediaCodecInfo.hardwareAccelerated ? 64 : 0, z6 ? 128 : 0);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public void b(PlaybackParameters playbackParameters) {
        this.audioSink.b(playbackParameters);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> g0(MediaCodecSelector mediaCodecSelector, Format format, boolean z6) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.w(l1(mediaCodecSelector, format, z6, this.audioSink), format);
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public PlaybackParameters getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData() || super.isReady();
    }

    @SuppressLint({"InlinedApi"})
    protected MediaFormat m1(Format format, String str, int i10, float f) {
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        MediaFormatUtil.l(mediaFormat, format.initializationData);
        MediaFormatUtil.k(mediaFormat, "max-input-size", i10);
        int i11 = Util.SDK_INT;
        if (i11 >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f && !i1()) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (i11 <= 28 && "audio/ac4".equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (i11 >= 24 && this.audioSink.k(Util.g0(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        if (i11 >= 32) {
            mediaFormat.setInteger("max-output-channel-count", 99);
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void u() {
        this.audioSink.release();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void v0(Exception exc) {
        Log.d(TAG, "Audio codec error", exc);
        this.eventDispatcher.k(exc);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void w0(String str, MediaCodecAdapter.Configuration configuration, long j6, long j10) {
        this.eventDispatcher.m(str, j6, j10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void x0(String str) {
        this.eventDispatcher.n(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @Nullable
    protected DecoderReuseEvaluation y0(FormatHolder formatHolder) throws ExoPlaybackException {
        this.inputFormat = (Format) Assertions.e(formatHolder.format);
        DecoderReuseEvaluation decoderReuseEvaluationY0 = super.y0(formatHolder);
        this.eventDispatcher.q(this.inputFormat, decoderReuseEvaluationY0);
        return decoderReuseEvaluationY0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void z0(Format format, @Nullable MediaFormat mediaFormat) throws ExoPlaybackException {
        int iF0;
        int i10;
        Format format2 = this.decryptOnlyCodecFormat;
        int[] iArr = null;
        if (format2 != null) {
            format = format2;
        } else if (b0() != null) {
            if ("audio/raw".equals(format.sampleMimeType)) {
                iF0 = format.pcmEncoding;
            } else if (Util.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) {
                iF0 = mediaFormat.containsKey(VIVO_BITS_PER_SAMPLE_KEY) ? Util.f0(mediaFormat.getInteger(VIVO_BITS_PER_SAMPLE_KEY)) : 2;
            } else {
                iF0 = mediaFormat.getInteger("pcm-encoding");
            }
            Format formatG = new Format.Builder().g0("audio/raw").a0(iF0).P(format.encoderDelay).Q(format.encoderPadding).J(mediaFormat.getInteger("channel-count")).h0(mediaFormat.getInteger("sample-rate")).G();
            if (this.codecNeedsDiscardChannelsWorkaround && formatG.channelCount == 6 && (i10 = format.channelCount) < 6) {
                iArr = new int[i10];
                for (int i11 = 0; i11 < format.channelCount; i11++) {
                    iArr[i11] = i11;
                }
            }
            format = formatG;
        }
        try {
            this.audioSink.j(format, 0, iArr);
        } catch (AudioSink.ConfigurationException e) {
            throw j(e, e.format, 5001);
        }
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioCapabilities audioCapabilities, AudioProcessor... audioProcessorArr) {
        this(context, mediaCodecSelector, handler, audioRendererEventListener, new DefaultAudioSink.Builder().h((AudioCapabilities) com.google.common.base.i.a(audioCapabilities, AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES)).j(audioProcessorArr).g());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void C0() {
        super.C0();
        this.audioSink.handleDiscontinuity();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation F(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        int i10;
        DecoderReuseEvaluation decoderReuseEvaluationF = mediaCodecInfo.f(format, format2);
        int i11 = decoderReuseEvaluationF.discardReasons;
        if (o0(format2)) {
            i11 |= 32768;
        }
        if (j1(mediaCodecInfo, format2) > this.codecMaxInputSize) {
            i11 |= 64;
        }
        int i12 = i11;
        String str = mediaCodecInfo.name;
        if (i12 != 0) {
            i10 = 0;
        } else {
            i10 = decoderReuseEvaluationF.result;
        }
        return new DecoderReuseEvaluation(str, format, format2, i10, i12);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean G0(long j6, long j10, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, Format format) throws ExoPlaybackException {
        Assertions.e(byteBuffer);
        if (this.decryptOnlyCodecFormat != null && (i11 & 2) != 0) {
            ((MediaCodecAdapter) Assertions.e(mediaCodecAdapter)).e(i10, false);
            return true;
        }
        if (z6) {
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.e(i10, false);
            }
            this.decoderCounters.skippedOutputBufferCount += i12;
            this.audioSink.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.audioSink.e(byteBuffer, j11, i12)) {
                return false;
            }
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.e(i10, false);
            }
            this.decoderCounters.renderedOutputBufferCount += i12;
            return true;
        } catch (AudioSink.InitializationException e) {
            throw k(e, this.inputFormat, e.isRecoverable, 5001);
        } catch (AudioSink.WriteException e2) {
            throw k(e2, format, e2.isRecoverable, 5002);
        }
    }

    @Override // androidx.media3.exoplayer.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            o1();
        }
        return this.currentPositionUs;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecAdapter.Configuration h0(MediaCodecInfo mediaCodecInfo, Format format, @Nullable MediaCrypto mediaCrypto, float f) {
        Format format2;
        this.codecMaxInputSize = k1(mediaCodecInfo, format, p());
        this.codecNeedsDiscardChannelsWorkaround = h1(mediaCodecInfo.name);
        MediaFormat mediaFormatM1 = m1(format, mediaCodecInfo.codecMimeType, this.codecMaxInputSize, f);
        if ("audio/raw".equals(mediaCodecInfo.mimeType) && !"audio/raw".equals(format.sampleMimeType)) {
            format2 = format;
        } else {
            format2 = null;
        }
        this.decryptOnlyCodecFormat = format2;
        return MediaCodecAdapter.Configuration.a(mediaCodecInfo, mediaFormatM1, format, mediaCrypto);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        if (super.isEnded() && this.audioSink.isEnded()) {
            return true;
        }
        return false;
    }

    protected int k1(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int iJ1 = j1(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            return iJ1;
        }
        for (Format format2 : formatArr) {
            if (mediaCodecInfo.f(format, format2).result != 0) {
                iJ1 = Math.max(iJ1, j1(mediaCodecInfo, format2));
            }
        }
        return iJ1;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
        super.s(z6, z10);
        this.eventDispatcher.p(this.decoderCounters);
        if (l().tunneling) {
            this.audioSink.d();
        } else {
            this.audioSink.disableTunneling();
        }
        this.audioSink.m(o());
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) throws ExoPlaybackException {
        super.t(j6, z6);
        if (this.experimentalKeepAudioTrackOnSeek) {
            this.audioSink.c();
        } else {
            this.audioSink.flush();
        }
        this.currentPositionUs = j6;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void x() {
        super.x();
        this.audioSink.play();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void y() {
        o1();
        this.audioSink.pause();
        super.y();
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, false, handler, audioRendererEventListener, audioSink);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecSelector mediaCodecSelector, boolean z6, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, z6, handler, audioRendererEventListener, audioSink);
    }

    public MediaCodecAudioRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, boolean z6, @Nullable Handler handler, @Nullable AudioRendererEventListener audioRendererEventListener, AudioSink audioSink) {
        super(1, factory, mediaCodecSelector, z6, 44100.0f);
        this.context = context.getApplicationContext();
        this.audioSink = audioSink;
        this.eventDispatcher = new AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        audioSink.i(new AudioSinkListener());
    }
}
