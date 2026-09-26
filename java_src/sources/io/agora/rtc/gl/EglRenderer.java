package io.agora.rtc.gl;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import android.view.Surface;
import io.agora.rtc.utils.ThreadUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public class EglRenderer {
    private static final long LOG_INTERVAL_SEC = 4;
    private static final int MAX_SURFACE_CLEAR_COUNT = 3;
    private static final String TAG = "EglRenderer";
    private RendererCommon.GlDrawer drawer;
    private EglBase eglBase;
    private int framesDropped;
    private int framesReceived;
    private int framesRendered;
    private float layoutAspectRatio;
    private long minRenderPeriodNs;
    private boolean mirror;
    private final String name;
    private long nextFrameTimeNs;
    private VideoFrame pendingFrame;
    private long renderSwapBufferTimeNs;
    private Handler renderThreadHandler;
    private long renderTimeNs;
    private long statisticsStartTimeNs;
    private final Object handlerLock = new Object();
    private final ArrayList<FrameListenerAndParams> frameListeners = new ArrayList<>();
    private final Object fpsReductionLock = new Object();
    private final VideoFrameDrawer frameDrawer = new VideoFrameDrawer();
    private final Matrix drawMatrix = new Matrix();
    private final Object frameLock = new Object();
    private final Object layoutLock = new Object();
    private final Object statisticsLock = new Object();
    private final Runnable logStatisticsRunnable = new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.1
        @Override // java.lang.Runnable
        public void run() {
            EglRenderer.this.logStatistics();
            synchronized (EglRenderer.this.handlerLock) {
                try {
                    if (EglRenderer.this.renderThreadHandler != null) {
                        EglRenderer.this.renderThreadHandler.removeCallbacks(EglRenderer.this.logStatisticsRunnable);
                        EglRenderer.this.renderThreadHandler.postDelayed(EglRenderer.this.logStatisticsRunnable, TimeUnit.SECONDS.toMillis(4L));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private final EglSurfaceCreation eglSurfaceCreationRunnable = new EglSurfaceCreation();

    private class EglSurfaceCreation implements Runnable {
        private Object surface;

        private EglSurfaceCreation() {
        }

        @Override // java.lang.Runnable
        public synchronized void run() {
            try {
                if (this.surface != null && EglRenderer.this.eglBase != null && !EglRenderer.this.eglBase.hasSurface()) {
                    Object obj = this.surface;
                    if (obj instanceof Surface) {
                        EglRenderer.this.eglBase.createSurface((Surface) this.surface);
                    } else {
                        if (!(obj instanceof SurfaceTexture)) {
                            throw new IllegalStateException("Invalid surface: " + this.surface);
                        }
                        EglRenderer.this.eglBase.createSurface((SurfaceTexture) this.surface);
                    }
                    EglRenderer.this.eglBase.makeCurrent();
                    GLES20.glPixelStorei(3317, 1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void setSurface(Object surface) {
            this.surface = surface;
        }
    }

    public interface FrameListener {
        void onFrame(Bitmap frame);
    }

    public void addFrameListener(final FrameListener listener, final float scale) {
        addFrameListener(listener, scale, null, false);
    }

    public void clearImage() {
        clearImage(0.0f, 0.0f, 0.0f, 0.0f);
    }

    public void createEglSurface(Surface surface) {
        createEglSurfaceInternal(surface);
    }

    public void pauseVideo() {
        setFpsReduction(0.0f);
    }

    private static class FrameListenerAndParams {
        public final boolean applyFpsReduction;
        public final RendererCommon.GlDrawer drawer;
        public final FrameListener listener;
        public final float scale;

        public FrameListenerAndParams(FrameListener listener, float scale, RendererCommon.GlDrawer drawer, boolean applyFpsReduction) {
            this.listener = listener;
            this.scale = scale;
            this.drawer = drawer;
            this.applyFpsReduction = applyFpsReduction;
        }
    }

    private String averageTimeAsString(long sumTimeNs, int count) {
        if (count <= 0) {
            return "NA";
        }
        return TimeUnit.NANOSECONDS.toMicros(sumTimeNs / ((long) count)) + " us";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSurfaceOnRenderThread(float r, float g, float b7, float a7) {
        EglBase eglBase = this.eglBase;
        if (eglBase == null || !eglBase.hasSurface()) {
            return;
        }
        logD("clearSurface");
        GLES20.glClearColor(r, g, b7, a7);
        GLES20.glClear(16384);
        this.eglBase.swapBuffers();
    }

    private void createEglSurfaceInternal(Object surface) {
        this.eglSurfaceCreationRunnable.setSurface(surface);
        postToRenderThread(this.eglSurfaceCreationRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logD(String string) {
        Log.d(TAG, this.name + string);
    }

    private void postToRenderThread(Runnable runnable) {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler != null) {
                    handler.post(runnable);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void renderFrameOnRenderThread() {
        boolean z6;
        float f;
        float f6;
        float f7;
        synchronized (this.frameLock) {
            try {
                VideoFrame videoFrame = this.pendingFrame;
                if (videoFrame == null) {
                    return;
                }
                this.pendingFrame = null;
                EglBase eglBase = this.eglBase;
                if (eglBase == null || !eglBase.hasSurface()) {
                    logD("Dropping frame - No surface");
                    videoFrame.release();
                    return;
                }
                synchronized (this.fpsReductionLock) {
                    try {
                        long j6 = this.minRenderPeriodNs;
                        z6 = false;
                        if (j6 != Long.MAX_VALUE) {
                            if (j6 <= 0) {
                                z6 = true;
                            } else {
                                long jNanoTime = System.nanoTime();
                                long j10 = this.nextFrameTimeNs;
                                if (jNanoTime < j10) {
                                    logD("Skipping frame rendering - fps reduction is active.");
                                } else {
                                    long j11 = j10 + this.minRenderPeriodNs;
                                    this.nextFrameTimeNs = j11;
                                    this.nextFrameTimeNs = Math.max(j11, jNanoTime);
                                    z6 = true;
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                long jNanoTime2 = System.nanoTime();
                float rotatedWidth = videoFrame.getRotatedWidth() / videoFrame.getRotatedHeight();
                synchronized (this.layoutLock) {
                    f = this.layoutAspectRatio;
                    if (f == 0.0f) {
                        f = rotatedWidth;
                    }
                }
                if (rotatedWidth > f) {
                    f7 = f / rotatedWidth;
                    f6 = 1.0f;
                } else {
                    f6 = rotatedWidth / f;
                    f7 = 1.0f;
                }
                this.drawMatrix.reset();
                this.drawMatrix.preTranslate(0.5f, 0.5f);
                if (this.mirror) {
                    this.drawMatrix.preScale(-1.0f, 1.0f);
                }
                this.drawMatrix.preScale(f7, f6);
                this.drawMatrix.preTranslate(-0.5f, -0.5f);
                if (z6) {
                    GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
                    GLES20.glClear(16384);
                    this.frameDrawer.drawFrame(videoFrame, this.drawer, this.drawMatrix, 0, 0, this.eglBase.surfaceWidth(), this.eglBase.surfaceHeight());
                    long jNanoTime3 = System.nanoTime();
                    this.eglBase.swapBuffers();
                    long jNanoTime4 = System.nanoTime();
                    synchronized (this.statisticsLock) {
                        this.framesRendered++;
                        this.renderTimeNs += jNanoTime4 - jNanoTime2;
                        this.renderSwapBufferTimeNs += jNanoTime4 - jNanoTime3;
                    }
                }
                videoFrame.release();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private void resetStatistics(long currentTimeNs) {
        synchronized (this.statisticsLock) {
            this.statisticsStartTimeNs = currentTimeNs;
            this.framesReceived = 0;
            this.framesDropped = 0;
            this.framesRendered = 0;
            this.renderTimeNs = 0L;
            this.renderSwapBufferTimeNs = 0L;
        }
    }

    public void addFrameListener(final FrameListener listener, final float scale, final RendererCommon.GlDrawer drawerParam) {
        addFrameListener(listener, scale, drawerParam, false);
    }

    public void clearImage(final float r, final float g, final float b7, final float a7) {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler == null) {
                    return;
                }
                handler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.9
                    @Override // java.lang.Runnable
                    public void run() {
                        EglRenderer.this.clearSurfaceOnRenderThread(r, g, b7, a7);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void createEglSurface(SurfaceTexture surfaceTexture) {
        createEglSurfaceInternal(surfaceTexture);
    }

    public void disableFpsReduction() {
        setFpsReduction(Float.POSITIVE_INFINITY);
    }

    public EglBase.Context getEglContext() {
        return this.eglBase.getEglBaseContext();
    }

    public void init(final EglBase.Context sharedContext, final int[] configAttributes, RendererCommon.GlDrawer drawer) {
        synchronized (this.handlerLock) {
            try {
                if (this.renderThreadHandler != null) {
                    throw new IllegalStateException(this.name + "Already initialized");
                }
                logD("Initializing EglRenderer");
                this.drawer = drawer;
                HandlerThread handlerThread = new HandlerThread(this.name + TAG);
                handlerThread.start();
                Handler handler = new Handler(handlerThread.getLooper());
                this.renderThreadHandler = handler;
                ThreadUtils.invokeAtFrontUninterruptibly(handler, new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.2
                    @Override // java.lang.Runnable
                    public void run() {
                        if (sharedContext == null) {
                            EglRenderer.this.logD("EglBase.create context");
                            EglRenderer.this.eglBase = EglBase.create(sharedContext, configAttributes);
                        } else {
                            EglRenderer.this.logD("EglBase.create shared context");
                            EglRenderer.this.eglBase = EglBase.create(sharedContext, configAttributes);
                        }
                    }
                });
                this.renderThreadHandler.post(this.eglSurfaceCreationRunnable);
                resetStatistics(System.nanoTime());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void onFrame(VideoFrame frame) {
        boolean z6;
        synchronized (this.statisticsLock) {
            this.framesReceived++;
        }
        synchronized (this.handlerLock) {
            try {
                if (this.renderThreadHandler == null) {
                    logD("Dropping frame - Not initialized or already released.");
                    return;
                }
                synchronized (this.frameLock) {
                    try {
                        VideoFrame videoFrame = this.pendingFrame;
                        z6 = videoFrame != null;
                        if (z6) {
                            videoFrame.release();
                        }
                        this.pendingFrame = frame;
                        frame.retain();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                ThreadUtils.invokeAtFrontUninterruptibly(this.renderThreadHandler, new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.7
                    @Override // java.lang.Runnable
                    public void run() {
                        EglRenderer.this.renderFrameOnRenderThread();
                    }
                });
                if (z6) {
                    synchronized (this.statisticsLock) {
                        this.framesDropped++;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void printStackTrace() {
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                Thread thread = handler == null ? null : handler.getLooper().getThread();
                if (thread != null) {
                    StackTraceElement[] stackTrace = thread.getStackTrace();
                    if (stackTrace.length > 0) {
                        logD("EglRenderer stack trace:");
                        for (StackTraceElement stackTraceElement : stackTrace) {
                            logD(stackTraceElement.toString());
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void release() {
        logD("Releasing.");
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler == null) {
                    logD("Already released");
                    return;
                }
                handler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (EglRenderer.this.drawer != null) {
                            EglRenderer.this.drawer.release();
                            EglRenderer.this.drawer = null;
                        }
                        EglRenderer.this.frameDrawer.release();
                        if (EglRenderer.this.eglBase != null) {
                            EglRenderer.this.logD("eglBase detach and release.");
                            EglRenderer.this.eglBase.detachCurrent();
                            EglRenderer.this.eglBase.release();
                            EglRenderer.this.eglBase = null;
                        }
                    }
                });
                final Looper looper = this.renderThreadHandler.getLooper();
                this.renderThreadHandler.post(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.4
                    @Override // java.lang.Runnable
                    public void run() {
                        EglRenderer.this.logD("Quitting render thread.");
                        looper.quit();
                        countDownLatch.countDown();
                    }
                });
                ThreadUtils.awaitUninterruptibly(countDownLatch);
                this.renderThreadHandler = null;
                synchronized (this.frameLock) {
                    try {
                        VideoFrame videoFrame = this.pendingFrame;
                        if (videoFrame != null) {
                            videoFrame.release();
                            this.pendingFrame = null;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                logD("Releasing done.");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void releaseEglSurface(final Runnable completionCallback) {
        this.eglSurfaceCreationRunnable.setSurface(null);
        synchronized (this.handlerLock) {
            try {
                Handler handler = this.renderThreadHandler;
                if (handler == null) {
                    completionCallback.run();
                } else {
                    handler.removeCallbacks(this.eglSurfaceCreationRunnable);
                    this.renderThreadHandler.postAtFrontOfQueue(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.8
                        @Override // java.lang.Runnable
                        public void run() {
                            if (EglRenderer.this.eglBase != null) {
                                EglRenderer.this.eglBase.detachCurrent();
                                EglRenderer.this.eglBase.releaseSurface();
                            }
                            completionCallback.run();
                        }
                    });
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setFpsReduction(float fps) {
        logD("setFpsReduction: " + fps);
        synchronized (this.fpsReductionLock) {
            try {
                long j6 = this.minRenderPeriodNs;
                if (fps <= 0.0f) {
                    this.minRenderPeriodNs = Long.MAX_VALUE;
                } else {
                    this.minRenderPeriodNs = (long) (TimeUnit.SECONDS.toNanos(1L) / fps);
                }
                if (this.minRenderPeriodNs != j6) {
                    this.nextFrameTimeNs = System.nanoTime();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void setLayoutAspectRatio(float layoutAspectRatio) {
        logD("setLayoutAspectRatio: " + layoutAspectRatio);
        synchronized (this.layoutLock) {
            this.layoutAspectRatio = layoutAspectRatio;
        }
    }

    public void setMirror(final boolean mirror) {
        logD("setMirror: " + mirror);
        synchronized (this.layoutLock) {
            this.mirror = mirror;
        }
    }

    public EglRenderer(String name) {
        this.name = name;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void logStatistics() {
        long jNanoTime = System.nanoTime();
        synchronized (this.statisticsLock) {
            try {
                long j6 = jNanoTime - this.statisticsStartTimeNs;
                if (j6 <= 0) {
                    return;
                }
                logD("Duration: " + TimeUnit.NANOSECONDS.toMillis(j6) + " ms. Frames received: " + this.framesReceived + ". Dropped: " + this.framesDropped + ". Rendered: " + this.framesRendered + ". Render fps: " + String.format(Locale.US, "%.1f", Float.valueOf((((long) this.framesRendered) * TimeUnit.SECONDS.toNanos(1L)) / j6)) + ". Average render time: " + averageTimeAsString(this.renderTimeNs, this.framesRendered) + ". Average swapBuffer time: " + averageTimeAsString(this.renderSwapBufferTimeNs, this.framesRendered) + ".");
                resetStatistics(jNanoTime);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addFrameListener(final FrameListener listener, final float scale, final RendererCommon.GlDrawer drawerParam, final boolean applyFpsReduction) {
        postToRenderThread(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.5
            @Override // java.lang.Runnable
            public void run() {
                RendererCommon.GlDrawer glDrawer = drawerParam;
                if (glDrawer == null) {
                    glDrawer = EglRenderer.this.drawer;
                }
                EglRenderer.this.frameListeners.add(new FrameListenerAndParams(listener, scale, glDrawer, applyFpsReduction));
            }
        });
    }

    public void removeFrameListener(final FrameListener listener) {
        if (Thread.currentThread() != this.renderThreadHandler.getLooper().getThread()) {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            postToRenderThread(new Runnable() { // from class: io.agora.rtc.gl.EglRenderer.6
                @Override // java.lang.Runnable
                public void run() {
                    countDownLatch.countDown();
                    Iterator it = EglRenderer.this.frameListeners.iterator();
                    while (it.hasNext()) {
                        if (((FrameListenerAndParams) it.next()).listener == listener) {
                            it.remove();
                        }
                    }
                }
            });
            ThreadUtils.awaitUninterruptibly(countDownLatch);
            return;
        }
        throw new RuntimeException("removeFrameListener must not be called on the render thread.");
    }

    public void renderFrame(VideoFrame frame) {
        onFrame(frame);
    }
}
