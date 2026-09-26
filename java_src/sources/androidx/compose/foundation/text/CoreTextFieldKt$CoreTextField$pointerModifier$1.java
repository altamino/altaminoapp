package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.text.input.OffsetMapping;
import e8.l;
import kotlin.jvm.internal.v;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$pointerModifier$1 extends v implements l<Offset, l0> {
    final /* synthetic */ FocusRequester $focusRequester;
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ boolean $readOnly;
    final /* synthetic */ TextFieldState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$pointerModifier$1(TextFieldState textFieldState, FocusRequester focusRequester, boolean z6, TextFieldSelectionManager textFieldSelectionManager, OffsetMapping offsetMapping) {
        super(1);
        this.$state = textFieldState;
        this.$focusRequester = focusRequester;
        this.$readOnly = z6;
        this.$manager = textFieldSelectionManager;
        this.$offsetMapping = offsetMapping;
    }

    public final void a(long j6) {
        CoreTextFieldKt.n(this.$state, this.$focusRequester, !this.$readOnly);
        if (this.$state.d()) {
            if (this.$state.c() == HandleState.Selection) {
                this.$manager.p(Offset.d(j6));
                return;
            }
            TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
            if (textLayoutResultProxyG != null) {
                TextFieldState textFieldState = this.$state;
                TextFieldDelegate.Companion.i(j6, textLayoutResultProxyG, textFieldState.j(), this.$offsetMapping, textFieldState.i());
                if (textFieldState.q().k().length() > 0) {
                    textFieldState.r(HandleState.Cursor);
                }
            }
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Offset offset) {
        a(offset.u());
        return l0.INSTANCE;
    }
}
