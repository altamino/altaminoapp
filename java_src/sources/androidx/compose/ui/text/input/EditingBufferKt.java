package androidx.compose.ui.text.input;

import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;

/* JADX INFO: loaded from: classes8.dex */
public final class EditingBufferKt {
    public static final long a(long j6, long j10) {
        int iJ;
        int iL = TextRange.l(j6);
        int iK = TextRange.k(j6);
        if (TextRange.p(j10, j6)) {
            if (TextRange.d(j10, j6)) {
                iL = TextRange.l(j10);
                iK = iL;
            } else {
                if (TextRange.d(j6, j10)) {
                    iJ = TextRange.j(j10);
                } else if (TextRange.e(j10, iL)) {
                    iL = TextRange.l(j10);
                    iJ = TextRange.j(j10);
                } else {
                    iK = TextRange.l(j10);
                }
                iK -= iJ;
            }
        } else if (iK > TextRange.l(j10)) {
            iL -= TextRange.j(j10);
            iJ = TextRange.j(j10);
            iK -= iJ;
        }
        return TextRangeKt.b(iL, iK);
    }
}
