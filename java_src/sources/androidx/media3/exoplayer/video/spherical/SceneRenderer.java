package androidx.media3.exoplayer.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.TimedValueQueue;
import androidx.media3.exoplayer.video.VideoFrameMetadataListener;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes11.dex */
final class SceneRenderer implements VideoFrameMetadataListener, CameraMotionListener {
    private static final String TAG = "SceneRenderer";

    @Nullable
    private byte[] lastProjectionData;
    private SurfaceTexture surfaceTexture;
    private int textureId;
    private final AtomicBoolean frameAvailable = new AtomicBoolean();
    private final AtomicBoolean resetRotationAtNextFrame = new AtomicBoolean(true);
    private final ProjectionRenderer projectionRenderer = new ProjectionRenderer();
    private final FrameRotationQueue frameRotationQueue = new FrameRotationQueue();
    private final TimedValueQueue<Long> sampleTimestampQueue = new TimedValueQueue<>();
    private final TimedValueQueue<Projection> projectionQueue = new TimedValueQueue<>();
    private final float[] rotationMatrix = new float[16];
    private final float[] tempMatrix = new float[16];
    private volatile int defaultStereoMode = 0;
    private int lastStereoMode = -1;

    public void h(int i10) {
        this.defaultStereoMode = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(SurfaceTexture surfaceTexture) {
        this.frameAvailable.set(true);
    }

    private void i(@Nullable byte[] bArr, int i10, long j6) {
        byte[] bArr2 = this.lastProjectionData;
        int i11 = this.lastStereoMode;
        this.lastProjectionData = bArr;
        if (i10 == -1) {
            i10 = this.defaultStereoMode;
        }
        this.lastStereoMode = i10;
        if (i11 == i10 && Arrays.equals(bArr2, this.lastProjectionData)) {
            return;
        }
        byte[] bArr3 = this.lastProjectionData;
        Projection projectionA = bArr3 != null ? ProjectionDecoder.a(bArr3, this.lastStereoMode) : null;
        if (projectionA == null || !ProjectionRenderer.c(projectionA)) {
            projectionA = Projection.b(this.lastStereoMode);
        }
        this.projectionQueue.a(j6, projectionA);
    }

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public void a(long j6, float[] fArr) {
        this.frameRotationQueue.e(j6, fArr);
    }

    @Override // androidx.media3.exoplayer.video.spherical.CameraMotionListener
    public void b() {
        this.sampleTimestampQueue.c();
        this.frameRotationQueue.d();
        this.resetRotationAtNextFrame.set(true);
    }

    public void d(float[] fArr, boolean z6) {
        GLES20.glClear(16384);
        try {
            GlUtil.d();
        } catch (GlUtil.GlException e) {
            Log.d(TAG, "Failed to draw a frame", e);
        }
        if (this.frameAvailable.compareAndSet(true, false)) {
            ((SurfaceTexture) Assertions.e(this.surfaceTexture)).updateTexImage();
            try {
                GlUtil.d();
            } catch (GlUtil.GlException e2) {
                Log.d(TAG, "Failed to draw a frame", e2);
            }
            if (this.resetRotationAtNextFrame.compareAndSet(true, false)) {
                GlUtil.l(this.rotationMatrix);
            }
            long timestamp = this.surfaceTexture.getTimestamp();
            Long lG = this.sampleTimestampQueue.g(timestamp);
            if (lG != null) {
                this.frameRotationQueue.c(this.rotationMatrix, lG.longValue());
            }
            Projection projectionJ = this.projectionQueue.j(timestamp);
            if (projectionJ != null) {
                this.projectionRenderer.d(projectionJ);
            }
        }
        Matrix.multiplyMM(this.tempMatrix, 0, fArr, 0, this.rotationMatrix, 0);
        this.projectionRenderer.a(this.textureId, this.tempMatrix, z6);
    }

    @Override // androidx.media3.exoplayer.video.VideoFrameMetadataListener
    public void e(long j6, long j10, Format format, @Nullable MediaFormat mediaFormat) {
        this.sampleTimestampQueue.a(j10, Long.valueOf(j6));
        i(format.projectionData, format.stereoMode, j10);
    }

    public SurfaceTexture f() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            GlUtil.d();
            this.projectionRenderer.b();
            GlUtil.d();
            this.textureId = GlUtil.h();
        } catch (GlUtil.GlException e) {
            Log.d(TAG, "Failed to initialize the renderer", e);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.textureId);
        this.surfaceTexture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: androidx.media3.exoplayer.video.spherical.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f693a.g(surfaceTexture2);
            }
        });
        return this.surfaceTexture;
    }
}
