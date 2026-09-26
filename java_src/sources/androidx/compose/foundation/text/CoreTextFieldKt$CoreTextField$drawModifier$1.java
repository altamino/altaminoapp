package androidx.compose.foundation.text;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$drawModifier$1 extends v implements l<DrawScope, l0> {
    final /* synthetic */ OffsetMapping $offsetMapping;
    final /* synthetic */ TextFieldState $state;
    final /* synthetic */ TextFieldValue $value;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$drawModifier$1(TextFieldState textFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        super(1);
        this.$state = textFieldState;
        this.$value = textFieldValue;
        this.$offsetMapping = offsetMapping;
    }

    public final void a(@NotNull DrawScope drawBehind) {
        t.j(drawBehind, "$this$drawBehind");
        TextLayoutResultProxy textLayoutResultProxyG = this.$state.g();
        if (textLayoutResultProxyG != null) {
            TextFieldValue textFieldValue = this.$value;
            OffsetMapping offsetMapping = this.$offsetMapping;
            TextFieldState textFieldState = this.$state;
            TextFieldDelegate.Companion.c(drawBehind.T().a(), textFieldValue, offsetMapping, textLayoutResultProxyG.i(), textFieldState.l());
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(DrawScope drawScope) {
        a(drawScope);
        return l0.INSTANCE;
    }
}
