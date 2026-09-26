package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class LineHeightStyleSpanKt {
    public static final int a(@NotNull Paint.FontMetricsInt fontMetricsInt) {
        t.j(fontMetricsInt, "<this>");
        return fontMetricsInt.descent - fontMetricsInt.ascent;
    }
}
