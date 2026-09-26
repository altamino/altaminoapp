package androidx.compose.ui.graphics.colorspace;

import e8.l;
import j8.o;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class Rgb$eotf$1 extends v implements l<Double, Double> {
    final /* synthetic */ Rgb this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    Rgb$eotf$1(Rgb rgb) {
        super(1);
        this.this$0 = rgb;
    }

    @NotNull
    public final Double a(double d) {
        return this.this$0.m().invoke(Double.valueOf(o.l(d, this.this$0.min, this.this$0.max)));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }
}
