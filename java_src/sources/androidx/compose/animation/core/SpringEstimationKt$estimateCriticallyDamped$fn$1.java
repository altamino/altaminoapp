package androidx.compose.animation.core;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class SpringEstimationKt$estimateCriticallyDamped$fn$1 extends v implements l<Double, Double> {
    final /* synthetic */ double $c1;
    final /* synthetic */ double $c2;
    final /* synthetic */ double $r;
    final /* synthetic */ double $signedDelta;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SpringEstimationKt$estimateCriticallyDamped$fn$1(double d, double d2, double d6, double d7) {
        super(1);
        this.$c1 = d;
        this.$c2 = d2;
        this.$r = d6;
        this.$signedDelta = d7;
    }

    @NotNull
    public final Double a(double d) {
        return Double.valueOf(((this.$c1 + (this.$c2 * d)) * Math.exp(this.$r * d)) + this.$signedDelta);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }
}
