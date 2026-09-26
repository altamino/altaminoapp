package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class TextSelectionColorsKt {
    private static final long DefaultSelectionColor;

    @NotNull
    private static final TextSelectionColors DefaultTextSelectionColors;

    @NotNull
    private static final ProvidableCompositionLocal<TextSelectionColors> LocalTextSelectionColors = CompositionLocalKt.d(null, TextSelectionColorsKt$LocalTextSelectionColors$1.INSTANCE, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<TextSelectionColors> b() {
        return LocalTextSelectionColors;
    }

    static {
        long jD = ColorKt.d(4282550004L);
        DefaultSelectionColor = jD;
        DefaultTextSelectionColors = new TextSelectionColors(jD, Color.l(jD, 0.4f, 0.0f, 0.0f, 0.0f, 14, null), null);
    }
}
