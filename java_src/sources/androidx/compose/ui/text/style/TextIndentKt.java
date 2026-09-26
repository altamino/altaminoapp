package androidx.compose.ui.text.style;

import androidx.compose.ui.text.SpanStyleKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class TextIndentKt {
    @NotNull
    public static final TextIndent a(@NotNull TextIndent start, @NotNull TextIndent stop, float f) {
        t.j(start, "start");
        t.j(stop, "stop");
        return new TextIndent(SpanStyleKt.e(start.b(), stop.b(), f), SpanStyleKt.e(start.c(), stop.c(), f), null);
    }
}
