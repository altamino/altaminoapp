package androidx.compose.ui.graphics.drawscope;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathEffect;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class a {
    static {
        DrawScope.Companion companion = DrawScope.Companion;
    }

    public static /* synthetic */ void d(DrawScope drawScope, long j6, float f, float f6, boolean z6, long j10, long j11, float f7, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawArc-yD3GUKo");
        }
        long jC = (i11 & 16) != 0 ? Offset.Companion.c() : j10;
        drawScope.N(j6, f, f6, z6, jC, (i11 & 32) != 0 ? c(drawScope, drawScope.c(), jC) : j11, (i11 & 64) != 0 ? 1.0f : f7, (i11 & 128) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 256) != 0 ? null : colorFilter, (i11 & 512) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void e(DrawScope drawScope, long j6, float f, long j10, float f6, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawCircle-VaOC9Bg");
        }
        drawScope.L(j6, (i11 & 2) != 0 ? Size.h(drawScope.c()) / 2.0f : f, (i11 & 4) != 0 ? drawScope.W() : j10, (i11 & 8) != 0 ? 1.0f : f6, (i11 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 32) != 0 ? null : colorFilter, (i11 & 64) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void f(DrawScope drawScope, ImageBitmap imageBitmap, long j6, long j10, long j11, long j12, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-AZ2fEMs");
        }
        long jA = (i12 & 2) != 0 ? IntOffset.Companion.a() : j6;
        long jA2 = (i12 & 4) != 0 ? IntSizeKt.a(imageBitmap.getWidth(), imageBitmap.getHeight()) : j10;
        drawScope.P0(imageBitmap, jA, jA2, (i12 & 8) != 0 ? IntOffset.Companion.a() : j11, (i12 & 16) != 0 ? jA2 : j12, (i12 & 32) != 0 ? 1.0f : f, (i12 & 64) != 0 ? Fill.INSTANCE : drawStyle, (i12 & 128) != 0 ? null : colorFilter, (i12 & 256) != 0 ? DrawScope.Companion.a() : i10, (i12 & 512) != 0 ? DrawScope.Companion.b() : i11);
    }

    public static /* synthetic */ void g(DrawScope drawScope, ImageBitmap imageBitmap, long j6, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawImage-gbVJVH8");
        }
        drawScope.C(imageBitmap, (i11 & 2) != 0 ? Offset.Companion.c() : j6, (i11 & 4) != 0 ? 1.0f : f, (i11 & 8) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 16) != 0 ? null : colorFilter, (i11 & 32) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void h(DrawScope drawScope, Brush brush, long j6, long j10, float f, int i10, PathEffect pathEffect, float f6, ColorFilter colorFilter, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-1RTmtNc");
        }
        drawScope.K0(brush, j6, j10, (i12 & 8) != 0 ? 0.0f : f, (i12 & 16) != 0 ? Stroke.Companion.a() : i10, (i12 & 32) != 0 ? null : pathEffect, (i12 & 64) != 0 ? 1.0f : f6, (i12 & 128) != 0 ? null : colorFilter, (i12 & 256) != 0 ? DrawScope.Companion.a() : i11);
    }

    public static /* synthetic */ void i(DrawScope drawScope, long j6, long j10, long j11, float f, int i10, PathEffect pathEffect, float f6, ColorFilter colorFilter, int i11, int i12, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawLine-NGM6Ib0");
        }
        drawScope.E(j6, j10, j11, (i12 & 8) != 0 ? 0.0f : f, (i12 & 16) != 0 ? Stroke.Companion.a() : i10, (i12 & 32) != 0 ? null : pathEffect, (i12 & 64) != 0 ? 1.0f : f6, (i12 & 128) != 0 ? null : colorFilter, (i12 & 256) != 0 ? DrawScope.Companion.a() : i11);
    }

    public static /* synthetic */ void j(DrawScope drawScope, Path path, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-GBMwjPU");
        }
        if ((i11 & 4) != 0) {
            f = 1.0f;
        }
        float f6 = f;
        if ((i11 & 8) != 0) {
            drawStyle = Fill.INSTANCE;
        }
        DrawStyle drawStyle2 = drawStyle;
        if ((i11 & 16) != 0) {
            colorFilter = null;
        }
        ColorFilter colorFilter2 = colorFilter;
        if ((i11 & 32) != 0) {
            i10 = DrawScope.Companion.a();
        }
        drawScope.w(path, brush, f6, drawStyle2, colorFilter2, i10);
    }

    public static /* synthetic */ void k(DrawScope drawScope, Path path, long j6, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPath-LG529CI");
        }
        drawScope.G(path, j6, (i11 & 4) != 0 ? 1.0f : f, (i11 & 8) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 16) != 0 ? null : colorFilter, (i11 & 32) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void l(DrawScope drawScope, List list, int i10, long j6, float f, int i11, PathEffect pathEffect, float f6, ColorFilter colorFilter, int i12, int i13, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawPoints-F8ZwMP8");
        }
        drawScope.I0(list, i10, j6, (i13 & 8) != 0 ? 0.0f : f, (i13 & 16) != 0 ? StrokeCap.Companion.a() : i11, (i13 & 32) != 0 ? null : pathEffect, (i13 & 64) != 0 ? 1.0f : f6, (i13 & 128) != 0 ? null : colorFilter, (i13 & 256) != 0 ? DrawScope.Companion.a() : i12);
    }

    public static /* synthetic */ void m(DrawScope drawScope, Brush brush, long j6, long j10, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-AsUm42w");
        }
        long jC = (i11 & 2) != 0 ? Offset.Companion.c() : j6;
        drawScope.D(brush, jC, (i11 & 4) != 0 ? c(drawScope, drawScope.c(), jC) : j10, (i11 & 8) != 0 ? 1.0f : f, (i11 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 32) != 0 ? null : colorFilter, (i11 & 64) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void n(DrawScope drawScope, long j6, long j10, long j11, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRect-n-J9OG0");
        }
        long jC = (i11 & 2) != 0 ? Offset.Companion.c() : j10;
        drawScope.x0(j6, jC, (i11 & 4) != 0 ? c(drawScope, drawScope.c(), jC) : j11, (i11 & 8) != 0 ? 1.0f : f, (i11 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 32) != 0 ? null : colorFilter, (i11 & 64) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void o(DrawScope drawScope, Brush brush, long j6, long j10, long j11, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-ZuiqVtQ");
        }
        long jC = (i11 & 2) != 0 ? Offset.Companion.c() : j6;
        drawScope.D0(brush, jC, (i11 & 4) != 0 ? c(drawScope, drawScope.c(), jC) : j10, (i11 & 8) != 0 ? CornerRadius.Companion.a() : j11, (i11 & 16) != 0 ? 1.0f : f, (i11 & 32) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 64) != 0 ? null : colorFilter, (i11 & 128) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static /* synthetic */ void p(DrawScope drawScope, long j6, long j10, long j11, long j12, DrawStyle drawStyle, float f, ColorFilter colorFilter, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: drawRoundRect-u-Aw5IA");
        }
        long jC = (i11 & 2) != 0 ? Offset.Companion.c() : j10;
        drawScope.o0(j6, jC, (i11 & 4) != 0 ? c(drawScope, drawScope.c(), jC) : j11, (i11 & 8) != 0 ? CornerRadius.Companion.a() : j12, (i11 & 16) != 0 ? Fill.INSTANCE : drawStyle, (i11 & 32) != 0 ? 1.0f : f, (i11 & 64) != 0 ? null : colorFilter, (i11 & 128) != 0 ? DrawScope.Companion.a() : i10);
    }

    public static long a(DrawScope drawScope) {
        return SizeKt.b(drawScope.T().c());
    }

    public static long b(DrawScope drawScope) {
        return drawScope.T().c();
    }

    public static long c(DrawScope drawScope, long j6, long j10) {
        return SizeKt.a(Size.i(j6) - Offset.m(j10), Size.g(j6) - Offset.n(j10));
    }
}
