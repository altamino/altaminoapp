package androidx.compose.ui.graphics;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidPath_androidKt {
    @NotNull
    public static final Path a() {
        return new AndroidPath(null, 1, null);
    }

    @NotNull
    public static final Path b(@NotNull android.graphics.Path path) {
        kotlin.jvm.internal.t.j(path, "<this>");
        return new AndroidPath(path);
    }
}
