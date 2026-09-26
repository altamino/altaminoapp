package androidx.compose.ui.draw;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class AlphaKt {
    @Stable
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, float f) {
        t.j(modifier, "<this>");
        return f == 1.0f ? modifier : GraphicsLayerModifierKt.c(modifier, 0.0f, 0.0f, f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, true, null, 0L, 0L, 61435, null);
    }
}
