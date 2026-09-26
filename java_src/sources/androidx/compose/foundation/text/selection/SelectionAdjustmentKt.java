package androidx.compose.foundation.text.selection;

import androidx.compose.ui.text.TextRangeKt;

/* JADX INFO: loaded from: classes7.dex */
public final class SelectionAdjustmentKt {
    public static final long a(int i10, int i11, boolean z6, boolean z10) {
        if (i11 == 0) {
            return TextRangeKt.b(i10, i10);
        }
        if (i10 == 0) {
            return z6 ? TextRangeKt.b(1, 0) : TextRangeKt.b(0, 1);
        }
        if (i10 == i11) {
            return z6 ? TextRangeKt.b(i11 - 1, i11) : TextRangeKt.b(i11, i11 - 1);
        }
        if (z6) {
            return !z10 ? TextRangeKt.b(i10 - 1, i10) : TextRangeKt.b(i10 + 1, i10);
        }
        return !z10 ? TextRangeKt.b(i10, i10 + 1) : TextRangeKt.b(i10, i10 - 1);
    }
}
