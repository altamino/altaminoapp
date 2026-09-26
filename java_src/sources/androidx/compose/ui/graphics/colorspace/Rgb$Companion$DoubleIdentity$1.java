package androidx.compose.ui.graphics.colorspace;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class Rgb$Companion$DoubleIdentity$1 extends v implements l<Double, Double> {
    public static final Rgb$Companion$DoubleIdentity$1 INSTANCE = new Rgb$Companion$DoubleIdentity$1();

    Rgb$Companion$DoubleIdentity$1() {
        super(1);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }

    @NotNull
    public final Double a(double d) {
        return Double.valueOf(d);
    }
}
