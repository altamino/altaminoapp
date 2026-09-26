package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SpringEstimationKt$estimateOverDamped$fn$1 extends v implements l<Double, Double> {
    final /* synthetic */ double $c1;
    final /* synthetic */ double $c2;
    final /* synthetic */ double $r1;
    final /* synthetic */ double $r2;
    final /* synthetic */ double $signedDelta;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SpringEstimationKt$estimateOverDamped$fn$1(double d, double d2, double d6, double d7, double d10) {
        super(1);
        this.$c1 = d;
        this.$r1 = d2;
        this.$c2 = d6;
        this.$r2 = d7;
        this.$signedDelta = d10;
    }

    @NotNull
    public final Double a(double d) {
        return Double.valueOf((this.$c1 * Math.exp(this.$r1 * d)) + (this.$c2 * Math.exp(this.$r2 * d)) + this.$signedDelta);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }
}
