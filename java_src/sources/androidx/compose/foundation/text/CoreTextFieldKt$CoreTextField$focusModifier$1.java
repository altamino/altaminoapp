package androidx.compose.foundation.text;

import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$focusModifier$1 extends v implements l<FocusState, l0> {
    final /* synthetic */ BringIntoViewRequester $bringIntoViewRequester;
    final /* synthetic */ o0 $coroutineScope;
    final /* synthetic */ ImeOptions $imeOptions;
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TextInputService $textInputService;
    final /* synthetic */ TextFieldValue $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$focusModifier$1(TextFieldState textFieldState, TextInputService textInputService, TextFieldValue textFieldValue, ImeOptions imeOptions, TextFieldSelectionManager textFieldSelectionManager, o0 o0Var, BringIntoViewRequester bringIntoViewRequester, OffsetMapping offsetMapping) {
        super(1);
        this.$state = textFieldState;
        this.$textInputService = textInputService;
        this.$value = textFieldValue;
        this.$imeOptions = imeOptions;
        this.$manager = textFieldSelectionManager;
        this.$coroutineScope = o0Var;
        this.$bringIntoViewRequester = bringIntoViewRequester;
        this.$offsetMapping = offsetMapping;
    }

    public final void a(@NotNull FocusState it) {
        TextLayoutResultProxy textLayoutResultProxyG;
        t.j(it, "it");
        if (this.$state.d() == it.a()) {
            return;
        }
        this.$state.s(it.a());
        TextInputService textInputService = this.$textInputService;
        if (textInputService != null) {
            CoreTextFieldKt.k(textInputService, this.$state, this.$value, this.$imeOptions);
            if (it.a() && (textLayoutResultProxyG = this.$state.g()) != null) {
                k.d(this.$coroutineScope, null, null, new CoreTextFieldKt$CoreTextField$focusModifier$1$1$1(this.$bringIntoViewRequester, this.$value, this.$state, textLayoutResultProxyG, this.$offsetMapping, null), 3, null);
            }
        }
        if (it.a()) {
            return;
        }
        TextFieldSelectionManager.q(this.$manager, null, 1, null);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(FocusState focusState) {
        a(focusState);
        return l0.INSTANCE;
    }
}
