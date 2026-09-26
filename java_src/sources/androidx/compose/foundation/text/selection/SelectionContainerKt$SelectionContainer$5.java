package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SelectionContainerKt$SelectionContainer$5 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ p<Composer, Integer, l0> $children;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ l<Selection, l0> $onSelectionChange;
    final /* synthetic */ Selection $selection;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SelectionContainerKt$SelectionContainer$5(Modifier modifier, Selection selection, l<? super Selection, l0> lVar, p<? super Composer, ? super Integer, l0> pVar, int i10, int i11) {
        super(2);
        this.$modifier = modifier;
        this.$selection = selection;
        this.$onSelectionChange = lVar;
        this.$children = pVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        SelectionContainerKt.b(this.$modifier, this.$selection, this.$onSelectionChange, this.$children, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
