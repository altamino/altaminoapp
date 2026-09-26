package androidx.media3.exoplayer.video;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class VideoFrameReleaseHelper {
    private static final long MAX_ALLOWED_ADJUSTMENT_NS = 20000000;
    private static final int MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE = 30;
    private static final long MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS = 5000000000L;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE = 0.02f;
    private static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE = 1.0f;
    private static final String TAG = "VideoFrameReleaseHelper";
    private static final long VSYNC_OFFSET_PERCENTAGE = 80;
    private static final long VSYNC_SAMPLE_UPDATE_PERIOD_MS = 500;
    private int changeFrameRateStrategy;

    @Nullable
    private final DisplayHelper displayHelper;
    private float formatFrameRate;
    private long frameIndex;
    private final FixedFrameRateEstimator frameRateEstimator = new FixedFrameRateEstimator();
    private long lastAdjustedFrameIndex;
    private long lastAdjustedReleaseTimeNs;
    private long pendingLastAdjustedFrameIndex;
    private long pendingLastAdjustedReleaseTimeNs;
    private float playbackSpeed;
    private boolean started;

    @Nullable
    private Surface surface;
    private float surfaceMediaFrameRate;
    private float surfacePlaybackFrameRate;
    private long vsyncDurationNs;
    private long vsyncOffsetNs;

    @Nullable
    private final VSyncSampler vsyncSampler;

    /* JADX INFO: Access modifiers changed from: private */
    interface DisplayHelper {

        public interface Listener {
            void a(@Nullable Display display);
        }

        void a();

        void b(Listener listener);
    }

    private static final class DisplayHelperV16 implements DisplayHelper {
        private final WindowManager windowManager;

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper
        public void a() {
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper
        public void b(DisplayHelper.Listener listener) {
            listener.a(this.windowManager.getDefaultDisplay());
        }

        private DisplayHelperV16(WindowManager windowManager) {
            this.windowManager = windowManager;
        }

        @Nullable
        public static DisplayHelper c(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new DisplayHelperV16(windowManager);
            }
            return null;
        }
    }

    @RequiresApi
    private static final class DisplayHelperV17 implements DisplayHelper, DisplayManager.DisplayListener {
        private final DisplayManager displayManager;

        @Nullable
        private DisplayHelper.Listener listener;

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }

        private Display c() {
            return this.displayManager.getDisplay(0);
        }

        @Nullable
        public static DisplayHelper d(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new DisplayHelperV17(displayManager);
            }
            return null;
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper
        public void a() {
            this.displayManager.unregisterDisplayListener(this);
            this.listener = null;
        }

        @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper
        public void b(DisplayHelper.Listener listener) {
            this.listener = listener;
            this.displayManager.registerDisplayListener(this, Util.w());
            listener.a(c());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            DisplayHelper.Listener listener = this.listener;
            if (listener == null || i10 != 0) {
                return;
            }
            listener.a(c());
        }

        private DisplayHelperV17(DisplayManager displayManager) {
            this.displayManager = displayManager;
        }
    }

    private static final class VSyncSampler implements Choreographer.FrameCallback, Handler.Callback {
        private static final int CREATE_CHOREOGRAPHER = 0;
        private static final VSyncSampler INSTANCE = new VSyncSampler();
        private static final int MSG_ADD_OBSERVER = 1;
        private static final int MSG_REMOVE_OBSERVER = 2;
        private Choreographer choreographer;
        private final HandlerThread choreographerOwnerThread;
        private final Handler handler;
        private int observerCount;
        public volatile long sampledVsyncTimeNs = -9223372036854775807L;

        public static VSyncSampler d() {
            return INSTANCE;
        }

        private void b() {
            Choreographer choreographer = this.choreographer;
            if (choreographer != null) {
                int i10 = this.observerCount + 1;
                this.observerCount = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void f() {
            Choreographer choreographer = this.choreographer;
            if (choreographer != null) {
                int i10 = this.observerCount - 1;
                this.observerCount = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.sampledVsyncTimeNs = -9223372036854775807L;
                }
            }
        }

        public void a() {
            this.handler.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j6) {
            this.sampledVsyncTimeNs = j6;
            ((Choreographer) Assertions.e(this.choreographer)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.handler.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                c();
                return true;
            }
            if (i10 == 1) {
                b();
                return true;
            }
            if (i10 != 2) {
                return false;
            }
            f();
            return true;
        }

        private VSyncSampler() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.choreographerOwnerThread = handlerThread;
            handlerThread.start();
            Handler handlerV = Util.v(handlerThread.getLooper(), this);
            this.handler = handlerV;
            handlerV.sendEmptyMessage(0);
        }

        private void c() {
            try {
                this.choreographer = Choreographer.getInstance();
            } catch (RuntimeException e) {
                Log.j(VideoFrameReleaseHelper.TAG, "Vsync sampling disabled due to platform error", e);
            }
        }
    }

    private static boolean c(long j6, long j10) {
        return Math.abs(j6 - j10) <= MAX_ALLOWED_ADJUSTMENT_NS;
    }

    @Nullable
    private static DisplayHelper f(@Nullable Context context) {
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        DisplayHelper displayHelperD = Util.SDK_INT >= 17 ? DisplayHelperV17.d(applicationContext) : null;
        return displayHelperD == null ? DisplayHelperV16.c(applicationContext) : displayHelperD;
    }

    private void n() {
        this.frameIndex = 0L;
        this.lastAdjustedFrameIndex = -1L;
        this.pendingLastAdjustedFrameIndex = -1L;
    }

    public void k() {
        this.started = true;
        n();
        if (this.displayHelper != null) {
            ((VSyncSampler) Assertions.e(this.vsyncSampler)).a();
            this.displayHelper.b(new DisplayHelper.Listener() { // from class: androidx.media3.exoplayer.video.d
                @Override // androidx.media3.exoplayer.video.VideoFrameReleaseHelper.DisplayHelper.Listener
                public final void a(Display display) {
                    this.f666a.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.started = false;
        DisplayHelper displayHelper = this.displayHelper;
        if (displayHelper != null) {
            displayHelper.a();
            ((VSyncSampler) Assertions.e(this.vsyncSampler)).e();
        }
        d();
    }

    @RequiresApi
    private static final class Api30 {
        @DoNotInline
        public static void a(Surface surface, float f) {
            try {
                surface.setFrameRate(f, f == 0.0f ? 0 : 1);
            } catch (IllegalStateException e) {
                Log.d(VideoFrameReleaseHelper.TAG, "Failed to call Surface.setFrameRate", e);
            }
        }

        private Api30() {
        }
    }

    private void d() {
        Surface surface;
        if (Util.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || this.surfacePlaybackFrameRate == 0.0f) {
            return;
        }
        this.surfacePlaybackFrameRate = 0.0f;
        Api30.a(surface, 0.0f);
    }

    private static long e(long j6, long j10, long j11) {
        long j12;
        long j13 = j10 + (((j6 - j10) / j11) * j11);
        if (j6 <= j13) {
            j12 = j13 - j11;
        } else {
            j13 = j11 + j13;
            j12 = j13;
        }
        return j13 - j6 < j6 - j12 ? j13 : j12;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(@Nullable Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / ((double) display.getRefreshRate()));
            this.vsyncDurationNs = refreshRate;
            this.vsyncOffsetNs = (refreshRate * VSYNC_OFFSET_PERCENTAGE) / 100;
        } else {
            Log.i(TAG, "Unable to query display refresh rate");
            this.vsyncDurationNs = -9223372036854775807L;
            this.vsyncOffsetNs = -9223372036854775807L;
        }
    }

    private void q() {
        if (Util.SDK_INT < 30 || this.surface == null) {
            return;
        }
        float fB = this.frameRateEstimator.e() ? this.frameRateEstimator.b() : this.formatFrameRate;
        float f = this.surfaceMediaFrameRate;
        if (fB == f) {
            return;
        }
        if (fB != -1.0f && f != -1.0f) {
            if (Math.abs(fB - this.surfaceMediaFrameRate) < ((!this.frameRateEstimator.e() || this.frameRateEstimator.d() < MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS) ? 1.0f : MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE)) {
                return;
            }
        } else if (fB == -1.0f && this.frameRateEstimator.c() < 30) {
            return;
        }
        this.surfaceMediaFrameRate = fB;
        r(false);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0021  */
    private void r(boolean z6) {
        Surface surface;
        float f;
        if (Util.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE) {
            return;
        }
        if (this.started) {
            float f6 = this.surfaceMediaFrameRate;
            if (f6 != -1.0f) {
                f = f6 * this.playbackSpeed;
            } else {
                f = 0.0f;
            }
        } else {
            f = 0.0f;
        }
        if (z6 || this.surfacePlaybackFrameRate != f) {
            this.surfacePlaybackFrameRate = f;
            Api30.a(surface, f);
        }
    }

    public long b(long j6) {
        long j10;
        if (this.lastAdjustedFrameIndex == -1 || !this.frameRateEstimator.e()) {
            j10 = j6;
        } else {
            long jA = this.lastAdjustedReleaseTimeNs + ((long) ((this.frameRateEstimator.a() * (this.frameIndex - this.lastAdjustedFrameIndex)) / this.playbackSpeed));
            if (c(j6, jA)) {
                j10 = jA;
            } else {
                n();
                j10 = j6;
            }
        }
        this.pendingLastAdjustedFrameIndex = this.frameIndex;
        this.pendingLastAdjustedReleaseTimeNs = j10;
        VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler == null || this.vsyncDurationNs == -9223372036854775807L) {
            return j10;
        }
        long j11 = vSyncSampler.sampledVsyncTimeNs;
        return j11 == -9223372036854775807L ? j10 : e(j10, j11, this.vsyncDurationNs) - this.vsyncOffsetNs;
    }

    public void g(float f) {
        this.formatFrameRate = f;
        this.frameRateEstimator.g();
        q();
    }

    public void h(long j6) {
        long j10 = this.pendingLastAdjustedFrameIndex;
        if (j10 != -1) {
            this.lastAdjustedFrameIndex = j10;
            this.lastAdjustedReleaseTimeNs = this.pendingLastAdjustedReleaseTimeNs;
        }
        this.frameIndex++;
        this.frameRateEstimator.f(j6 * 1000);
        q();
    }

    public void i(float f) {
        this.playbackSpeed = f;
        n();
        r(false);
    }

    public void m(@Nullable Surface surface) {
        if (surface instanceof PlaceholderSurface) {
            surface = null;
        }
        if (this.surface == surface) {
            return;
        }
        d();
        this.surface = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.changeFrameRateStrategy == i10) {
            return;
        }
        this.changeFrameRateStrategy = i10;
        r(true);
    }

    public VideoFrameReleaseHelper(@Nullable Context context) {
        VSyncSampler vSyncSamplerD;
        DisplayHelper displayHelperF = f(context);
        this.displayHelper = displayHelperF;
        if (displayHelperF != null) {
            vSyncSamplerD = VSyncSampler.d();
        } else {
            vSyncSamplerD = null;
        }
        this.vsyncSampler = vSyncSamplerD;
        this.vsyncDurationNs = -9223372036854775807L;
        this.vsyncOffsetNs = -9223372036854775807L;
        this.formatFrameRate = -1.0f;
        this.playbackSpeed = 1.0f;
        this.changeFrameRateStrategy = 0;
    }

    public void j() {
        n();
    }
}
