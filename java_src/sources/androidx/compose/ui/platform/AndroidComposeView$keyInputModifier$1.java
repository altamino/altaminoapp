package androidx.compose.ui.platform;

import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$keyInputModifier$1 extends kotlin.jvm.internal.v implements e8.l<KeyEvent, Boolean> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidComposeView$keyInputModifier$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    @NotNull
    public final Boolean a(@NotNull android.view.KeyEvent it) {
        kotlin.jvm.internal.t.j(it, "it");
        FocusDirection focusDirectionM = this.this$0.M(it);
        return (focusDirectionM == null || !KeyEventType.f(KeyEvent_androidKt.b(it), KeyEventType.Companion.a())) ? Boolean.FALSE : Boolean.valueOf(this.this$0.getFocusManager().a(focusDirectionM.o()));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
        return a(keyEvent.f());
    }
}
