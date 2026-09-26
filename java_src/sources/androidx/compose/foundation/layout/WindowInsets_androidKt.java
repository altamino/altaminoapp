package androidx.compose.foundation.layout;

import androidx.core.graphics.Insets;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class WindowInsets_androidKt {
    @NotNull
    public static final ValueInsets a(@NotNull Insets insets, @NotNull String name) {
        t.j(insets, "insets");
        t.j(name, "name");
        return new ValueInsets(b(insets), name);
    }

    @NotNull
    public static final InsetsValues b(@NotNull Insets insets) {
        t.j(insets, "<this>");
        return new InsetsValues(insets.left, insets.top, insets.right, insets.bottom);
    }
}
