package androidx.compose.ui.input.key;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class KeyEvent_androidKt {
    public static final long a(@NotNull android.view.KeyEvent key) {
        t.j(key, "$this$key");
        return Key_androidKt.a(key.getKeyCode());
    }

    public static final int b(@NotNull android.view.KeyEvent type) {
        t.j(type, "$this$type");
        int action = type.getAction();
        if (action != 0) {
            return action != 1 ? KeyEventType.Companion.c() : KeyEventType.Companion.b();
        }
        return KeyEventType.Companion.a();
    }

    public static final int c(@NotNull android.view.KeyEvent utf16CodePoint) {
        t.j(utf16CodePoint, "$this$utf16CodePoint");
        return utf16CodePoint.getUnicodeChar();
    }

    public static final boolean d(@NotNull android.view.KeyEvent isCtrlPressed) {
        t.j(isCtrlPressed, "$this$isCtrlPressed");
        return isCtrlPressed.isCtrlPressed();
    }

    public static final boolean e(@NotNull android.view.KeyEvent isShiftPressed) {
        t.j(isShiftPressed, "$this$isShiftPressed");
        return isShiftPressed.isShiftPressed();
    }
}
