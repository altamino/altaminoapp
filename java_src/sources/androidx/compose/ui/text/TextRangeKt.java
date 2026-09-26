package androidx.compose.ui.text;

import j8.o;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes10.dex */
public final class TextRangeKt {
    private static final long d(int i10, int i11) {
        if (i10 < 0) {
            throw new IllegalArgumentException(("start cannot be negative. [start: " + i10 + b.END_LIST).toString());
        }
        if (i11 >= 0) {
            return (((long) i11) & 4294967295L) | (((long) i10) << 32);
        }
        throw new IllegalArgumentException(("end cannot negative. [end: " + i11 + b.END_LIST).toString());
    }

    public static final long a(int i10) {
        return b(i10, i10);
    }

    public static final long b(int i10, int i11) {
        return TextRange.c(d(i10, i11));
    }

    public static final long c(long j6, int i10, int i11) {
        int iN = o.n(TextRange.n(j6), i10, i11);
        int iN2 = o.n(TextRange.i(j6), i10, i11);
        if (iN == TextRange.n(j6) && iN2 == TextRange.i(j6)) {
            return j6;
        }
        return b(iN, iN2);
    }
}
