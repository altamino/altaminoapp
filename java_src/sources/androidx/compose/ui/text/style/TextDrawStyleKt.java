package androidx.compose.ui.text.style;

import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.SpanStyleKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class TextDrawStyleKt {
    @NotNull
    public static final TextDrawStyle a(@NotNull TextDrawStyle start, @NotNull TextDrawStyle stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return ((start instanceof BrushStyle) || (stop instanceof BrushStyle)) ? (TextDrawStyle) SpanStyleKt.c(start, stop, f) : TextDrawStyle.Companion.b(ColorKt.i(start.a(), stop.a(), f));
    }
}
