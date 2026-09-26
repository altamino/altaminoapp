package androidx.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.TimedValueQueue;

/* JADX INFO: loaded from: classes9.dex */
final class FrameRotationQueue {
    private boolean recenterMatrixComputed;
    private final float[] recenterMatrix = new float[16];
    private final float[] rotationMatrix = new float[16];
    private final TimedValueQueue<float[]> rotations = new TimedValueQueue<>();

    private static void b(float[] fArr, float[] fArr2) {
        float f = fArr2[0];
        float f6 = -fArr2[1];
        float f7 = -fArr2[2];
        float length = Matrix.length(f, f6, f7);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f / length, f6 / length, f7 / length);
        } else {
            GlUtil.l(fArr);
        }
    }

    public boolean c(float[] fArr, long j6) {
        float[] fArrJ = this.rotations.j(j6);
        if (fArrJ == null) {
            return false;
        }
        b(this.rotationMatrix, fArrJ);
        if (!this.recenterMatrixComputed) {
            a(this.recenterMatrix, this.rotationMatrix);
            this.recenterMatrixComputed = true;
        }
        Matrix.multiplyMM(fArr, 0, this.recenterMatrix, 0, this.rotationMatrix, 0);
        return true;
    }

    public void d() {
        this.rotations.c();
        this.recenterMatrixComputed = false;
    }

    public void e(long j6, float[] fArr) {
        this.rotations.a(j6, fArr);
    }

    public static void a(float[] fArr, float[] fArr2) {
        GlUtil.l(fArr);
        float f = fArr2[10];
        float f6 = fArr2[8];
        float fSqrt = (float) Math.sqrt((f * f) + (f6 * f6));
        float f7 = fArr2[10];
        fArr[0] = f7 / fSqrt;
        float f10 = fArr2[8];
        fArr[2] = f10 / fSqrt;
        fArr[8] = (-f10) / fSqrt;
        fArr[10] = f7 / fSqrt;
    }
}
