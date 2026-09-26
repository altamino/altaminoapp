package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import e8.p;
import kotlin.coroutines.d;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class a {
    public static /* synthetic */ Object a(DraggableState draggableState, MutatePriority mutatePriority, p pVar, d dVar, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drag");
        }
        if ((i10 & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return draggableState.b(mutatePriority, pVar, dVar);
    }
}
