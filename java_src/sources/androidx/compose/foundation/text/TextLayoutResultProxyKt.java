package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;

/* JADX INFO: loaded from: classes7.dex */
public final class TextLayoutResultProxyKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final long b(long j6, Rect rect) {
        float fM;
        float fN;
        if (Offset.m(j6) < rect.j()) {
            fM = rect.j();
        } else if (Offset.m(j6) > rect.k()) {
            fM = rect.k();
        } else {
            fM = Offset.m(j6);
        }
        if (Offset.n(j6) < rect.m()) {
            fN = rect.m();
        } else if (Offset.n(j6) > rect.e()) {
            fN = rect.e();
        } else {
            fN = Offset.n(j6);
        }
        return OffsetKt.a(fM, fN);
    }
}
