package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.Rect;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class b1 {
    public static void a(Canvas canvas, @NotNull Rect rect, int i10) {
        kotlin.jvm.internal.t.j(rect, "rect");
        canvas.a(rect.j(), rect.m(), rect.k(), rect.e(), i10);
    }

    public static void b(Canvas canvas, @NotNull Rect rect, @NotNull Paint paint) {
        kotlin.jvm.internal.t.j(rect, "rect");
        kotlin.jvm.internal.t.j(paint, "paint");
        canvas.l(rect.j(), rect.m(), rect.k(), rect.e(), paint);
    }

    public static /* synthetic */ void c(Canvas canvas, Path path, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
        }
        if ((i11 & 2) != 0) {
            i10 = ClipOp.Companion.b();
        }
        canvas.c(path, i10);
    }

    public static /* synthetic */ void d(Canvas canvas, float f, float f6, float f7, float f10, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
        }
        if ((i11 & 16) != 0) {
            i10 = ClipOp.Companion.b();
        }
        canvas.a(f, f6, f7, f10, i10);
    }

    public static /* synthetic */ void e(Canvas canvas, Rect rect, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
        }
        if ((i11 & 2) != 0) {
            i10 = ClipOp.Companion.b();
        }
        canvas.i(rect, i10);
    }
}
