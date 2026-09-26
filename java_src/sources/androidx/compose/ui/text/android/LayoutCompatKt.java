package androidx.compose.ui.text.android;

import android.text.Layout;
import androidx.annotation.IntRange;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class LayoutCompatKt {
    @InternalPlatformTextApi
    public static final int a(@NotNull Layout layout, @IntRange int i10, boolean z6) {
        t.j(layout, "<this>");
        if (i10 <= 0) {
            return 0;
        }
        if (i10 >= layout.getText().length()) {
            return layout.getLineCount() - 1;
        }
        int lineForOffset = layout.getLineForOffset(i10);
        int lineStart = layout.getLineStart(lineForOffset);
        int lineEnd = layout.getLineEnd(lineForOffset);
        if (lineStart != i10 && lineEnd != i10) {
            return lineForOffset;
        }
        if (lineStart == i10) {
            return z6 ? lineForOffset - 1 : lineForOffset;
        }
        return z6 ? lineForOffset : lineForOffset + 1;
    }
}
