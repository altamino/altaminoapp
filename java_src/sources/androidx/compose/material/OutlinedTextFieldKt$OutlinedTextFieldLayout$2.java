package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Size;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class OutlinedTextFieldKt$OutlinedTextFieldLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ float $animationProgress;
    final /* synthetic */ p<Composer, Integer, l0> $border;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leading;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<Size, l0> $onLabelMeasured;
    final /* synthetic */ PaddingValues $paddingValues;
    final /* synthetic */ q<Modifier, Composer, Integer, l0> $placeholder;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $textField;
    final /* synthetic */ p<Composer, Integer, l0> $trailing;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    OutlinedTextFieldKt$OutlinedTextFieldLayout$2(Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, q<? super Modifier, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar2, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, boolean z6, float f, l<? super Size, l0> lVar, p<? super Composer, ? super Integer, l0> pVar5, PaddingValues paddingValues, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$textField = pVar;
        this.$placeholder = qVar;
        this.$label = pVar2;
        this.$leading = pVar3;
        this.$trailing = pVar4;
        this.$singleLine = z6;
        this.$animationProgress = f;
        this.$onLabelMeasured = lVar;
        this.$border = pVar5;
        this.$paddingValues = paddingValues;
        this.$$changed = i10;
        this.$$changed1 = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        OutlinedTextFieldKt.c(this.$modifier, this.$textField, this.$placeholder, this.$label, this.$leading, this.$trailing, this.$singleLine, this.$animationProgress, this.$onLabelMeasured, this.$border, this.$paddingValues, composer, this.$$changed | 1, this.$$changed1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
