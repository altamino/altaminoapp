package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.text.TextStyle;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class TextFieldImplKt$Decoration$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $content;
    final /* synthetic */ Float $contentAlpha;
    final /* synthetic */ long $contentColor;
    final /* synthetic */ TextStyle $typography;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    TextFieldImplKt$Decoration$1(long j6, TextStyle textStyle, Float f, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$contentColor = j6;
        this.$typography = textStyle;
        this.$contentAlpha = f;
        this.$content = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        TextFieldImplKt.b(this.$contentColor, this.$typography, this.$contentAlpha, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
