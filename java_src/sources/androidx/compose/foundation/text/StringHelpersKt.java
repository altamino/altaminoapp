package androidx.compose.foundation.text;

import androidx.compose.ui.text.TextRangeKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class StringHelpersKt {
    public static final int a(@NotNull CharSequence charSequence, int i10) {
        t.j(charSequence, "<this>");
        int length = charSequence.length();
        for (int i11 = i10 + 1; i11 < length; i11++) {
            if (charSequence.charAt(i11) == '\n') {
                return i11;
            }
        }
        return charSequence.length();
    }

    public static final int b(@NotNull CharSequence charSequence, int i10) {
        t.j(charSequence, "<this>");
        for (int i11 = i10 - 1; i11 > 0; i11--) {
            if (charSequence.charAt(i11 - 1) == '\n') {
                return i11;
            }
        }
        return 0;
    }

    public static final long c(@NotNull CharSequence charSequence, int i10) {
        t.j(charSequence, "<this>");
        return TextRangeKt.b(b(charSequence, i10), a(charSequence, i10));
    }
}
