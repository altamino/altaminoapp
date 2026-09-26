package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEventType;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class KeyEventHelpers_androidKt {
    public static final void b() {
    }

    public static final boolean a(@NotNull KeyEvent cancelsTextSelection) {
        t.j(cancelsTextSelection, "$this$cancelsTextSelection");
        return cancelsTextSelection.getKeyCode() == 4 && KeyEventType.f(KeyEvent_androidKt.b(cancelsTextSelection), KeyEventType.Companion.b());
    }
}
