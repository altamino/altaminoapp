package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Path;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b {
    public static /* synthetic */ void a(DrawTransform drawTransform, Path path, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
        }
        if ((i11 & 2) != 0) {
            i10 = ClipOp.Companion.b();
        }
        drawTransform.c(path, i10);
    }

    public static /* synthetic */ void b(DrawTransform drawTransform, float f, float f6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: translate");
        }
        if ((i10 & 1) != 0) {
            f = 0.0f;
        }
        if ((i10 & 2) != 0) {
            f6 = 0.0f;
        }
        drawTransform.b(f, f6);
    }
}
