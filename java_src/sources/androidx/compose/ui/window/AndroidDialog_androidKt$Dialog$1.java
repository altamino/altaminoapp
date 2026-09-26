package androidx.compose.ui.window;

import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
final class AndroidDialog_androidKt$Dialog$1 extends v implements l<DisposableEffectScope, DisposableEffectResult> {
    final /* synthetic */ DialogWrapper $dialog;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidDialog_androidKt$Dialog$1(DialogWrapper dialogWrapper) {
        super(1);
        this.$dialog = dialogWrapper;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DisposableEffectResult invoke(@NotNull DisposableEffectScope DisposableEffect) {
        t.j(DisposableEffect, "$this$DisposableEffect");
        this.$dialog.show();
        final DialogWrapper dialogWrapper = this.$dialog;
        return new DisposableEffectResult() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$Dialog$1$invoke$$inlined$onDispose$1
            @Override // androidx.compose.runtime.DisposableEffectResult
            public void t() {
                dialogWrapper.dismiss();
                dialogWrapper.b();
            }
        };
    }
}
