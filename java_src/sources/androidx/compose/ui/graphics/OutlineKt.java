package androidx.compose.ui.graphics;

import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.graphics.drawscope.Fill;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class OutlineKt {
    public static final void c(@NotNull DrawScope drawOutline, @NotNull Outline outline, @NotNull Brush brush, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Path pathA;
        kotlin.jvm.internal.t.j(drawOutline, "$this$drawOutline");
        kotlin.jvm.internal.t.j(outline, "outline");
        kotlin.jvm.internal.t.j(brush, "brush");
        kotlin.jvm.internal.t.j(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rectA = ((Outline.Rectangle) outline).a();
            drawOutline.D(brush, j(rectA), h(rectA), f, style, colorFilter, i10);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            pathA = rounded.b();
            if (pathA == null) {
                RoundRect roundRectA = rounded.a();
                drawOutline.D0(brush, k(roundRectA), i(roundRectA), CornerRadiusKt.b(CornerRadius.e(roundRectA.b()), 0.0f, 2, null), f, style, colorFilter, i10);
                return;
            }
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new w7.s();
            }
            pathA = ((Outline.Generic) outline).a();
        }
        drawOutline.w(pathA, brush, f, style, colorFilter, i10);
    }

    public static final void b(@NotNull Path path, @NotNull Outline outline) {
        kotlin.jvm.internal.t.j(path, "<this>");
        kotlin.jvm.internal.t.j(outline, "outline");
        if (outline instanceof Outline.Rectangle) {
            path.j(((Outline.Rectangle) outline).a());
        } else if (outline instanceof Outline.Rounded) {
            path.e(((Outline.Rounded) outline).a());
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new w7.s();
            }
            e1.a(path, ((Outline.Generic) outline).a(), 0L, 2, null);
        }
    }

    public static /* synthetic */ void d(DrawScope drawScope, Outline outline, Brush brush, float f, DrawStyle drawStyle, ColorFilter colorFilter, int i10, int i11, Object obj) {
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
        c(drawScope, outline, brush, f6, drawStyle2, colorFilter2, i10);
    }

    public static final void e(@NotNull DrawScope drawOutline, @NotNull Outline outline, long j6, float f, @NotNull DrawStyle style, @Nullable ColorFilter colorFilter, int i10) {
        Path pathA;
        kotlin.jvm.internal.t.j(drawOutline, "$this$drawOutline");
        kotlin.jvm.internal.t.j(outline, "outline");
        kotlin.jvm.internal.t.j(style, "style");
        if (outline instanceof Outline.Rectangle) {
            Rect rectA = ((Outline.Rectangle) outline).a();
            drawOutline.x0(j6, j(rectA), h(rectA), f, style, colorFilter, i10);
            return;
        }
        if (outline instanceof Outline.Rounded) {
            Outline.Rounded rounded = (Outline.Rounded) outline;
            pathA = rounded.b();
            if (pathA == null) {
                RoundRect roundRectA = rounded.a();
                drawOutline.o0(j6, k(roundRectA), i(roundRectA), CornerRadiusKt.b(CornerRadius.e(roundRectA.b()), 0.0f, 2, null), style, f, colorFilter, i10);
                return;
            }
        } else {
            if (!(outline instanceof Outline.Generic)) {
                throw new w7.s();
            }
            pathA = ((Outline.Generic) outline).a();
        }
        drawOutline.G(pathA, j6, f, style, colorFilter, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean g(RoundRect roundRect) {
        boolean z6;
        boolean z10;
        if (CornerRadius.e(roundRect.b()) == CornerRadius.e(roundRect.c()) && CornerRadius.e(roundRect.c()) == CornerRadius.e(roundRect.i()) && CornerRadius.e(roundRect.i()) == CornerRadius.e(roundRect.h())) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (CornerRadius.f(roundRect.b()) == CornerRadius.f(roundRect.c()) && CornerRadius.f(roundRect.c()) == CornerRadius.f(roundRect.i()) && CornerRadius.f(roundRect.i()) == CornerRadius.f(roundRect.h())) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z6 || !z10) {
            return false;
        }
        return true;
    }

    private static final long h(Rect rect) {
        return SizeKt.a(rect.p(), rect.i());
    }

    private static final long i(RoundRect roundRect) {
        return SizeKt.a(roundRect.j(), roundRect.d());
    }

    private static final long j(Rect rect) {
        return OffsetKt.a(rect.j(), rect.m());
    }

    private static final long k(RoundRect roundRect) {
        return OffsetKt.a(roundRect.e(), roundRect.g());
    }
}
