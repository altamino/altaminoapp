package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$onPositionedModifier$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ boolean $enabled;
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ TextFieldState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$onPositionedModifier$1(TextFieldState textFieldState, boolean z6, TextFieldSelectionManager textFieldSelectionManager) {
        super(1);
        this.$state = textFieldState;
        this.$enabled = z6;
        this.$manager = textFieldSelectionManager;
    }

    public final void a(@NotNull LayoutCoordinates it) {
        t.j(it, "it");
        this.$state.u(it);
        if (this.$enabled) {
            if (this.$state.c() == HandleState.Selection) {
                if (this.$state.n()) {
                    this.$manager.a0();
                } else {
                    this.$manager.J();
                }
                this.$state.z(TextFieldSelectionManagerKt.c(this.$manager, true));
                this.$state.y(TextFieldSelectionManagerKt.c(this.$manager, false));
            } else if (this.$state.c() == HandleState.Cursor) {
                this.$state.w(TextFieldSelectionManagerKt.c(this.$manager, true));
            }
        }
        TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
        if (textLayoutResultProxyG == null) {
            return;
        }
        textLayoutResultProxyG.m(it);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
