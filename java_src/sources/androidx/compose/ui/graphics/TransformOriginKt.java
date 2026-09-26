package androidx.compose.ui.graphics;

/* JADX INFO: loaded from: classes3.dex */
public final class TransformOriginKt {
    public static final long a(float f, float f6) {
        return TransformOrigin.c((((long) Float.floatToIntBits(f6)) & 4294967295L) | (Float.floatToIntBits(f) << 32));
    }
}
