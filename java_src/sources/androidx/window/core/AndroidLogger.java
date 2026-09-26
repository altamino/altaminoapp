package androidx.window.core;

import android.util.Log;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidLogger implements Logger {

    @NotNull
    public static final AndroidLogger INSTANCE = new AndroidLogger();

    private AndroidLogger() {
    }

    @Override // androidx.window.core.Logger
    public void a(@NotNull String tag, @NotNull String message) {
        t.j(tag, "tag");
        t.j(message, "message");
        Log.d(tag, message);
    }
}
