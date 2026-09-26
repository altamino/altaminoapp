package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composer;
import e8.p;
import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class VectorPainter$RenderVector$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ r<Float, Float, Composer, Integer, l0> $content;
    final /* synthetic */ String $name;
    final /* synthetic */ VectorPainter $tmp0_rcvr;
    final /* synthetic */ float $viewportHeight;
    final /* synthetic */ float $viewportWidth;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VectorPainter$RenderVector$3(VectorPainter vectorPainter, String str, float f, float f6, r<? super Float, ? super Float, ? super Composer, ? super Integer, l0> rVar, int i10) {
        super(2);
        this.$tmp0_rcvr = vectorPainter;
        this.$name = str;
        this.$viewportWidth = f;
        this.$viewportHeight = f6;
        this.$content = rVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        this.$tmp0_rcvr.n(this.$name, this.$viewportWidth, this.$viewportHeight, this.$content, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
