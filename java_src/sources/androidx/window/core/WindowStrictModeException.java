package androidx.window.core;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class WindowStrictModeException extends Exception {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WindowStrictModeException(@NotNull String message) {
        super(message);
        t.j(message, "message");
    }
}
