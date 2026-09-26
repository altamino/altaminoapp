package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.MutableState;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
final class SelectionContainerKt$SelectionContainer$1$1 extends v implements l<Selection, l0> {
    final /* synthetic */ MutableState<Selection> $selection$delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectionContainerKt$SelectionContainer$1$1(MutableState<Selection> mutableState) {
        super(1);
        this.$selection$delegate = mutableState;
    }

    public final void a(@Nullable Selection selection) {
        SelectionContainerKt.e(this.$selection$delegate, selection);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Selection selection) {
        a(selection);
        return l0.INSTANCE;
    }
}
