package androidx.compose.ui.input.key;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class KeyEvent {

    @NotNull
    private final android.view.KeyEvent nativeKeyEvent;

    public static final /* synthetic */ KeyEvent a(android.view.KeyEvent keyEvent) {
        return new KeyEvent(keyEvent);
    }

    @NotNull
    public static android.view.KeyEvent b(@NotNull android.view.KeyEvent nativeKeyEvent) {
        t.j(nativeKeyEvent, "nativeKeyEvent");
        return nativeKeyEvent;
    }

    public static boolean c(android.view.KeyEvent keyEvent, Object obj) {
        return (obj instanceof KeyEvent) && t.e(keyEvent, ((KeyEvent) obj).f());
    }

    public static int d(android.view.KeyEvent keyEvent) {
        return keyEvent.hashCode();
    }

    public static String e(android.view.KeyEvent keyEvent) {
        return "KeyEvent(nativeKeyEvent=" + keyEvent + ')';
    }

    public boolean equals(Object obj) {
        return c(this.nativeKeyEvent, obj);
    }

    public final /* synthetic */ android.view.KeyEvent f() {
        return this.nativeKeyEvent;
    }

    public int hashCode() {
        return d(this.nativeKeyEvent);
    }

    public String toString() {
        return e(this.nativeKeyEvent);
    }

    private /* synthetic */ KeyEvent(android.view.KeyEvent keyEvent) {
        this.nativeKeyEvent = keyEvent;
    }
}
