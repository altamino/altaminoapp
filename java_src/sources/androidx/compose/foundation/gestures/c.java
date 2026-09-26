package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;

/* JADX INFO: loaded from: classes9.dex */
public final /* synthetic */ class c {
    public static /* synthetic */ void a(TransformScope transformScope, float f, long j6, float f6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: transformBy-d-4ec7I");
        }
        if ((i10 & 1) != 0) {
            f = 1.0f;
        }
        if ((i10 & 2) != 0) {
            j6 = Offset.Companion.c();
        }
        if ((i10 & 4) != 0) {
            f6 = 0.0f;
        }
        transformScope.a(f, j6, f6);
    }
}
