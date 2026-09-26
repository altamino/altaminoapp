package androidx.compose.ui.layout;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import e8.p;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LayoutKt$Layout$3 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ q<IntrinsicMeasureScope, List<? extends IntrinsicMeasurable>, Integer, Integer> $maxIntrinsicHeightMeasureBlock;
    final /* synthetic */ q<IntrinsicMeasureScope, List<? extends IntrinsicMeasurable>, Integer, Integer> $maxIntrinsicWidthMeasureBlock;
    final /* synthetic */ q<MeasureScope, List<? extends Measurable>, Constraints, MeasureResult> $measureBlock;
    final /* synthetic */ q<IntrinsicMeasureScope, List<? extends IntrinsicMeasurable>, Integer, Integer> $minIntrinsicHeightMeasureBlock;
    final /* synthetic */ q<IntrinsicMeasureScope, List<? extends IntrinsicMeasurable>, Integer, Integer> $minIntrinsicWidthMeasureBlock;
    final /* synthetic */ Modifier $modifier;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LayoutKt$Layout$3(p<? super Composer, ? super Integer, l0> pVar, q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> qVar, q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> qVar2, q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> qVar3, q<? super IntrinsicMeasureScope, ? super List<? extends IntrinsicMeasurable>, ? super Integer, Integer> qVar4, Modifier modifier, q<? super MeasureScope, ? super List<? extends Measurable>, ? super Constraints, ? extends MeasureResult> qVar5, int i10, int i11) {
        super(2);
        this.$content = pVar;
        this.$minIntrinsicWidthMeasureBlock = qVar;
        this.$minIntrinsicHeightMeasureBlock = qVar2;
        this.$maxIntrinsicWidthMeasureBlock = qVar3;
        this.$maxIntrinsicHeightMeasureBlock = qVar4;
        this.$modifier = modifier;
        this.$measureBlock = qVar5;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LayoutKt.a(this.$content, this.$minIntrinsicWidthMeasureBlock, this.$minIntrinsicHeightMeasureBlock, this.$maxIntrinsicWidthMeasureBlock, this.$maxIntrinsicHeightMeasureBlock, this.$modifier, this.$measureBlock, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
