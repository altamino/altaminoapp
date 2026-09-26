package androidx.compose.ui.node;

/* JADX INFO: loaded from: classes11.dex */
public final class HitTestResultKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long a(float f, boolean z6) {
        long j6;
        long jFloatToIntBits = Float.floatToIntBits(f);
        if (z6) {
            j6 = 1;
        } else {
            j6 = 0;
        }
        return DistanceAndInLayer.b((j6 & 4294967295L) | (jFloatToIntBits << 32));
    }
}
