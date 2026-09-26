package androidx.media3.common.audio;

import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class ChannelMixingMatrix {
    private final float[] coefficients;
    private final int inputChannelCount;
    private final boolean isDiagonal;
    private final boolean isIdentity;
    private final boolean isZero;
    private final int outputChannelCount;

    private static float[] a(float[] fArr) {
        for (int i10 = 0; i10 < fArr.length; i10++) {
            if (fArr[i10] < 0.0f) {
                throw new IllegalArgumentException("Coefficient at index " + i10 + " is negative.");
            }
        }
        return fArr;
    }

    public int b() {
        return this.inputChannelCount;
    }

    public int d() {
        return this.outputChannelCount;
    }

    public boolean e() {
        return this.isIdentity;
    }

    public boolean f() {
        return this.inputChannelCount == this.outputChannelCount;
    }

    public float c(int i10, int i11) {
        return this.coefficients[(i10 * this.outputChannelCount) + i11];
    }

    public ChannelMixingMatrix(int i10, int i11, float[] fArr) {
        boolean z6;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (i10 > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        Assertions.b(z6, "Input channel count must be positive.");
        if (i11 > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.b(z10, "Output channel count must be positive.");
        if (fArr.length == i10 * i11) {
            z11 = true;
        } else {
            z11 = false;
        }
        Assertions.b(z11, "Coefficient array length is invalid.");
        this.inputChannelCount = i10;
        this.outputChannelCount = i11;
        this.coefficients = a(fArr);
        boolean z14 = true;
        boolean z15 = true;
        boolean z16 = true;
        for (int i12 = 0; i12 < i10; i12++) {
            for (int i13 = 0; i13 < i11; i13++) {
                float fC = c(i12, i13);
                if (i12 == i13) {
                    z13 = true;
                } else {
                    z13 = false;
                }
                if (fC != 1.0f && z13) {
                    z16 = false;
                }
                if (fC != 0.0f) {
                    z14 = false;
                    if (!z13) {
                        z15 = false;
                    }
                }
            }
        }
        this.isZero = z14;
        if (f() && z15) {
            z12 = true;
        } else {
            z12 = false;
        }
        this.isDiagonal = z12;
        this.isIdentity = z12 && z16;
    }
}
