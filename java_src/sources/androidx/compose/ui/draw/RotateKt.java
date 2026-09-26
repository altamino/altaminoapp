package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class RotateKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return f == 0.0f ? modifier : GraphicsLayerModifierKt.c(modifier, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, f, 0.0f, 0L, null, false, null, 0L, 0L, 65279, null);
    }
}
