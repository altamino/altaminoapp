package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;

/* JADX INFO: loaded from: classes9.dex */
public final class VelocityKt {
    @Stable
    public static final long a(float f, float f6) {
        return Velocity.c((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }
}
