package androidx.compose.foundation;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class CanvasKt$Canvas$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ String $contentDescription;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<DrawScope, l0> $onDraw;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    CanvasKt$Canvas$3(Modifier modifier, String str, l<? super DrawScope, l0> lVar, int i10) {
        super(2);
        this.$modifier = modifier;
        this.$contentDescription = str;
        this.$onDraw = lVar;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        CanvasKt.b(this.$modifier, this.$contentDescription, this.$onDraw, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
