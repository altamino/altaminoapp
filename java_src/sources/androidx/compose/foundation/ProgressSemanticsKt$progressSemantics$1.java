package androidx.compose.foundation;

import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import j8.e;
import j8.o;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class ProgressSemanticsKt$progressSemantics$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ int $steps;
    final /* synthetic */ float $value;
    final /* synthetic */ e<Float> $valueRange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ProgressSemanticsKt$progressSemantics$1(float f, e<Float> eVar, int i10) {
        super(1);
        this.$value = f;
        this.$valueRange = eVar;
        this.$steps = i10;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.P(semantics, new ProgressBarRangeInfo(((Number) o.q(Float.valueOf(this.$value), this.$valueRange)).floatValue(), this.$valueRange, this.$steps));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
