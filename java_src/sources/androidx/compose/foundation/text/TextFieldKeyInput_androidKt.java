package androidx.compose.foundation.text;

import android.view.KeyEvent;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class TextFieldKeyInput_androidKt {
    public static final boolean a(@NotNull KeyEvent isTypedEvent) {
        t.j(isTypedEvent, "$this$isTypedEvent");
        return isTypedEvent.getAction() == 0 && isTypedEvent.getUnicodeChar() != 0;
    }
}
