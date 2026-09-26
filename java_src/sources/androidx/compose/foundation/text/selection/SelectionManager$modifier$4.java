package androidx.compose.foundation.text.selection;

import androidx.compose.ui.input.key.KeyEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
final class SelectionManager$modifier$4 extends v implements l<KeyEvent, Boolean> {
    final /* synthetic */ SelectionManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SelectionManager$modifier$4(SelectionManager selectionManager) {
        super(1);
        this.this$0 = selectionManager;
    }

    @NotNull
    public final Boolean a(@NotNull android.view.KeyEvent it) {
        boolean z6;
        t.j(it, "it");
        if (SelectionManager_androidKt.a(it)) {
            this.this$0.n();
            z6 = true;
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
