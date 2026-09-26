package androidx.compose.ui.graphics.vector;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import e8.r;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class VectorPainter$composeVector$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ r<Float, Float, Composer, Integer, l0> $composable;
    final /* synthetic */ VectorPainter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    VectorPainter$composeVector$1(r<? super Float, ? super Float, ? super Composer, ? super Integer, l0> rVar, VectorPainter vectorPainter) {
        super(2);
        this.$composable = rVar;
        this.this$0 = vectorPainter;
    }

    @Composable
    public final void a(@Nullable Composer composer, int i10) {
        if ((i10 & 11) == 2 && composer.b()) {
            composer.g();
        } else {
            this.$composable.invoke(Float.valueOf(this.this$0.vector.l()), Float.valueOf(this.this$0.vector.k()), composer, 0);
        }
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
