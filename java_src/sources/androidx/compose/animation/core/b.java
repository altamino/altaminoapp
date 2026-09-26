package androidx.compose.animation.core;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class b {
    public static /* synthetic */ int a(double d) {
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }
}
