package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.p;
import e8.q;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class TextFieldKt$TextFieldLayout$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ float $animationProgress;
    final /* synthetic */ p<Composer, Integer, l0> $label;
    final /* synthetic */ p<Composer, Integer, l0> $leading;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ PaddingValues $paddingValues;
    final /* synthetic */ q<Modifier, Composer, Integer, l0> $placeholder;
    final /* synthetic */ boolean $singleLine;
    final /* synthetic */ p<Composer, Integer, l0> $textField;
    final /* synthetic */ p<Composer, Integer, l0> $trailing;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldKt$TextFieldLayout$2(Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, q<? super Modifier, ? super Composer, ? super Integer, l0> qVar, p<? super Composer, ? super Integer, l0> pVar3, p<? super Composer, ? super Integer, l0> pVar4, boolean z6, float f, PaddingValues paddingValues, int i10) {
        super(2);
        this.$modifier = modifier;
        this.$textField = pVar;
        this.$label = pVar2;
        this.$placeholder = qVar;
        this.$leading = pVar3;
        this.$trailing = pVar4;
        this.$singleLine = z6;
        this.$animationProgress = f;
        this.$paddingValues = paddingValues;
        this.$$changed = i10;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TextFieldKt.c(this.$modifier, this.$textField, this.$label, this.$placeholder, this.$leading, this.$trailing, this.$singleLine, this.$animationProgress, this.$paddingValues, composer, this.$$changed | 1);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
