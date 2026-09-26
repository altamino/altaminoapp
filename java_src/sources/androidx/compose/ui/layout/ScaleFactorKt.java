package androidx.compose.ui.layout;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;

/* JADX INFO: loaded from: classes9.dex */
public final class ScaleFactorKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(float f) {
        float f6 = 10;
        float f7 = f * f6;
        int i10 = (int) f7;
        if (f7 - i10 >= 0.5f) {
            i10++;
        }
        return i10 / f6;
    }

    @Stable
    public static final long a(float f, float f6) {
        return ScaleFactor.a((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }

    @Stable
    public static final long d(long j6, long j10) {
        return SizeKt.a(Size.i(j6) * ScaleFactor.c(j10), Size.g(j6) * ScaleFactor.d(j10));
    }
}
