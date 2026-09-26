package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class SubcomposeLayoutKt$SubcomposeLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<SubcomposeMeasureScope, Constraints, MeasureResult> $measurePolicy;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SubcomposeLayoutKt$SubcomposeLayout$2(Modifier modifier, p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> pVar, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$measurePolicy = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SubcomposeLayoutKt.a(this.$modifier, this.$measurePolicy, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
