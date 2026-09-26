package androidx.compose.ui.platform;

import androidx.compose.ui.input.InputMode;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class AndroidComposeView$_inputModeManager$1 extends kotlin.jvm.internal.v implements e8.l<InputMode, Boolean> {
    final /* synthetic */ AndroidComposeView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidComposeView$_inputModeManager$1(AndroidComposeView androidComposeView) {
        super(1);
        this.this$0 = androidComposeView;
    }

    @NotNull
    public final Boolean b(int i10) {
        boolean zRequestFocusFromTouch;
        InputMode.Companion companion = InputMode.Companion;
        if (InputMode.f(i10, companion.b())) {
            zRequestFocusFromTouch = this.this$0.isInTouchMode();
        } else if (InputMode.f(i10, companion.a())) {
            zRequestFocusFromTouch = this.this$0.isInTouchMode() ? this.this$0.requestFocusFromTouch() : true;
        } else {
            zRequestFocusFromTouch = false;
        }
        return Boolean.valueOf(zRequestFocusFromTouch);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(InputMode inputMode) {
        return b(inputMode.i());
    }
}
