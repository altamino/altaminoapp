package androidx.compose.ui.node;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class ViewInterop_androidKt {
    private static final int viewAdaptersKey = a("ViewAdapter");

    public static final int a(@NotNull String key) {
        t.j(key, "key");
        return key.hashCode() | 50331648;
    }
}
