package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import e8.p;
import kotlin.coroutines.d;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class b {
    public static /* synthetic */ Object a(ScrollableState scrollableState, MutatePriority mutatePriority, p pVar, d dVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: scroll");
        }
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollableState.b(mutatePriority, pVar, dVar);
    }
}
