package com.google.android.exoplayer2.video.spherical;

import android.content.Context;
import android.graphics.PointF;
import android.graphics.SurfaceTexture;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.WindowManager;
import androidx.annotation.AnyThread;
import androidx.annotation.BinderThread;
import androidx.annotation.Nullable;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.util.o;
import com.google.android.exoplayer2.util.o0;
import com.safedk.android.analytics.brandsafety.DetectTouchUtils;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes10.dex */
public final class l extends GLSurfaceView {
    private static final int FIELD_OF_VIEW_DEGREES = 90;
    private static final float PX_PER_DEGREES = 25.0f;
    static final float UPRIGHT_ROLL = 3.1415927f;
    private static final float Z_FAR = 100.0f;
    private static final float Z_NEAR = 0.1f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1370a = 0;
    private boolean isOrientationListenerRegistered;
    private boolean isStarted;
    private final Handler mainHandler;
    private final d orientationListener;

    @Nullable
    private final Sensor orientationSensor;
    private final i scene;
    private final SensorManager sensorManager;

    @Nullable
    private Surface surface;

    @Nullable
    private SurfaceTexture surfaceTexture;
    private final m touchTracker;
    private boolean useSensorRotation;
    private final CopyOnWriteArrayList<b> videoSurfaceListeners;

    @VisibleForTesting
    final class a implements GLSurfaceView.Renderer, m.a, d.a {
        private final float[] deviceOrientationMatrix;
        private float deviceRoll;
        private final i scene;
        private float touchPitch;
        private final float[] touchPitchMatrix;
        private final float[] touchYawMatrix;
        private final float[] projectionMatrix = new float[16];
        private final float[] viewProjectionMatrix = new float[16];
        private final float[] viewMatrix = new float[16];
        private final float[] tempMatrix = new float[16];

        @Override // com.google.android.exoplayer2.video.spherical.d.a
        @BinderThread
        public synchronized void a(float[] fArr, float f) {
            float[] fArr2 = this.deviceOrientationMatrix;
            System.arraycopy(fArr, 0, fArr2, 0, fArr2.length);
            this.deviceRoll = -f;
            d();
        }

        @Override // com.google.android.exoplayer2.video.spherical.m.a
        @UiThread
        public synchronized void b(PointF pointF) {
            this.touchPitch = pointF.y;
            d();
            Matrix.setRotateM(this.touchYawMatrix, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(GL10 gl10) {
            synchronized (this) {
                Matrix.multiplyMM(this.tempMatrix, 0, this.deviceOrientationMatrix, 0, this.touchYawMatrix, 0);
                Matrix.multiplyMM(this.viewMatrix, 0, this.touchPitchMatrix, 0, this.tempMatrix, 0);
            }
            Matrix.multiplyMM(this.viewProjectionMatrix, 0, this.projectionMatrix, 0, this.viewMatrix, 0);
            this.scene.d(this.viewProjectionMatrix, false);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(GL10 gl10, int i10, int i11) {
            GLES20.glViewport(0, 0, i10, i11);
            float f = i10 / i11;
            Matrix.perspectiveM(this.projectionMatrix, 0, c(f), f, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
            l.this.g(this.scene.e());
        }

        public a(i iVar) {
            float[] fArr = new float[16];
            this.deviceOrientationMatrix = fArr;
            float[] fArr2 = new float[16];
            this.touchPitchMatrix = fArr2;
            float[] fArr3 = new float[16];
            this.touchYawMatrix = fArr3;
            this.scene = iVar;
            o.j(fArr);
            o.j(fArr2);
            o.j(fArr3);
            this.deviceRoll = l.UPRIGHT_ROLL;
        }

        private float c(float f) {
            if (f > 1.0f) {
                return (float) (Math.toDegrees(Math.atan(Math.tan(Math.toRadians(45.0d)) / ((double) f))) * 2.0d);
            }
            return 90.0f;
        }

        @AnyThread
        private void d() {
            Matrix.setRotateM(this.touchPitchMatrix, 0, -this.touchPitch, (float) Math.cos(this.deviceRoll), (float) Math.sin(this.deviceRoll), 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.m.a
        @UiThread
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return l.this.performClick();
        }
    }

    public interface b {
        void q(Surface surface);

        void r(Surface surface);
    }

    public l(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent me) {
        DetectTouchUtils.viewOnTouch("com.google.android.exoplayer", this, me);
        return super.dispatchTouchEvent(me);
    }

    public com.google.android.exoplayer2.video.spherical.a getCameraMotionListener() {
        return this.scene;
    }

    public com.google.android.exoplayer2.video.k getVideoFrameMetadataListener() {
        return this.scene;
    }

    @Nullable
    public Surface getVideoSurface() {
        return this.surface;
    }

    @Override // android.view.SurfaceView, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (1 == 0) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        }
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.isStarted = false;
        j();
        super.onPause();
    }

    public l(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoSurfaceListeners = new CopyOnWriteArrayList<>();
        this.mainHandler = new Handler(Looper.getMainLooper());
        SensorManager sensorManager = (SensorManager) com.google.android.exoplayer2.util.a.e(context.getSystemService("sensor"));
        this.sensorManager = sensorManager;
        Sensor defaultSensor = o0.SDK_INT >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.orientationSensor = defaultSensor == null ? sensorManager.getDefaultSensor(11) : defaultSensor;
        i iVar = new i();
        this.scene = iVar;
        a aVar = new a(iVar);
        m mVar = new m(context, aVar, PX_PER_DEGREES);
        this.touchTracker = mVar;
        this.orientationListener = new d(((WindowManager) com.google.android.exoplayer2.util.a.e((WindowManager) context.getSystemService("window"))).getDefaultDisplay(), mVar, aVar);
        this.useSensorRotation = true;
        setEGLContextClientVersion(2);
        setRenderer(aVar);
        setOnTouchListener(mVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        Surface surface = this.surface;
        if (surface != null) {
            Iterator<b> it = this.videoSurfaceListeners.iterator();
            while (it.hasNext()) {
                it.next().q(surface);
            }
        }
        h(this.surfaceTexture, surface);
        this.surfaceTexture = null;
        this.surface = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(SurfaceTexture surfaceTexture) {
        SurfaceTexture surfaceTexture2 = this.surfaceTexture;
        Surface surface = this.surface;
        Surface surface2 = new Surface(surfaceTexture);
        this.surfaceTexture = surfaceTexture;
        this.surface = surface2;
        Iterator<b> it = this.videoSurfaceListeners.iterator();
        while (it.hasNext()) {
            it.next().r(surface2);
        }
        h(surfaceTexture2, surface);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(final SurfaceTexture surfaceTexture) {
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.spherical.j
            @Override // java.lang.Runnable
            public final void run() {
                this.f1367a.f(surfaceTexture);
            }
        });
    }

    private static void h(@Nullable SurfaceTexture surfaceTexture, @Nullable Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void j() {
        boolean z6 = this.useSensorRotation && this.isStarted;
        Sensor sensor = this.orientationSensor;
        if (sensor == null || z6 == this.isOrientationListenerRegistered) {
            return;
        }
        if (z6) {
            this.sensorManager.registerListener(this.orientationListener, sensor, 0);
        } else {
            this.sensorManager.unregisterListener(this.orientationListener);
        }
        this.isOrientationListenerRegistered = z6;
    }

    public void d(b bVar) {
        this.videoSurfaceListeners.add(bVar);
    }

    public void i(b bVar) {
        this.videoSurfaceListeners.remove(bVar);
    }

    public void setDefaultStereoMode(int i10) {
        this.scene.h(i10);
    }

    public void setUseSensorRotation(boolean z6) {
        this.useSensorRotation = z6;
        j();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mainHandler.post(new Runnable() { // from class: com.google.android.exoplayer2.video.spherical.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f1369a.e();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.isStarted = true;
        j();
    }
}
