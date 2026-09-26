package androidx.compose.foundation.text;

import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$decorationBoxModifier$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ TextFieldState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$decorationBoxModifier$1(TextFieldState textFieldState) {
        super(1);
        this.$state = textFieldState;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        t.j(it, "it");
        TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
        if (textLayoutResultProxyG == null) {
            return;
        }
        textLayoutResultProxyG.l(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
