package androidx.compose.foundation.text;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1 extends v implements a<TextLayoutResultProxy> {
    final /* synthetic */ TextFieldState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1(TextFieldState textFieldState) {
        super(0);
        this.$state = textFieldState;
    }

    @Override // e8.a
    @Nullable
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final TextLayoutResultProxy invoke() {
        return this.$state.g();
    }
}
