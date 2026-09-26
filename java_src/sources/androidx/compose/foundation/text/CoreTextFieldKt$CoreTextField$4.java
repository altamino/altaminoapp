package androidx.compose.foundation.text;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$4 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ ImeOptions $imeOptions;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TextInputService $textInputService;
    final /* synthetic */ TextFieldValue $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$4(TextInputService textInputService, TextFieldState textFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions) {
        super(1);
        this.$textInputService = textInputService;
        this.$state = textFieldState;
        this.$value = textFieldValue;
        this.$imeOptions = imeOptions;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        if (this.$textInputService != null && this.$state.d()) {
            TextFieldState textFieldState = this.$state;
            textFieldState.t(TextFieldDelegate.Companion.h(this.$textInputService, this.$value, textFieldState.j(), this.$imeOptions, this.$state.i(), this.$state.h()));
        }
        return new DisposableEffectResult() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextField$4$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
            }
        };
    }
}
