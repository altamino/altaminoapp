package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.ui.input.key.KeyEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class CoreTextFieldKt$previewKeyEventToDeselectOnBack$1 extends v implements l<KeyEvent, Boolean> {
    final /* synthetic */ TextFieldSelectionManager $manager;
    final /* synthetic */ TextFieldState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    CoreTextFieldKt$previewKeyEventToDeselectOnBack$1(TextFieldState textFieldState, TextFieldSelectionManager textFieldSelectionManager) {
        super(1);
        this.$state = textFieldState;
        this.$manager = textFieldSelectionManager;
    }

    @NotNull
    public final Boolean a(@NotNull android.view.KeyEvent keyEvent) {
        boolean z6;
        t.j(keyEvent, "keyEvent");
        if (this.$state.c() == HandleState.Selection && KeyEventHelpers_androidKt.a(keyEvent)) {
            z6 = true;
            TextFieldSelectionManager.q(this.$manager, null, 1, null);
        } else {
            z6 = false;
        }
        return Boolean.valueOf(z6);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
        return a(keyEvent.f());
    }
}
