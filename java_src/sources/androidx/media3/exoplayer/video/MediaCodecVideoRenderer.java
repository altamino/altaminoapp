package androidx.media3.exoplayer.video;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.CallSuper;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DebugViewProvider;
import androidx.media3.common.Effect;
import androidx.media3.common.Format;
import androidx.media3.common.FrameInfo;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.SurfaceInfo;
import androidx.media3.common.VideoFrameProcessor;
import androidx.media3.common.VideoSize;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.MediaFormatUtil;
import androidx.media3.common.util.Size;
import androidx.media3.common.util.TraceUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.FormatHolder;
import androidx.media3.exoplayer.audio.a0;
import androidx.media3.exoplayer.h2;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.mediacodec.MediaCodecInfo;
import androidx.media3.exoplayer.mediacodec.MediaCodecRenderer;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.mediacodec.MediaCodecUtil;
import androidx.work.WorkRequest;
import com.google.android.gms.common.Scopes;
import com.narvii.util.ws.WsMessage;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public class MediaCodecVideoRenderer extends MediaCodecRenderer {
    private static final int HEVC_MAX_INPUT_SIZE_THRESHOLD = 2097152;
    private static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    private static final String KEY_CROP_BOTTOM = "crop-bottom";
    private static final String KEY_CROP_LEFT = "crop-left";
    private static final String KEY_CROP_RIGHT = "crop-right";
    private static final String KEY_CROP_TOP = "crop-top";
    private static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    private static final String TAG = "MediaCodecVideoRenderer";
    private static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    private static boolean deviceNeedsSetOutputSurfaceWorkaround;
    private static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    private final long allowedJoiningTimeMs;
    private int buffersInCodecCount;
    private boolean codecHandlesHdr10PlusOutOfBandMetadata;
    private CodecMaxValues codecMaxValues;
    private boolean codecNeedsSetOutputSurfaceWorkaround;
    private int consecutiveDroppedFrameCount;
    private final Context context;
    private VideoSize decodedVideoSize;
    private final boolean deviceNeedsNoPostProcessWorkaround;

    @Nullable
    private Surface displaySurface;
    private long droppedFrameAccumulationStartTimeMs;
    private int droppedFrames;
    private final VideoRendererEventListener.EventDispatcher eventDispatcher;

    @Nullable
    private VideoFrameMetadataListener frameMetadataListener;
    private final VideoFrameReleaseHelper frameReleaseHelper;
    private boolean haveReportedFirstFrameRenderedForCurrentSurface;
    private long initialPositionUs;
    private long joiningDeadlineMs;
    private long lastBufferPresentationTimeUs;
    private long lastFrameReleaseTimeNs;
    private long lastRenderRealtimeUs;
    private final int maxDroppedFramesToNotify;
    private boolean mayRenderFirstFrameAfterEnableIfNotStarted;

    @Nullable
    private PlaceholderSurface placeholderSurface;
    private boolean renderedFirstFrameAfterEnable;
    private boolean renderedFirstFrameAfterReset;

    @Nullable
    private VideoSize reportedVideoSize;
    private int scalingMode;
    private long totalVideoFrameProcessingOffsetUs;
    private boolean tunneling;
    private int tunnelingAudioSessionId;

    @Nullable
    OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    private int videoFrameProcessingOffsetCount;
    private final VideoFrameProcessorManager videoFrameProcessorManager;

    @RequiresApi
    private static final class Api26 {
        @DoNotInline
        public static boolean a(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            Display display = displayManager != null ? displayManager.getDisplay(0) : null;
            if (display == null || !display.isHdr()) {
                return false;
            }
            for (int i10 : display.getHdrCapabilities().getSupportedHdrTypes()) {
                if (i10 == 1) {
                    return true;
                }
            }
            return false;
        }

        private Api26() {
        }
    }

    @RequiresApi
    private final class OnFrameRenderedListenerV23 implements MediaCodecAdapter.OnFrameRenderedListener, Handler.Callback {
        private static final int HANDLE_FRAME_RENDERED = 0;
        private final Handler handler;

        public OnFrameRenderedListenerV23(MediaCodecAdapter mediaCodecAdapter) {
            Handler handlerX = Util.x(this);
            this.handler = handlerX;
            mediaCodecAdapter.l(this, handlerX);
        }

        private void b(long j6) {
            MediaCodecVideoRenderer mediaCodecVideoRenderer = MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener || mediaCodecVideoRenderer.b0() == null) {
                return;
            }
            if (j6 == Long.MAX_VALUE) {
                MediaCodecVideoRenderer.this.S1();
                return;
            }
            try {
                MediaCodecVideoRenderer.this.R1(j6);
            } catch (ExoPlaybackException e) {
                MediaCodecVideoRenderer.this.T0(e);
            }
        }

        @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void a(MediaCodecAdapter mediaCodecAdapter, long j6, long j10) {
            if (Util.SDK_INT >= 30) {
                b(j6);
            } else {
                this.handler.sendMessageAtFrontOfQueue(Message.obtain(this.handler, 0, (int) (j6 >> 32), (int) j6));
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 0) {
                return false;
            }
            b(Util.n1(message.arg1, message.arg2));
            return true;
        }
    }

    private static final class VideoFrameProcessorManager {
        private static final long EARLY_THRESHOLD_US = 50000;
        private Pair<Long, Format> currentFrameFormat;

        @Nullable
        private Pair<Surface, Size> currentSurfaceAndSize;
        private final VideoFrameReleaseHelper frameReleaseHelper;
        private Handler handler;

        @Nullable
        private Format inputFormat;
        private boolean pendingOutputSizeChange;
        private boolean processedLastFrame;
        private boolean registeredLastFrame;
        private boolean releasedLastFrame;
        private final MediaCodecVideoRenderer renderer;

        @Nullable
        private CopyOnWriteArrayList<Effect> videoEffects;

        @Nullable
        private VideoFrameProcessor videoFrameProcessor;
        private final ArrayDeque<Long> processedFramesTimestampsUs = new ArrayDeque<>();
        private final ArrayDeque<Pair<Long, Format>> pendingFrameFormats = new ArrayDeque<>();
        private int videoFrameProcessorMaxPendingFrameCount = -1;
        private boolean canEnableFrameProcessing = true;
        private long lastCodecBufferPresentationTimestampUs = -9223372036854775807L;
        private VideoSize processedFrameSize = VideoSize.UNKNOWN;
        private long pendingOutputSizeChangeNotificationTimeUs = -9223372036854775807L;
        private long initialStreamOffsetUs = -9223372036854775807L;

        private static final class VideoFrameProcessorAccessor {
            private static Method buildScaleAndRotateTransformationMethod;
            private static Method buildVideoFrameProcessorFactoryMethod;
            private static Constructor<?> scaleAndRotateTransformationBuilderConstructor;
            private static Method setRotationMethod;
            private static Constructor<?> videoFrameProcessorFactoryBuilderConstructor;

            private static void c() throws Exception {
                if (scaleAndRotateTransformationBuilderConstructor == null || setRotationMethod == null || buildScaleAndRotateTransformationMethod == null) {
                    Class<?> cls = Class.forName("androidx.media3.effect.ScaleAndRotateTransformation$Builder");
                    scaleAndRotateTransformationBuilderConstructor = cls.getConstructor(new Class[0]);
                    setRotationMethod = cls.getMethod("setRotationDegrees", Float.TYPE);
                    buildScaleAndRotateTransformationMethod = cls.getMethod("build", new Class[0]);
                }
                if (videoFrameProcessorFactoryBuilderConstructor == null || buildVideoFrameProcessorFactoryMethod == null) {
                    Class<?> cls2 = Class.forName("androidx.media3.effect.DefaultVideoFrameProcessor$Factory$Builder");
                    videoFrameProcessorFactoryBuilderConstructor = cls2.getConstructor(new Class[0]);
                    buildVideoFrameProcessorFactoryMethod = cls2.getMethod("build", new Class[0]);
                }
            }

            private VideoFrameProcessorAccessor() {
            }

            public static Effect a(float f) throws Exception {
                c();
                Object objNewInstance = scaleAndRotateTransformationBuilderConstructor.newInstance(new Object[0]);
                setRotationMethod.invoke(objNewInstance, Float.valueOf(f));
                return (Effect) Assertions.e(buildScaleAndRotateTransformationMethod.invoke(objNewInstance, new Object[0]));
            }

            public static VideoFrameProcessor.Factory b() throws Exception {
                c();
                return (VideoFrameProcessor.Factory) Assertions.e(buildVideoFrameProcessorFactoryMethod.invoke(videoFrameProcessorFactoryBuilderConstructor.newInstance(new Object[0]), new Object[0]));
            }
        }

        public boolean f() {
            return this.videoFrameProcessor != null;
        }

        public boolean m() {
            return this.releasedLastFrame;
        }

        private void k(long j6, boolean z6) {
            Assertions.i(this.videoFrameProcessor);
            this.videoFrameProcessor.e(j6);
            this.processedFramesTimestampsUs.remove();
            this.renderer.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
            if (j6 != -2) {
                this.renderer.L1();
            }
            if (z6) {
                this.releasedLastFrame = true;
            }
        }

        public MediaFormat a(MediaFormat mediaFormat) {
            if (Util.SDK_INT >= 29 && this.renderer.context.getApplicationContext().getApplicationInfo().targetSdkVersion >= 29) {
                mediaFormat.setInteger("allow-frame-drop", 0);
            }
            return mediaFormat;
        }

        public void b() {
            ((VideoFrameProcessor) Assertions.e(this.videoFrameProcessor)).d(null);
            this.currentSurfaceAndSize = null;
        }

        public void c() {
            Assertions.i(this.videoFrameProcessor);
            this.videoFrameProcessor.flush();
            this.processedFramesTimestampsUs.clear();
            this.handler.removeCallbacksAndMessages(null);
            if (this.registeredLastFrame) {
                this.registeredLastFrame = false;
                this.processedLastFrame = false;
                this.releasedLastFrame = false;
            }
        }

        public long d(long j6, long j10) {
            Assertions.g(this.initialStreamOffsetUs != -9223372036854775807L);
            return (j6 + j10) - this.initialStreamOffsetUs;
        }

        public Surface e() {
            return ((VideoFrameProcessor) Assertions.e(this.videoFrameProcessor)).b();
        }

        public boolean g() {
            Pair<Surface, Size> pair = this.currentSurfaceAndSize;
            return pair == null || !((Size) pair.second).equals(Size.UNKNOWN);
        }

        public boolean i(Format format, long j6, boolean z6) {
            Assertions.i(this.videoFrameProcessor);
            Assertions.g(this.videoFrameProcessorMaxPendingFrameCount != -1);
            if (this.videoFrameProcessor.g() >= this.videoFrameProcessorMaxPendingFrameCount) {
                return false;
            }
            this.videoFrameProcessor.f();
            Pair<Long, Format> pair = this.currentFrameFormat;
            if (pair == null) {
                this.currentFrameFormat = Pair.create(Long.valueOf(j6), format);
            } else if (!Util.c(format, pair.second)) {
                this.pendingFrameFormats.add(Pair.create(Long.valueOf(j6), format));
            }
            if (z6) {
                this.registeredLastFrame = true;
                this.lastCodecBufferPresentationTimestampUs = j6;
            }
            return true;
        }

        public void j(String str) {
            this.videoFrameProcessorMaxPendingFrameCount = Util.c0(this.renderer.context, str, false);
        }

        public void l(long j6, long j10) {
            Assertions.i(this.videoFrameProcessor);
            while (!this.processedFramesTimestampsUs.isEmpty()) {
                boolean z6 = false;
                boolean z10 = this.renderer.getState() == 2;
                long jLongValue = ((Long) Assertions.e(this.processedFramesTimestampsUs.peek())).longValue();
                long j11 = jLongValue + this.initialStreamOffsetUs;
                long jQ1 = this.renderer.q1(j6, j10, SystemClock.elapsedRealtime() * 1000, j11, z10);
                if (this.processedLastFrame && this.processedFramesTimestampsUs.size() == 1) {
                    z6 = true;
                }
                if (this.renderer.d2(j6, jQ1)) {
                    k(-1L, z6);
                    return;
                }
                if (!z10 || j6 == this.renderer.initialPositionUs || jQ1 > EARLY_THRESHOLD_US) {
                    return;
                }
                this.frameReleaseHelper.h(j11);
                long jB = this.frameReleaseHelper.b(System.nanoTime() + (jQ1 * 1000));
                if (this.renderer.c2((jB - System.nanoTime()) / 1000, j10, z6)) {
                    k(-2L, z6);
                } else {
                    if (!this.pendingFrameFormats.isEmpty() && j11 > ((Long) this.pendingFrameFormats.peek().first).longValue()) {
                        this.currentFrameFormat = this.pendingFrameFormats.remove();
                    }
                    this.renderer.Q1(jLongValue, jB, (Format) this.currentFrameFormat.second);
                    if (this.pendingOutputSizeChangeNotificationTimeUs >= j11) {
                        this.pendingOutputSizeChangeNotificationTimeUs = -9223372036854775807L;
                        this.renderer.N1(this.processedFrameSize);
                    }
                    k(jB, z6);
                }
            }
        }

        public void n() {
            ((VideoFrameProcessor) Assertions.e(this.videoFrameProcessor)).release();
            this.videoFrameProcessor = null;
            Handler handler = this.handler;
            if (handler != null) {
                handler.removeCallbacksAndMessages(null);
            }
            CopyOnWriteArrayList<Effect> copyOnWriteArrayList = this.videoEffects;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.clear();
            }
            this.processedFramesTimestampsUs.clear();
            this.canEnableFrameProcessing = true;
        }

        public void o(Format format) {
            ((VideoFrameProcessor) Assertions.e(this.videoFrameProcessor)).a(new FrameInfo.Builder(format.width, format.height).b(format.pixelWidthHeightRatio).a());
            this.inputFormat = format;
            if (this.registeredLastFrame) {
                this.registeredLastFrame = false;
                this.processedLastFrame = false;
                this.releasedLastFrame = false;
            }
        }

        public void p(Surface surface, Size size) {
            Pair<Surface, Size> pair = this.currentSurfaceAndSize;
            if (pair != null && ((Surface) pair.first).equals(surface) && ((Size) this.currentSurfaceAndSize.second).equals(size)) {
                return;
            }
            this.currentSurfaceAndSize = Pair.create(surface, size);
            if (f()) {
                ((VideoFrameProcessor) Assertions.e(this.videoFrameProcessor)).d(new SurfaceInfo(surface, size.b(), size.a()));
            }
        }

        public void q(List<Effect> list) {
            CopyOnWriteArrayList<Effect> copyOnWriteArrayList = this.videoEffects;
            if (copyOnWriteArrayList == null) {
                this.videoEffects = new CopyOnWriteArrayList<>(list);
            } else {
                copyOnWriteArrayList.clear();
                this.videoEffects.addAll(list);
            }
        }

        public VideoFrameProcessorManager(VideoFrameReleaseHelper videoFrameReleaseHelper, MediaCodecVideoRenderer mediaCodecVideoRenderer) {
            this.frameReleaseHelper = videoFrameReleaseHelper;
            this.renderer = mediaCodecVideoRenderer;
        }

        public boolean h(final Format format, long j6) throws ExoPlaybackException {
            int i10;
            Assertions.g(!f());
            if (!this.canEnableFrameProcessing) {
                return false;
            }
            if (this.videoEffects == null) {
                this.canEnableFrameProcessing = false;
                return false;
            }
            this.handler = Util.w();
            Pair<ColorInfo, ColorInfo> pairZ1 = this.renderer.z1(format.colorInfo);
            try {
                if (!MediaCodecVideoRenderer.t1() && (i10 = format.rotationDegrees) != 0) {
                    this.videoEffects.add(0, VideoFrameProcessorAccessor.a(i10));
                }
                VideoFrameProcessor.Factory factoryB = VideoFrameProcessorAccessor.b();
                Context context = this.renderer.context;
                List<Effect> list = (List) Assertions.e(this.videoEffects);
                DebugViewProvider debugViewProvider = DebugViewProvider.NONE;
                ColorInfo colorInfo = (ColorInfo) pairZ1.first;
                ColorInfo colorInfo2 = (ColorInfo) pairZ1.second;
                Handler handler = this.handler;
                Objects.requireNonNull(handler);
                VideoFrameProcessor videoFrameProcessorA = factoryB.a(context, list, debugViewProvider, colorInfo, colorInfo2, false, new a0(handler), new VideoFrameProcessor.Listener() { // from class: androidx.media3.exoplayer.video.MediaCodecVideoRenderer.VideoFrameProcessorManager.1
                });
                this.videoFrameProcessor = videoFrameProcessorA;
                videoFrameProcessorA.c(1);
                this.initialStreamOffsetUs = j6;
                Pair<Surface, Size> pair = this.currentSurfaceAndSize;
                if (pair != null) {
                    Size size = (Size) pair.second;
                    this.videoFrameProcessor.d(new SurfaceInfo((Surface) pair.first, size.b(), size.a()));
                }
                o(format);
                return true;
            } catch (Exception e) {
                throw this.renderer.j(e, format, 7000);
            }
        }
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, 0L);
    }

    private static boolean H1(long j6) {
        return j6 < -30000;
    }

    private static boolean I1(long j6) {
        return j6 < -500000;
    }

    private void r1() {
        MediaCodecAdapter mediaCodecAdapterB0;
        this.renderedFirstFrameAfterReset = false;
        if (Util.SDK_INT < 23 || !this.tunneling || (mediaCodecAdapterB0 = b0()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23(mediaCodecAdapterB0);
    }

    private void s1() {
        this.reportedVideoSize = null;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean G0(long j6, long j10, @Nullable MediaCodecAdapter mediaCodecAdapter, @Nullable ByteBuffer byteBuffer, int i10, int i11, int i12, long j11, boolean z6, boolean z10, Format format) throws ExoPlaybackException {
        Assertions.e(mediaCodecAdapter);
        if (this.initialPositionUs == -9223372036854775807L) {
            this.initialPositionUs = j6;
        }
        if (j11 != this.lastBufferPresentationTimeUs) {
            if (!this.videoFrameProcessorManager.f()) {
                this.frameReleaseHelper.h(j11);
            }
            this.lastBufferPresentationTimeUs = j11;
        }
        long jI0 = j11 - i0();
        if (z6 && !z10) {
            g2(mediaCodecAdapter, i10, jI0);
            return true;
        }
        boolean z11 = false;
        boolean z12 = getState() == 2;
        long jQ1 = q1(j6, j10, SystemClock.elapsedRealtime() * 1000, j11, z12);
        if (this.displaySurface == this.placeholderSurface) {
            if (!H1(jQ1)) {
                return false;
            }
            g2(mediaCodecAdapter, i10, jI0);
            i2(jQ1);
            return true;
        }
        if (d2(j6, jQ1)) {
            if (!this.videoFrameProcessorManager.f()) {
                z11 = true;
            } else if (!this.videoFrameProcessorManager.i(format, jI0, z10)) {
                return false;
            }
            V1(mediaCodecAdapter, format, i10, jI0, z11);
            i2(jQ1);
            return true;
        }
        if (z12 && j6 != this.initialPositionUs) {
            long jNanoTime = System.nanoTime();
            long jB = this.frameReleaseHelper.b((jQ1 * 1000) + jNanoTime);
            if (!this.videoFrameProcessorManager.f()) {
                jQ1 = (jB - jNanoTime) / 1000;
            }
            boolean z13 = this.joiningDeadlineMs != -9223372036854775807L;
            if (b2(jQ1, j10, z10) && J1(j6, z13)) {
                return false;
            }
            if (c2(jQ1, j10, z10)) {
                if (z13) {
                    g2(mediaCodecAdapter, i10, jI0);
                } else {
                    x1(mediaCodecAdapter, i10, jI0);
                }
                i2(jQ1);
                return true;
            }
            if (this.videoFrameProcessorManager.f()) {
                this.videoFrameProcessorManager.l(j6, j10);
                if (!this.videoFrameProcessorManager.i(format, jI0, z10)) {
                    return false;
                }
                V1(mediaCodecAdapter, format, i10, jI0, false);
                return true;
            }
            if (Util.SDK_INT >= 21) {
                if (jQ1 < 50000) {
                    if (jB == this.lastFrameReleaseTimeNs) {
                        g2(mediaCodecAdapter, i10, jI0);
                    } else {
                        Q1(jI0, jB, format);
                        W1(mediaCodecAdapter, i10, jI0, jB);
                    }
                    i2(jQ1);
                    this.lastFrameReleaseTimeNs = jB;
                    return true;
                }
            } else if (jQ1 < 30000) {
                if (jQ1 > 11000) {
                    try {
                        Thread.sleep((jQ1 - WorkRequest.MIN_BACKOFF_MILLIS) / 1000);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        return false;
                    }
                }
                Q1(jI0, jB, format);
                U1(mediaCodecAdapter, i10, jI0);
                i2(jQ1);
                return true;
            }
        }
        return false;
    }

    void L1() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.A(this.displaySurface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected float e0(float f, Format format, Format[] formatArr) {
        float fMax = -1.0f;
        for (Format format2 : formatArr) {
            float f6 = format2.frameRate;
            if (f6 != -1.0f) {
                fMax = Math.max(fMax, f6);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f;
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        Surface surface;
        if (i10 == 1) {
            Z1(obj);
            return;
        }
        if (i10 == 7) {
            this.frameMetadataListener = (VideoFrameMetadataListener) obj;
            return;
        }
        if (i10 == 10) {
            int iIntValue = ((Integer) obj).intValue();
            if (this.tunnelingAudioSessionId != iIntValue) {
                this.tunnelingAudioSessionId = iIntValue;
                if (this.tunneling) {
                    K0();
                    return;
                }
                return;
            }
            return;
        }
        if (i10 == 4) {
            this.scalingMode = ((Integer) obj).intValue();
            MediaCodecAdapter mediaCodecAdapterB0 = b0();
            if (mediaCodecAdapterB0 != null) {
                mediaCodecAdapterB0.setVideoScalingMode(this.scalingMode);
                return;
            }
            return;
        }
        if (i10 == 5) {
            this.frameReleaseHelper.o(((Integer) obj).intValue());
            return;
        }
        if (i10 == 13) {
            this.videoFrameProcessorManager.q((List) Assertions.e(obj));
            return;
        }
        if (i10 != 14) {
            super.handleMessage(i10, obj);
            return;
        }
        Size size = (Size) Assertions.e(obj);
        if (size.b() == 0 || size.a() == 0 || (surface = this.displaySurface) == null) {
            return;
        }
        this.videoFrameProcessorManager.p(surface, size);
    }

    protected static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i10, int i11, int i12) {
            this.width = i10;
            this.height = i11;
            this.inputSize = i12;
        }
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j6) {
        this(context, mediaCodecSelector, j6, null, null, 0);
    }

    public static int A1(MediaCodecInfo mediaCodecInfo, Format format) {
        int iIntValue;
        int i10 = format.width;
        int i11 = format.height;
        if (i10 == -1 || i11 == -1) {
            return -1;
        }
        String str = format.sampleMimeType;
        if ("video/dolby-vision".equals(str)) {
            Pair<Integer, Integer> pairR = MediaCodecUtil.r(format);
            str = (pairR == null || !((iIntValue = ((Integer) pairR.first).intValue()) == 512 || iIntValue == 1 || iIntValue == 2)) ? "video/hevc" : "video/avc";
        }
        str.hashCode();
        switch (str) {
            case "video/3gpp":
            case "video/av01":
            case "video/mp4v-es":
            case "video/x-vnd.on2.vp8":
                return F1(i10 * i11, 2);
            case "video/hevc":
                return Math.max(2097152, F1(i10 * i11, 2));
            case "video/avc":
                String str2 = Util.MODEL;
                if ("BRAVIA 4K 2015".equals(str2) || ("Amazon".equals(Util.MANUFACTURER) && ("KFSOWI".equals(str2) || ("AFTS".equals(str2) && mediaCodecInfo.secure)))) {
                    return -1;
                }
                return F1(Util.l(i10, 16) * Util.l(i11, 16) * 256, 2);
            case "video/x-vnd.on2.vp9":
                return F1(i10 * i11, 4);
            default:
                return -1;
        }
    }

    @Nullable
    private static Point B1(MediaCodecInfo mediaCodecInfo, Format format) {
        int i10 = format.height;
        int i11 = format.width;
        boolean z6 = i10 > i11;
        int i12 = z6 ? i10 : i11;
        if (z6) {
            i10 = i11;
        }
        float f = i10 / i12;
        for (int i13 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i14 = (int) (i13 * f);
            if (i13 <= i12 || i14 <= i10) {
                break;
            }
            if (Util.SDK_INT >= 21) {
                int i15 = z6 ? i14 : i13;
                if (!z6) {
                    i13 = i14;
                }
                Point pointC = mediaCodecInfo.c(i15, i13);
                if (mediaCodecInfo.w(pointC.x, pointC.y, format.frameRate)) {
                    return pointC;
                }
            } else {
                try {
                    int iL = Util.l(i13, 16) * 16;
                    int iL2 = Util.l(i14, 16) * 16;
                    if (iL * iL2 <= MediaCodecUtil.P()) {
                        int i16 = z6 ? iL2 : iL;
                        if (!z6) {
                            iL = iL2;
                        }
                        return new Point(i16, iL);
                    }
                } catch (MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    private static List<MediaCodecInfo> D1(Context context, MediaCodecSelector mediaCodecSelector, Format format, boolean z6, boolean z10) throws MediaCodecUtil.DecoderQueryException {
        String str = format.sampleMimeType;
        if (str == null) {
            return com.google.common.collect.a0.x();
        }
        if (Util.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !Api26.a(context)) {
            List<MediaCodecInfo> listN = MediaCodecUtil.n(mediaCodecSelector, format, z6, z10);
            if (!listN.isEmpty()) {
                return listN;
            }
        }
        return MediaCodecUtil.v(mediaCodecSelector, format, z6, z10);
    }

    protected static int E1(MediaCodecInfo mediaCodecInfo, Format format) {
        if (format.maxInputSize == -1) {
            return A1(mediaCodecInfo, format);
        }
        int size = format.initializationData.size();
        int length = 0;
        for (int i10 = 0; i10 < size; i10++) {
            length += format.initializationData.get(i10).length;
        }
        return format.maxInputSize + length;
    }

    private static int F1(int i10, int i11) {
        return (i10 * 3) / (i11 * 2);
    }

    private void K1() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            this.eventDispatcher.n(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void M1() {
        int i10 = this.videoFrameProcessingOffsetCount;
        if (i10 != 0) {
            this.eventDispatcher.B(this.totalVideoFrameProcessingOffsetUs, i10);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N1(VideoSize videoSize) {
        if (videoSize.equals(VideoSize.UNKNOWN) || videoSize.equals(this.reportedVideoSize)) {
            return;
        }
        this.reportedVideoSize = videoSize;
        this.eventDispatcher.D(videoSize);
    }

    private void O1() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.A(this.displaySurface);
        }
    }

    private void P1() {
        VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.D(videoSize);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void Q1(long j6, long j10, Format format) {
        VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.e(j6, j10, format, f0());
        }
    }

    @RequiresApi
    private void T1() {
        Surface surface = this.displaySurface;
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (surface == placeholderSurface) {
            this.displaySurface = null;
        }
        placeholderSurface.release();
        this.placeholderSurface = null;
    }

    private void V1(MediaCodecAdapter mediaCodecAdapter, Format format, int i10, long j6, boolean z6) {
        long jD = this.videoFrameProcessorManager.f() ? this.videoFrameProcessorManager.d(j6, i0()) * 1000 : System.nanoTime();
        if (z6) {
            Q1(j6, jD, format);
        }
        if (Util.SDK_INT >= 21) {
            W1(mediaCodecAdapter, i10, j6, jD);
        } else {
            U1(mediaCodecAdapter, i10, j6);
        }
    }

    @RequiresApi
    private static void X1(MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.b(bundle);
    }

    private void Y1() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : -9223372036854775807L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.media3.exoplayer.video.VideoFrameReleaseHelper] */
    /* JADX WARN: Type inference failed for: r0v8, types: [androidx.media3.exoplayer.video.MediaCodecVideoRenderer$VideoFrameProcessorManager] */
    /* JADX WARN: Type inference failed for: r4v0, types: [androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.view.Surface] */
    /* JADX WARN: Type inference failed for: r5v8, types: [androidx.media3.exoplayer.video.PlaceholderSurface] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void Z1(@Nullable Object obj) throws ExoPlaybackException {
        ?? E;
        Surface surface;
        if (obj instanceof Surface) {
            surface = (Surface) obj;
        } else {
            E = 0;
        }
        if (E == 0) {
            PlaceholderSurface placeholderSurface = this.placeholderSurface;
            if (placeholderSurface != null) {
                E = surface;
                E = placeholderSurface;
            } else {
                MediaCodecInfo mediaCodecInfoC0 = c0();
                if (mediaCodecInfoC0 != null && f2(mediaCodecInfoC0)) {
                    E = surface;
                    E = PlaceholderSurface.e(this.context, mediaCodecInfoC0.secure);
                    this.placeholderSurface = E;
                }
            }
        }
        E = surface;
        E = surface;
        E = surface;
        if (this.displaySurface == E) {
            if (E == 0 || E == this.placeholderSurface) {
                return;
            }
            P1();
            O1();
            return;
        }
        this.displaySurface = E;
        this.frameReleaseHelper.m(E);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        MediaCodecAdapter mediaCodecAdapterB0 = b0();
        if (mediaCodecAdapterB0 != null && !this.videoFrameProcessorManager.f()) {
            if (Util.SDK_INT < 23 || E == 0 || this.codecNeedsSetOutputSurfaceWorkaround) {
                K0();
                t0();
            } else {
                a2(mediaCodecAdapterB0, E);
            }
        }
        if (E == 0 || E == this.placeholderSurface) {
            s1();
            r1();
            if (this.videoFrameProcessorManager.f()) {
                this.videoFrameProcessorManager.b();
                return;
            }
            return;
        }
        P1();
        r1();
        if (state == 2) {
            Y1();
        }
        if (this.videoFrameProcessorManager.f()) {
            this.videoFrameProcessorManager.p(E, Size.UNKNOWN);
        }
    }

    private boolean f2(MediaCodecInfo mediaCodecInfo) {
        return Util.SDK_INT >= 23 && !this.tunneling && !u1(mediaCodecInfo.name) && (!mediaCodecInfo.secure || PlaceholderSurface.c(this.context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean t1() {
        return Util.SDK_INT >= 21;
    }

    private static boolean w1() {
        return "NVIDIA".equals(Util.MANUFACTURER);
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    private static boolean y1() {
        int i10 = Util.SDK_INT;
        byte b7 = 7;
        if (i10 <= 28) {
            String str = Util.DEVICE;
            str.hashCode();
            switch (str) {
                case "dangal":
                case "dangalFHD":
                case "dangalUHD":
                case "oneday":
                case "aquaman":
                case "magnolia":
                case "once":
                case "machuca":
                    return true;
            }
        }
        if (i10 <= 27 && "HWEML".equals(Util.DEVICE)) {
            return true;
        }
        String str2 = Util.MODEL;
        str2.hashCode();
        switch (str2) {
            case "AFTJMST12":
            case "AFTKMST12":
            case "AFTA":
            case "AFTN":
            case "AFTR":
            case "AFTEU011":
            case "AFTEU014":
            case "AFTSO001":
            case "AFTEUFF014":
                return true;
            default:
                if (i10 <= 26) {
                    String str3 = Util.DEVICE;
                    str3.hashCode();
                    switch (str3.hashCode()) {
                        case -2144781245:
                            b7 = !str3.equals("GIONEE_SWW1609") ? (byte) -1 : (byte) 0;
                            break;
                        case -2144781185:
                            b7 = !str3.equals("GIONEE_SWW1627") ? (byte) -1 : (byte) 1;
                            break;
                        case -2144781160:
                            b7 = !str3.equals("GIONEE_SWW1631") ? (byte) -1 : (byte) 2;
                            break;
                        case -2097309513:
                            b7 = !str3.equals("K50a40") ? (byte) -1 : (byte) 3;
                            break;
                        case -2022874474:
                            b7 = !str3.equals("CP8676_I02") ? (byte) -1 : (byte) 4;
                            break;
                        case -1978993182:
                            b7 = !str3.equals("NX541J") ? (byte) -1 : (byte) 5;
                            break;
                        case -1978990237:
                            b7 = !str3.equals("NX573J") ? (byte) -1 : (byte) 6;
                            break;
                        case -1936688988:
                            if (!str3.equals("PGN528")) {
                                b7 = -1;
                            }
                            break;
                        case -1936688066:
                            b7 = !str3.equals("PGN610") ? (byte) -1 : (byte) 8;
                            break;
                        case -1936688065:
                            b7 = !str3.equals("PGN611") ? (byte) -1 : (byte) 9;
                            break;
                        case -1931988508:
                            b7 = !str3.equals("AquaPowerM") ? (byte) -1 : (byte) 10;
                            break;
                        case -1885099851:
                            b7 = !str3.equals("RAIJIN") ? (byte) -1 : com.google.common.base.c.VT;
                            break;
                        case -1696512866:
                            b7 = !str3.equals("XT1663") ? (byte) -1 : com.google.common.base.c.FF;
                            break;
                        case -1680025915:
                            b7 = !str3.equals("ComioS1") ? (byte) -1 : com.google.common.base.c.CR;
                            break;
                        case -1615810839:
                            b7 = !str3.equals("Phantom6") ? (byte) -1 : com.google.common.base.c.SO;
                            break;
                        case -1600724499:
                            b7 = !str3.equals("pacificrim") ? (byte) -1 : com.google.common.base.c.SI;
                            break;
                        case -1554255044:
                            b7 = !str3.equals("vernee_M5") ? (byte) -1 : com.google.common.base.c.DLE;
                            break;
                        case -1481772737:
                            b7 = !str3.equals("panell_dl") ? (byte) -1 : (byte) 17;
                            break;
                        case -1481772730:
                            b7 = !str3.equals("panell_ds") ? (byte) -1 : com.google.common.base.c.DC2;
                            break;
                        case -1481772729:
                            b7 = !str3.equals("panell_dt") ? (byte) -1 : (byte) 19;
                            break;
                        case -1320080169:
                            b7 = !str3.equals("GiONEE_GBL7319") ? (byte) -1 : com.google.common.base.c.DC4;
                            break;
                        case -1217592143:
                            b7 = !str3.equals("BRAVIA_ATV2") ? (byte) -1 : com.google.common.base.c.NAK;
                            break;
                        case -1180384755:
                            b7 = !str3.equals("iris60") ? (byte) -1 : com.google.common.base.c.SYN;
                            break;
                        case -1139198265:
                            b7 = !str3.equals("Slate_Pro") ? (byte) -1 : com.google.common.base.c.ETB;
                            break;
                        case -1052835013:
                            b7 = !str3.equals("namath") ? (byte) -1 : com.google.common.base.c.CAN;
                            break;
                        case -993250464:
                            b7 = !str3.equals("A10-70F") ? (byte) -1 : com.google.common.base.c.EM;
                            break;
                        case -993250458:
                            b7 = !str3.equals("A10-70L") ? (byte) -1 : (byte) 26;
                            break;
                        case -965403638:
                            b7 = !str3.equals("s905x018") ? (byte) -1 : (byte) 27;
                            break;
                        case -958336948:
                            b7 = !str3.equals("ELUGA_Ray_X") ? (byte) -1 : (byte) 28;
                            break;
                        case -879245230:
                            b7 = !str3.equals("tcl_eu") ? (byte) -1 : com.google.common.base.c.GS;
                            break;
                        case -842500323:
                            b7 = !str3.equals("nicklaus_f") ? (byte) -1 : com.google.common.base.c.RS;
                            break;
                        case -821392978:
                            b7 = !str3.equals("A7000-a") ? (byte) -1 : com.google.common.base.c.US;
                            break;
                        case -797483286:
                            b7 = !str3.equals("SVP-DTV15") ? (byte) -1 : (byte) 32;
                            break;
                        case -794946968:
                            b7 = !str3.equals("watson") ? (byte) -1 : (byte) 33;
                            break;
                        case -788334647:
                            b7 = !str3.equals("whyred") ? (byte) -1 : (byte) 34;
                            break;
                        case -782144577:
                            b7 = !str3.equals("OnePlus5T") ? (byte) -1 : (byte) 35;
                            break;
                        case -575125681:
                            b7 = !str3.equals("GiONEE_CBL7513") ? (byte) -1 : (byte) 36;
                            break;
                        case -521118391:
                            b7 = !str3.equals("GIONEE_GBL7360") ? (byte) -1 : (byte) 37;
                            break;
                        case -430914369:
                            b7 = !str3.equals("Pixi4-7_3G") ? (byte) -1 : (byte) 38;
                            break;
                        case -290434366:
                            b7 = !str3.equals("taido_row") ? (byte) -1 : (byte) 39;
                            break;
                        case -282781963:
                            b7 = !str3.equals("BLACK-1X") ? (byte) -1 : (byte) 40;
                            break;
                        case -277133239:
                            b7 = !str3.equals("Z12_PRO") ? (byte) -1 : (byte) 41;
                            break;
                        case -173639913:
                            b7 = !str3.equals("ELUGA_A3_Pro") ? (byte) -1 : (byte) 42;
                            break;
                        case -56598463:
                            b7 = !str3.equals("woods_fn") ? (byte) -1 : (byte) 43;
                            break;
                        case 2126:
                            b7 = !str3.equals("C1") ? (byte) -1 : (byte) 44;
                            break;
                        case 2564:
                            b7 = !str3.equals("Q5") ? (byte) -1 : (byte) 45;
                            break;
                        case 2715:
                            b7 = !str3.equals("V1") ? (byte) -1 : (byte) 46;
                            break;
                        case 2719:
                            b7 = !str3.equals("V5") ? (byte) -1 : (byte) 47;
                            break;
                        case 3091:
                            b7 = !str3.equals("b5") ? (byte) -1 : TarConstants.LF_NORMAL;
                            break;
                        case 3483:
                            b7 = !str3.equals("mh") ? (byte) -1 : TarConstants.LF_LINK;
                            break;
                        case 73405:
                            b7 = !str3.equals("JGZ") ? (byte) -1 : TarConstants.LF_SYMLINK;
                            break;
                        case 75537:
                            b7 = !str3.equals("M04") ? (byte) -1 : TarConstants.LF_CHR;
                            break;
                        case 75739:
                            b7 = !str3.equals("M5c") ? (byte) -1 : TarConstants.LF_BLK;
                            break;
                        case 76779:
                            b7 = !str3.equals("MX6") ? (byte) -1 : TarConstants.LF_DIR;
                            break;
                        case 78669:
                            b7 = !str3.equals("P85") ? (byte) -1 : TarConstants.LF_FIFO;
                            break;
                        case 79305:
                            b7 = !str3.equals("PLE") ? (byte) -1 : TarConstants.LF_CONTIG;
                            break;
                        case 80618:
                            b7 = !str3.equals("QX1") ? (byte) -1 : (byte) 56;
                            break;
                        case 88274:
                            b7 = !str3.equals("Z80") ? (byte) -1 : (byte) 57;
                            break;
                        case 98846:
                            b7 = !str3.equals("cv1") ? (byte) -1 : (byte) 58;
                            break;
                        case 98848:
                            b7 = !str3.equals("cv3") ? (byte) -1 : (byte) 59;
                            break;
                        case 99329:
                            b7 = !str3.equals("deb") ? (byte) -1 : (byte) 60;
                            break;
                        case 101481:
                            b7 = !str3.equals("flo") ? (byte) -1 : (byte) 61;
                            break;
                        case 1513190:
                            b7 = !str3.equals("1601") ? (byte) -1 : (byte) 62;
                            break;
                        case 1514184:
                            b7 = !str3.equals("1713") ? (byte) -1 : Utf8.REPLACEMENT_BYTE;
                            break;
                        case 1514185:
                            b7 = !str3.equals("1714") ? (byte) -1 : (byte) 64;
                            break;
                        case 2133089:
                            b7 = !str3.equals("F01H") ? (byte) -1 : (byte) 65;
                            break;
                        case 2133091:
                            b7 = !str3.equals("F01J") ? (byte) -1 : (byte) 66;
                            break;
                        case 2133120:
                            b7 = !str3.equals("F02H") ? (byte) -1 : (byte) 67;
                            break;
                        case 2133151:
                            b7 = !str3.equals("F03H") ? (byte) -1 : (byte) 68;
                            break;
                        case 2133182:
                            b7 = !str3.equals("F04H") ? (byte) -1 : (byte) 69;
                            break;
                        case 2133184:
                            b7 = !str3.equals("F04J") ? (byte) -1 : (byte) 70;
                            break;
                        case 2436959:
                            b7 = !str3.equals("P681") ? (byte) -1 : (byte) 71;
                            break;
                        case 2463773:
                            b7 = !str3.equals("Q350") ? (byte) -1 : (byte) 72;
                            break;
                        case 2464648:
                            b7 = !str3.equals("Q427") ? (byte) -1 : (byte) 73;
                            break;
                        case 2689555:
                            b7 = !str3.equals("XE2X") ? (byte) -1 : (byte) 74;
                            break;
                        case 3154429:
                            b7 = !str3.equals("fugu") ? (byte) -1 : TarConstants.LF_GNUTYPE_LONGLINK;
                            break;
                        case 3284551:
                            b7 = !str3.equals("kate") ? (byte) -1 : TarConstants.LF_GNUTYPE_LONGNAME;
                            break;
                        case 3351335:
                            b7 = !str3.equals("mido") ? (byte) -1 : (byte) 77;
                            break;
                        case 3386211:
                            b7 = !str3.equals("p212") ? (byte) -1 : (byte) 78;
                            break;
                        case 41325051:
                            b7 = !str3.equals("MEIZU_M5") ? (byte) -1 : (byte) 79;
                            break;
                        case 51349633:
                            b7 = !str3.equals("601LV") ? (byte) -1 : (byte) 80;
                            break;
                        case 51350594:
                            b7 = !str3.equals("602LV") ? (byte) -1 : (byte) 81;
                            break;
                        case 55178625:
                            b7 = !str3.equals("Aura_Note_2") ? (byte) -1 : (byte) 82;
                            break;
                        case 61542055:
                            b7 = !str3.equals("A1601") ? (byte) -1 : TarConstants.LF_GNUTYPE_SPARSE;
                            break;
                        case 65355429:
                            b7 = !str3.equals("E5643") ? (byte) -1 : (byte) 84;
                            break;
                        case 66214468:
                            b7 = !str3.equals("F3111") ? (byte) -1 : (byte) 85;
                            break;
                        case 66214470:
                            b7 = !str3.equals("F3113") ? (byte) -1 : (byte) 86;
                            break;
                        case 66214473:
                            b7 = !str3.equals("F3116") ? (byte) -1 : (byte) 87;
                            break;
                        case 66215429:
                            b7 = !str3.equals("F3211") ? (byte) -1 : TarConstants.LF_PAX_EXTENDED_HEADER_UC;
                            break;
                        case 66215431:
                            b7 = !str3.equals("F3213") ? (byte) -1 : (byte) 89;
                            break;
                        case 66215433:
                            b7 = !str3.equals("F3215") ? (byte) -1 : (byte) 90;
                            break;
                        case 66216390:
                            b7 = !str3.equals("F3311") ? (byte) -1 : (byte) 91;
                            break;
                        case 76402249:
                            b7 = !str3.equals("PRO7S") ? (byte) -1 : (byte) 92;
                            break;
                        case 76404105:
                            b7 = !str3.equals("Q4260") ? (byte) -1 : (byte) 93;
                            break;
                        case 76404911:
                            b7 = !str3.equals("Q4310") ? (byte) -1 : (byte) 94;
                            break;
                        case 80963634:
                            b7 = !str3.equals("V23GB") ? (byte) -1 : (byte) 95;
                            break;
                        case 82882791:
                            b7 = !str3.equals("X3_HK") ? (byte) -1 : (byte) 96;
                            break;
                        case 98715550:
                            b7 = !str3.equals("i9031") ? (byte) -1 : (byte) 97;
                            break;
                        case 101370885:
                            b7 = !str3.equals("l5460") ? (byte) -1 : (byte) 98;
                            break;
                        case 102844228:
                            b7 = !str3.equals("le_x6") ? (byte) -1 : (byte) 99;
                            break;
                        case 165221241:
                            b7 = !str3.equals("A2016a40") ? (byte) -1 : (byte) 100;
                            break;
                        case 182191441:
                            b7 = !str3.equals("CPY83_I00") ? (byte) -1 : (byte) 101;
                            break;
                        case 245388979:
                            b7 = !str3.equals("marino_f") ? (byte) -1 : (byte) 102;
                            break;
                        case 287431619:
                            b7 = !str3.equals("griffin") ? (byte) -1 : TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER;
                            break;
                        case 307593612:
                            b7 = !str3.equals("A7010a48") ? (byte) -1 : (byte) 104;
                            break;
                        case 308517133:
                            b7 = !str3.equals("A7020a48") ? (byte) -1 : (byte) 105;
                            break;
                        case 316215098:
                            b7 = !str3.equals("TB3-730F") ? (byte) -1 : (byte) 106;
                            break;
                        case 316215116:
                            b7 = !str3.equals("TB3-730X") ? (byte) -1 : (byte) 107;
                            break;
                        case 316246811:
                            b7 = !str3.equals("TB3-850F") ? (byte) -1 : (byte) 108;
                            break;
                        case 316246818:
                            b7 = !str3.equals("TB3-850M") ? (byte) -1 : (byte) 109;
                            break;
                        case 407160593:
                            b7 = !str3.equals("Pixi5-10_4G") ? (byte) -1 : (byte) 110;
                            break;
                        case 507412548:
                            b7 = !str3.equals("QM16XE_U") ? (byte) -1 : (byte) 111;
                            break;
                        case 793982701:
                            b7 = !str3.equals("GIONEE_WBL5708") ? (byte) -1 : (byte) 112;
                            break;
                        case 794038622:
                            b7 = !str3.equals("GIONEE_WBL7365") ? (byte) -1 : (byte) 113;
                            break;
                        case 794040393:
                            b7 = !str3.equals("GIONEE_WBL7519") ? (byte) -1 : (byte) 114;
                            break;
                        case 835649806:
                            b7 = !str3.equals("manning") ? (byte) -1 : (byte) 115;
                            break;
                        case 917340916:
                            b7 = !str3.equals("A7000plus") ? (byte) -1 : (byte) 116;
                            break;
                        case 958008161:
                            b7 = !str3.equals("j2xlteins") ? (byte) -1 : (byte) 117;
                            break;
                        case 1060579533:
                            b7 = !str3.equals("panell_d") ? (byte) -1 : (byte) 118;
                            break;
                        case 1150207623:
                            b7 = !str3.equals("LS-5017") ? (byte) -1 : (byte) 119;
                            break;
                        case 1176899427:
                            b7 = !str3.equals("itel_S41") ? (byte) -1 : TarConstants.LF_PAX_EXTENDED_HEADER_LC;
                            break;
                        case 1280332038:
                            b7 = !str3.equals("hwALE-H") ? (byte) -1 : (byte) 121;
                            break;
                        case 1306947716:
                            b7 = !str3.equals("EverStar_S") ? (byte) -1 : (byte) 122;
                            break;
                        case 1349174697:
                            b7 = !str3.equals("htc_e56ml_dtul") ? (byte) -1 : (byte) 123;
                            break;
                        case 1522194893:
                            b7 = !str3.equals("woods_f") ? (byte) -1 : (byte) 124;
                            break;
                        case 1691543273:
                            b7 = !str3.equals("CPH1609") ? (byte) -1 : (byte) 125;
                            break;
                        case 1691544261:
                            b7 = !str3.equals("CPH1715") ? (byte) -1 : (byte) 126;
                            break;
                        case 1709443163:
                            b7 = !str3.equals("iball8735_9806") ? (byte) -1 : (byte) 127;
                            break;
                        case 1865889110:
                            b7 = !str3.equals("santoni") ? (byte) -1 : (byte) 128;
                            break;
                        case 1906253259:
                            b7 = !str3.equals("PB2-670M") ? (byte) -1 : (byte) 129;
                            break;
                        case 1977196784:
                            b7 = !str3.equals("Infinix-X572") ? (byte) -1 : (byte) 130;
                            break;
                        case 2006372676:
                            b7 = !str3.equals("BRAVIA_ATV3_4K") ? (byte) -1 : (byte) 131;
                            break;
                        case 2019281702:
                            b7 = !str3.equals("DM-01K") ? (byte) -1 : (byte) 132;
                            break;
                        case 2029784656:
                            b7 = !str3.equals("HWBLN-H") ? (byte) -1 : (byte) 133;
                            break;
                        case 2030379515:
                            b7 = !str3.equals("HWCAM-H") ? (byte) -1 : (byte) 134;
                            break;
                        case 2033393791:
                            b7 = !str3.equals("ASUS_X00AD_2") ? (byte) -1 : (byte) 135;
                            break;
                        case 2047190025:
                            b7 = !str3.equals("ELUGA_Note") ? (byte) -1 : (byte) 136;
                            break;
                        case 2047252157:
                            b7 = !str3.equals("ELUGA_Prim") ? (byte) -1 : (byte) 137;
                            break;
                        case 2048319463:
                            b7 = !str3.equals("HWVNS-H") ? (byte) -1 : (byte) 138;
                            break;
                        case 2048855701:
                            b7 = !str3.equals("HWWAS-H") ? (byte) -1 : (byte) 139;
                            break;
                        default:
                            b7 = -1;
                            break;
                    }
                    switch (b7) {
                        default:
                            str2.hashCode();
                            if (!str2.equals("JSN-L21")) {
                            }
                        case 0:
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                        case 56:
                        case 57:
                        case 58:
                        case 59:
                        case 60:
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                        case 68:
                        case 69:
                        case 70:
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                        case 76:
                        case 77:
                        case 78:
                        case 79:
                        case 80:
                        case 81:
                        case 82:
                        case 83:
                        case 84:
                        case 85:
                        case 86:
                        case 87:
                        case 88:
                        case 89:
                        case 90:
                        case 91:
                        case 92:
                        case 93:
                        case 94:
                        case 95:
                        case 96:
                        case 97:
                        case 98:
                        case 99:
                        case 100:
                        case 101:
                        case 102:
                        case 103:
                        case 104:
                        case 105:
                        case 106:
                        case 107:
                        case 108:
                        case 109:
                        case 110:
                        case 111:
                        case 112:
                        case 113:
                        case 114:
                        case 115:
                        case 116:
                        case 117:
                        case 118:
                        case 119:
                        case 120:
                        case 121:
                        case 122:
                        case 123:
                        case 124:
                        case 125:
                        case 126:
                        case 127:
                        case 128:
                        case 129:
                        case 130:
                        case 131:
                        case 132:
                        case 133:
                        case 134:
                        case 135:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST /* 136 */:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE /* 137 */:
                        case 138:
                        case WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE /* 139 */:
                            return true;
                    }
                }
                return false;
        }
    }

    protected CodecMaxValues C1(MediaCodecInfo mediaCodecInfo, Format format, Format[] formatArr) {
        int iA1;
        int iMax = format.width;
        int iMax2 = format.height;
        int iE1 = E1(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (iE1 != -1 && (iA1 = A1(mediaCodecInfo, format)) != -1) {
                iE1 = Math.min((int) (iE1 * 1.5f), iA1);
            }
            return new CodecMaxValues(iMax, iMax2, iE1);
        }
        int length = formatArr.length;
        boolean z6 = false;
        for (int i10 = 0; i10 < length; i10++) {
            Format formatG = formatArr[i10];
            if (format.colorInfo != null && formatG.colorInfo == null) {
                formatG = formatG.b().L(format.colorInfo).G();
            }
            if (mediaCodecInfo.f(format, formatG).result != 0) {
                int i11 = formatG.width;
                z6 |= i11 == -1 || formatG.height == -1;
                iMax = Math.max(iMax, i11);
                iMax2 = Math.max(iMax2, formatG.height);
                iE1 = Math.max(iE1, E1(mediaCodecInfo, formatG));
            }
        }
        if (z6) {
            Log.i(TAG, "Resolutions unknown. Codec max resolution: " + iMax + "x" + iMax2);
            Point pointB1 = B1(mediaCodecInfo, format);
            if (pointB1 != null) {
                iMax = Math.max(iMax, pointB1.x);
                iMax2 = Math.max(iMax2, pointB1.y);
                iE1 = Math.max(iE1, A1(mediaCodecInfo, format.b().n0(iMax).S(iMax2).G()));
                Log.i(TAG, "Codec max resolution adjusted to: " + iMax + "x" + iMax2);
            }
        }
        return new CodecMaxValues(iMax, iMax2, iE1);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void D0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        boolean z6 = this.tunneling;
        if (!z6) {
            this.buffersInCodecCount++;
        }
        if (Util.SDK_INT >= 23 || !z6) {
            return;
        }
        R1(decoderInputBuffer.timeUs);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void E0(Format format) throws ExoPlaybackException {
        if (this.videoFrameProcessorManager.f()) {
            return;
        }
        this.videoFrameProcessorManager.h(format, i0());
    }

    @SuppressLint({"InlinedApi"})
    @TargetApi(21)
    protected MediaFormat G1(Format format, String str, CodecMaxValues codecMaxValues, float f, boolean z6, int i10) {
        Pair<Integer, Integer> pairR;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        MediaFormatUtil.l(mediaFormat, format.initializationData);
        MediaFormatUtil.j(mediaFormat, "frame-rate", format.frameRate);
        MediaFormatUtil.k(mediaFormat, "rotation-degrees", format.rotationDegrees);
        MediaFormatUtil.i(mediaFormat, format.colorInfo);
        if ("video/dolby-vision".equals(format.sampleMimeType) && (pairR = MediaCodecUtil.r(format)) != null) {
            MediaFormatUtil.k(mediaFormat, Scopes.PROFILE, ((Integer) pairR.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        MediaFormatUtil.k(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        if (Util.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f != -1.0f) {
                mediaFormat.setFloat("operating-rate", f);
            }
        }
        if (z6) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i10 != 0) {
            v1(mediaFormat, i10);
        }
        return mediaFormat;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected MediaCodecDecoderException P(Throwable th, @Nullable MediaCodecInfo mediaCodecInfo) {
        return new MediaCodecVideoDecoderException(th, mediaCodecInfo, this.displaySurface);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean W0(MediaCodecInfo mediaCodecInfo) {
        return this.displaySurface != null || f2(mediaCodecInfo);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected int Z0(MediaCodecSelector mediaCodecSelector, Format format) throws MediaCodecUtil.DecoderQueryException {
        boolean z6;
        int i10 = 0;
        if (!MimeTypes.s(format.sampleMimeType)) {
            return h2.c(0);
        }
        boolean z10 = format.drmInitData != null;
        List<MediaCodecInfo> listD1 = D1(this.context, mediaCodecSelector, format, z10, false);
        if (z10 && listD1.isEmpty()) {
            listD1 = D1(this.context, mediaCodecSelector, format, false, false);
        }
        if (listD1.isEmpty()) {
            return h2.c(1);
        }
        if (!MediaCodecRenderer.a1(format)) {
            return h2.c(2);
        }
        MediaCodecInfo mediaCodecInfo = listD1.get(0);
        boolean zO = mediaCodecInfo.o(format);
        if (!zO) {
            int i11 = 1;
            while (true) {
                if (i11 >= listD1.size()) {
                    z6 = true;
                    break;
                }
                MediaCodecInfo mediaCodecInfo2 = listD1.get(i11);
                if (mediaCodecInfo2.o(format)) {
                    z6 = false;
                    zO = true;
                    mediaCodecInfo = mediaCodecInfo2;
                    break;
                }
                i11++;
            }
        } else {
            z6 = true;
            break;
        }
        int i12 = zO ? 4 : 3;
        int i13 = mediaCodecInfo.r(format) ? 16 : 8;
        int i14 = mediaCodecInfo.hardwareAccelerated ? 64 : 0;
        int i15 = z6 ? 128 : 0;
        if (Util.SDK_INT >= 26 && "video/dolby-vision".equals(format.sampleMimeType) && !Api26.a(this.context)) {
            i15 = 256;
        }
        if (zO) {
            List<MediaCodecInfo> listD2 = D1(this.context, mediaCodecSelector, format, z10, true);
            if (!listD2.isEmpty()) {
                MediaCodecInfo mediaCodecInfo3 = MediaCodecUtil.w(listD2, format).get(0);
                if (mediaCodecInfo3.o(format) && mediaCodecInfo3.r(format)) {
                    i10 = 32;
                }
            }
        }
        return h2.e(i12, i13, i10, i14, i15);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected boolean d0() {
        return this.tunneling && Util.SDK_INT < 23;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected List<MediaCodecInfo> g0(MediaCodecSelector mediaCodecSelector, Format format, boolean z6) throws MediaCodecUtil.DecoderQueryException {
        return MediaCodecUtil.w(D1(this.context, mediaCodecSelector, format, z6, this.tunneling), format);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @TargetApi(17)
    protected MediaCodecAdapter.Configuration h0(MediaCodecInfo mediaCodecInfo, Format format, @Nullable MediaCrypto mediaCrypto, float f) {
        PlaceholderSurface placeholderSurface = this.placeholderSurface;
        if (placeholderSurface != null && placeholderSurface.secure != mediaCodecInfo.secure) {
            T1();
        }
        String str = mediaCodecInfo.codecMimeType;
        CodecMaxValues codecMaxValuesC1 = C1(mediaCodecInfo, format, p());
        this.codecMaxValues = codecMaxValuesC1;
        MediaFormat mediaFormatG1 = G1(format, str, codecMaxValuesC1, f, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        if (this.displaySurface == null) {
            if (!f2(mediaCodecInfo)) {
                throw new IllegalStateException();
            }
            if (this.placeholderSurface == null) {
                this.placeholderSurface = PlaceholderSurface.e(this.context, mediaCodecInfo.secure);
            }
            this.displaySurface = this.placeholderSurface;
        }
        if (this.videoFrameProcessorManager.f()) {
            mediaFormatG1 = this.videoFrameProcessorManager.a(mediaFormatG1);
        }
        return MediaCodecAdapter.Configuration.b(mediaCodecInfo, mediaFormatG1, format, this.videoFrameProcessorManager.f() ? this.videoFrameProcessorManager.e() : this.displaySurface, mediaCrypto);
    }

    protected void h2(int i10, int i11) {
        DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedInputBufferCount += i10;
        int i12 = i10 + i11;
        decoderCounters.droppedBufferCount += i12;
        this.droppedFrames += i12;
        int i13 = this.consecutiveDroppedFrameCount + i12;
        this.consecutiveDroppedFrameCount = i13;
        decoderCounters.maxConsecutiveDroppedBufferCount = Math.max(i13, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i14 = this.maxDroppedFramesToNotify;
        if (i14 <= 0 || this.droppedFrames < i14) {
            return;
        }
        K1();
    }

    protected void i2(long j6) {
        this.decoderCounters.a(j6);
        this.totalVideoFrameProcessingOffsetUs += j6;
        this.videoFrameProcessingOffsetCount++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @TargetApi(29)
    protected void k0(DecoderInputBuffer decoderInputBuffer) throws ExoPlaybackException {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            ByteBuffer byteBuffer = (ByteBuffer) Assertions.e(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b7 = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s5 = byteBuffer.getShort();
                byte b10 = byteBuffer.get();
                byte b11 = byteBuffer.get();
                byteBuffer.position(0);
                if (b7 == -75 && s == 60 && s5 == 1 && b10 == 4) {
                    if (b11 == 0 || b11 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        X1(b0(), bArr);
                    }
                }
            }
        }
    }

    protected boolean u1(String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (MediaCodecVideoRenderer.class) {
            try {
                if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                    deviceNeedsSetOutputSurfaceWorkaround = y1();
                    evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void v0(Exception exc) {
        Log.d(TAG, "Video codec error", exc);
        this.eventDispatcher.C(exc);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void w0(String str, MediaCodecAdapter.Configuration configuration, long j6, long j10) {
        this.eventDispatcher.k(str, j6, j10);
        this.codecNeedsSetOutputSurfaceWorkaround = u1(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((MediaCodecInfo) Assertions.e(c0())).p();
        if (Util.SDK_INT >= 23 && this.tunneling) {
            this.tunnelingOnFrameRenderedListener = new OnFrameRenderedListenerV23((MediaCodecAdapter) Assertions.e(b0()));
        }
        this.videoFrameProcessorManager.j(str);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void x0(String str) {
        this.eventDispatcher.l(str);
    }

    protected void x1(MediaCodecAdapter mediaCodecAdapter, int i10, long j6) {
        TraceUtil.a("dropVideoBuffer");
        mediaCodecAdapter.e(i10, false);
        TraceUtil.c();
        h2(0, 1);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j6, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i10) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j6, false, handler, videoRendererEventListener, i10, 30.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void S1() {
        S0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d2(long j6, long j10) {
        boolean z6;
        boolean z10;
        if (getState() == 2) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (this.renderedFirstFrameAfterEnable ? this.renderedFirstFrameAfterReset : !z6 && !this.mayRenderFirstFrameAfterEnableIfNotStarted) {
            z10 = false;
        } else {
            z10 = true;
        }
        long jElapsedRealtime = (SystemClock.elapsedRealtime() * 1000) - this.lastRenderRealtimeUs;
        if (this.joiningDeadlineMs != -9223372036854775807L || j6 < i0()) {
            return false;
        }
        if (!z10 && (!z6 || !e2(j10, jElapsedRealtime))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long q1(long j6, long j10, long j11, long j12, boolean z6) {
        long jJ0 = (long) ((j12 - j6) / ((double) j0()));
        if (z6) {
            return jJ0 - (j11 - j10);
        }
        return jJ0;
    }

    @RequiresApi
    private static void v1(MediaFormat mediaFormat, int i10) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i10);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void B0(long j6) {
        super.B0(j6);
        if (!this.tunneling) {
            this.buffersInCodecCount--;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void C0() {
        super.C0();
        r1();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected DecoderReuseEvaluation F(MediaCodecInfo mediaCodecInfo, Format format, Format format2) {
        int i10;
        DecoderReuseEvaluation decoderReuseEvaluationF = mediaCodecInfo.f(format, format2);
        int i11 = decoderReuseEvaluationF.discardReasons;
        int i12 = format2.width;
        CodecMaxValues codecMaxValues = this.codecMaxValues;
        if (i12 > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i11 |= 256;
        }
        if (E1(mediaCodecInfo, format2) > this.codecMaxValues.inputSize) {
            i11 |= 64;
        }
        int i13 = i11;
        String str = mediaCodecInfo.name;
        if (i13 != 0) {
            i10 = 0;
        } else {
            i10 = decoderReuseEvaluationF.result;
        }
        return new DecoderReuseEvaluation(str, format, format2, i10, i13);
    }

    protected boolean J1(long j6, boolean z6) throws ExoPlaybackException {
        int iC = C(j6);
        if (iC == 0) {
            return false;
        }
        if (z6) {
            DecoderCounters decoderCounters = this.decoderCounters;
            decoderCounters.skippedInputBufferCount += iC;
            decoderCounters.skippedOutputBufferCount += this.buffersInCodecCount;
        } else {
            this.decoderCounters.droppedToKeyframeCount++;
            h2(iC, this.buffersInCodecCount);
        }
        Y();
        if (this.videoFrameProcessorManager.f()) {
            this.videoFrameProcessorManager.c();
        }
        return true;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @CallSuper
    protected void M0() {
        super.M0();
        this.buffersInCodecCount = 0;
    }

    protected void R1(long j6) throws ExoPlaybackException {
        d1(j6);
        N1(this.decodedVideoSize);
        this.decoderCounters.renderedOutputBufferCount++;
        L1();
        B0(j6);
    }

    protected void U1(MediaCodecAdapter mediaCodecAdapter, int i10, long j6) {
        TraceUtil.a("releaseOutputBuffer");
        mediaCodecAdapter.e(i10, true);
        TraceUtil.c();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (!this.videoFrameProcessorManager.f()) {
            this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
            N1(this.decodedVideoSize);
            L1();
        }
    }

    @RequiresApi
    protected void W1(MediaCodecAdapter mediaCodecAdapter, int i10, long j6, long j10) {
        TraceUtil.a("releaseOutputBuffer");
        mediaCodecAdapter.c(i10, j10);
        TraceUtil.c();
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        if (!this.videoFrameProcessorManager.f()) {
            this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
            N1(this.decodedVideoSize);
            L1();
        }
    }

    @RequiresApi
    protected void a2(MediaCodecAdapter mediaCodecAdapter, Surface surface) {
        mediaCodecAdapter.h(surface);
    }

    protected boolean b2(long j6, long j10, boolean z6) {
        if (I1(j6) && !z6) {
            return true;
        }
        return false;
    }

    protected boolean c2(long j6, long j10, boolean z6) {
        if (H1(j6) && !z6) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.Renderer
    public void d(float f, float f6) throws ExoPlaybackException {
        super.d(f, f6);
        this.frameReleaseHelper.i(f);
    }

    protected boolean e2(long j6, long j10) {
        if (H1(j6) && j10 > 100000) {
            return true;
        }
        return false;
    }

    protected void g2(MediaCodecAdapter mediaCodecAdapter, int i10, long j6) {
        TraceUtil.a("skipVideoBuffer");
        mediaCodecAdapter.e(i10, false);
        TraceUtil.c();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        boolean zIsEnded = super.isEnded();
        if (this.videoFrameProcessorManager.f()) {
            return zIsEnded & this.videoFrameProcessorManager.m();
        }
        return zIsEnded;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        PlaceholderSurface placeholderSurface;
        if (super.isReady() && ((!this.videoFrameProcessorManager.f() || this.videoFrameProcessorManager.g()) && (this.renderedFirstFrameAfterReset || (((placeholderSurface = this.placeholderSurface) != null && this.displaySurface == placeholderSurface) || b0() == null || this.tunneling)))) {
            this.joiningDeadlineMs = -9223372036854775807L;
            return true;
        }
        if (this.joiningDeadlineMs == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = -9223372036854775807L;
        return false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        s1();
        r1();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.tunnelingOnFrameRenderedListener = null;
        try {
            super.r();
        } finally {
            this.eventDispatcher.m(this.decoderCounters);
            this.eventDispatcher.D(VideoSize.UNKNOWN);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.Renderer
    @CallSuper
    public void render(long j6, long j10) throws ExoPlaybackException {
        super.render(j6, j10);
        if (this.videoFrameProcessorManager.f()) {
            this.videoFrameProcessorManager.l(j6, j10);
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void s(boolean z6, boolean z10) throws ExoPlaybackException {
        boolean z11;
        super.s(z6, z10);
        boolean z12 = l().tunneling;
        if (z12 && this.tunnelingAudioSessionId == 0) {
            z11 = false;
        } else {
            z11 = true;
        }
        Assertions.g(z11);
        if (this.tunneling != z12) {
            this.tunneling = z12;
            K0();
        }
        this.eventDispatcher.o(this.decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z10;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) throws ExoPlaybackException {
        super.t(j6, z6);
        if (this.videoFrameProcessorManager.f()) {
            this.videoFrameProcessorManager.c();
        }
        r1();
        this.frameReleaseHelper.j();
        this.lastBufferPresentationTimeUs = -9223372036854775807L;
        this.initialPositionUs = -9223372036854775807L;
        this.consecutiveDroppedFrameCount = 0;
        if (z6) {
            Y1();
        } else {
            this.joiningDeadlineMs = -9223372036854775807L;
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    @TargetApi(17)
    protected void w() {
        try {
            super.w();
        } finally {
            if (this.videoFrameProcessorManager.f()) {
                this.videoFrameProcessorManager.n();
            }
            if (this.placeholderSurface != null) {
                T1();
            }
        }
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void x() {
        super.x();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.k();
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    @Nullable
    protected DecoderReuseEvaluation y0(FormatHolder formatHolder) throws ExoPlaybackException {
        DecoderReuseEvaluation decoderReuseEvaluationY0 = super.y0(formatHolder);
        this.eventDispatcher.p(formatHolder.format, decoderReuseEvaluationY0);
        return decoderReuseEvaluationY0;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer
    protected void z0(Format format, @Nullable MediaFormat mediaFormat) {
        boolean z6;
        int integer;
        int integer2;
        int i10;
        int i11;
        MediaCodecAdapter mediaCodecAdapterB0 = b0();
        if (mediaCodecAdapterB0 != null) {
            mediaCodecAdapterB0.setVideoScalingMode(this.scalingMode);
        }
        int i12 = 0;
        if (this.tunneling) {
            i11 = format.width;
            i10 = format.height;
        } else {
            Assertions.e(mediaFormat);
            if (mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP)) {
                z6 = true;
            } else {
                z6 = false;
            }
            if (z6) {
                integer = (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1;
            } else {
                integer = mediaFormat.getInteger("width");
            }
            if (z6) {
                integer2 = (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1;
            } else {
                integer2 = mediaFormat.getInteger("height");
            }
            int i13 = integer;
            i10 = integer2;
            i11 = i13;
        }
        float f = format.pixelWidthHeightRatio;
        if (t1()) {
            int i14 = format.rotationDegrees;
            if (i14 == 90 || i14 == 270) {
                f = 1.0f / f;
                int i15 = i10;
                i10 = i11;
                i11 = i15;
            }
        } else if (!this.videoFrameProcessorManager.f()) {
            i12 = format.rotationDegrees;
        }
        this.decodedVideoSize = new VideoSize(i11, i10, i12, f);
        this.frameReleaseHelper.g(format.frameRate);
        if (this.videoFrameProcessorManager.f()) {
            this.videoFrameProcessorManager.o(format.b().n0(i11).S(i10).f0(i12).c0(f).G());
        }
    }

    protected Pair<ColorInfo, ColorInfo> z1(@Nullable ColorInfo colorInfo) {
        if (!ColorInfo.f(colorInfo)) {
            ColorInfo colorInfo2 = ColorInfo.SDR_BT709_LIMITED;
            return Pair.create(colorInfo2, colorInfo2);
        }
        if (colorInfo.colorTransfer == 7) {
            return Pair.create(colorInfo, colorInfo.b().d(6).a());
        }
        return Pair.create(colorInfo, colorInfo);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecSelector mediaCodecSelector, long j6, boolean z6, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i10) {
        this(context, MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j6, z6, handler, videoRendererEventListener, i10, 30.0f);
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j6, boolean z6, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i10) {
        this(context, factory, mediaCodecSelector, j6, z6, handler, videoRendererEventListener, i10, 30.0f);
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecRenderer, androidx.media3.exoplayer.BaseRenderer
    protected void y() {
        this.joiningDeadlineMs = -9223372036854775807L;
        K1();
        M1();
        this.frameReleaseHelper.l();
        super.y();
    }

    public MediaCodecVideoRenderer(Context context, MediaCodecAdapter.Factory factory, MediaCodecSelector mediaCodecSelector, long j6, boolean z6, @Nullable Handler handler, @Nullable VideoRendererEventListener videoRendererEventListener, int i10, float f) {
        super(2, factory, mediaCodecSelector, z6, f);
        this.allowedJoiningTimeMs = j6;
        this.maxDroppedFramesToNotify = i10;
        Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        VideoFrameReleaseHelper videoFrameReleaseHelper = new VideoFrameReleaseHelper(applicationContext);
        this.frameReleaseHelper = videoFrameReleaseHelper;
        this.eventDispatcher = new VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.videoFrameProcessorManager = new VideoFrameProcessorManager(videoFrameReleaseHelper, this);
        this.deviceNeedsNoPostProcessWorkaround = w1();
        this.joiningDeadlineMs = -9223372036854775807L;
        this.scalingMode = 1;
        this.decodedVideoSize = VideoSize.UNKNOWN;
        this.tunnelingAudioSessionId = 0;
        s1();
    }
}
