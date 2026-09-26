package com.google.android.exoplayer2.video.spherical;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.o;
import com.google.android.exoplayer2.util.t;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes10.dex */
final class i implements com.google.android.exoplayer2.video.k, a {
    private static final String TAG = "SceneRenderer";

    @Nullable
    private byte[] lastProjectionData;
    private SurfaceTexture surfaceTexture;
    private int textureId;
    private final AtomicBoolean frameAvailable = new AtomicBoolean();
    private final AtomicBoolean resetRotationAtNextFrame = new AtomicBoolean(true);
    private final g projectionRenderer = new g();
    private final c frameRotationQueue = new c();
    private final k0<Long> sampleTimestampQueue = new k0<>();
    private final k0<e> projectionQueue = new k0<>();
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
        e eVarA = bArr3 != null ? f.a(bArr3, this.lastStereoMode) : null;
        if (eVarA == null || !g.c(eVarA)) {
            eVarA = e.b(this.lastStereoMode);
        }
        this.projectionQueue.a(j6, eVarA);
    }

    @Override // com.google.android.exoplayer2.video.spherical.a
    public void a(long j6, float[] fArr) {
        this.frameRotationQueue.e(j6, fArr);
    }

    @Override // com.google.android.exoplayer2.video.spherical.a
    public void b() {
        this.sampleTimestampQueue.c();
        this.frameRotationQueue.d();
        this.resetRotationAtNextFrame.set(true);
    }

    public void d(float[] fArr, boolean z6) {
        GLES20.glClear(16384);
        try {
            o.b();
        } catch (o.a e) {
            t.d(TAG, "Failed to draw a frame", e);
        }
        if (this.frameAvailable.compareAndSet(true, false)) {
            ((SurfaceTexture) com.google.android.exoplayer2.util.a.e(this.surfaceTexture)).updateTexImage();
            try {
                o.b();
            } catch (o.a e2) {
                t.d(TAG, "Failed to draw a frame", e2);
            }
            if (this.resetRotationAtNextFrame.compareAndSet(true, false)) {
                o.j(this.rotationMatrix);
            }
            long timestamp = this.surfaceTexture.getTimestamp();
            Long lG = this.sampleTimestampQueue.g(timestamp);
            if (lG != null) {
                this.frameRotationQueue.c(this.rotationMatrix, lG.longValue());
            }
            e eVarJ = this.projectionQueue.j(timestamp);
            if (eVarJ != null) {
                this.projectionRenderer.d(eVarJ);
            }
        }
        Matrix.multiplyMM(this.tempMatrix, 0, fArr, 0, this.rotationMatrix, 0);
        this.projectionRenderer.a(this.textureId, this.tempMatrix, z6);
    }

    public SurfaceTexture e() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            o.b();
            this.projectionRenderer.b();
            o.b();
            this.textureId = o.f();
        } catch (o.a e) {
            t.d(TAG, "Failed to initialize the renderer", e);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.textureId);
        this.surfaceTexture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: com.google.android.exoplayer2.video.spherical.h
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                this.f1366a.g(surfaceTexture2);
            }
        });
        return this.surfaceTexture;
    }

    @Override // com.google.android.exoplayer2.video.k
    public void f(long j6, long j10, a2 a2Var, @Nullable MediaFormat mediaFormat) {
        this.sampleTimestampQueue.a(j10, Long.valueOf(j6));
        i(a2Var.projectionData, a2Var.stereoMode, j10);
    }
}
