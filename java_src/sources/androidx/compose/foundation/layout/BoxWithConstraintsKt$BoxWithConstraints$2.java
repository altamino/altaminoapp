package androidx.compose.foundation.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class BoxWithConstraintsKt$BoxWithConstraints$2 extends v implements e8.p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ q<BoxWithConstraintsScope, Composer, Integer, l0> $content;
    final /* synthetic */ Alignment $contentAlignment;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ boolean $propagateMinConstraints;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BoxWithConstraintsKt$BoxWithConstraints$2(Modifier modifier, Alignment alignment, boolean z6, q<? super BoxWithConstraintsScope, ? super Composer, ? super Integer, l0> qVar, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$contentAlignment = alignment;
        this.$propagateMinConstraints = z6;
        this.$content = qVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        BoxWithConstraintsKt.a(this.$modifier, this.$contentAlignment, this.$propagateMinConstraints, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
