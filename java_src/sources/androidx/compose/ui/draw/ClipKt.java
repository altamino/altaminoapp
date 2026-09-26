package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ClipKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull Shape shape) {
        t.j(modifier, "<this>");
        t.j(shape, "shape");
        return GraphicsLayerModifierKt.c(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, shape, true, null, 0L, 0L, 59391, null);
    }

    @Stable
    @NotNull
    public static final Modifier b(@NotNull Modifier modifier) {
        t.j(modifier, "<this>");
        return GraphicsLayerModifierKt.c(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, true, null, 0L, 0L, 61439, null);
    }
}
