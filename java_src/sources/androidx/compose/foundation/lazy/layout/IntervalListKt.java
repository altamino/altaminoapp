package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.collection.MutableVector;

/* JADX INFO: loaded from: classes6.dex */
public final class IntervalListKt {
    /* JADX INFO: Access modifiers changed from: private */
    @ExperimentalFoundationApi
    public static final <T> int b(MutableVector<IntervalList.Interval<T>> mutableVector, int i10) {
        int iN = mutableVector.n() - 1;
        int i11 = 0;
        while (i11 < iN) {
            int i12 = ((iN - i11) / 2) + i11;
            int iB = mutableVector.m()[i12].b();
            if (iB == i10) {
                return i12;
            }
            if (iB < i10) {
                i11 = i12 + 1;
                if (i10 < mutableVector.m()[i11].b()) {
                    return i12;
                }
            } else {
                iN = i12 - 1;
            }
        }
        return i11;
    }
}
