package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SpringEstimationKt$estimateCriticallyDamped$fnPrime$1 extends v implements l<Double, Double> {
    final /* synthetic */ double $c1;
    final /* synthetic */ double $c2;
    final /* synthetic */ double $r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SpringEstimationKt$estimateCriticallyDamped$fnPrime$1(double d, double d2, double d6) {
        super(1);
        this.$c2 = d;
        this.$r = d2;
        this.$c1 = d6;
    }

    @NotNull
    public final Double a(double d) {
        double d2 = this.$c2;
        double d6 = this.$r;
        return Double.valueOf(((d2 * ((d6 * d) + ((double) 1))) + (this.$c1 * d6)) * Math.exp(d6 * d));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }
}
