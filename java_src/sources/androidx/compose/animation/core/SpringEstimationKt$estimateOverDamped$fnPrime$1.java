package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SpringEstimationKt$estimateOverDamped$fnPrime$1 extends v implements l<Double, Double> {
    final /* synthetic */ double $c1;
    final /* synthetic */ double $c2;
    final /* synthetic */ double $r1;
    final /* synthetic */ double $r2;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SpringEstimationKt$estimateOverDamped$fnPrime$1(double d, double d2, double d6, double d7) {
        super(1);
        this.$c1 = d;
        this.$r1 = d2;
        this.$c2 = d6;
        this.$r2 = d7;
    }

    @NotNull
    public final Double a(double d) {
        double d2 = this.$c1;
        double d6 = this.$r1;
        double dExp = d2 * d6 * Math.exp(d6 * d);
        double d7 = this.$c2;
        double d10 = this.$r2;
        return Double.valueOf(dExp + (d7 * d10 * Math.exp(d10 * d)));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }
}
