package androidx.compose.foundation;

import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.draw.DrawResult;
import androidx.compose.ui.geometry.CornerRadius;
import androidx.compose.ui.geometry.CornerRadiusKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RoundRect;
import androidx.compose.ui.geometry.RoundRectKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidPath_androidKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.Outline;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.PathOperation;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.Fill;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class BorderKt {
    private static final RoundRect h(float f, RoundRect roundRect) {
        return new RoundRect(f, f, roundRect.j() - f, roundRect.d() - f, o(roundRect.h(), f), o(roundRect.i(), f), o(roundRect.c(), f), o(roundRect.b(), f), null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult m(CacheDrawScope cacheDrawScope, Ref<BorderCache> ref, Brush brush, Outline.Rounded rounded, long j6, long j10, boolean z6, float f) {
        return RoundRectKt.d(rounded.a()) ? cacheDrawScope.m(new BorderKt$drawRoundRectBorder$1(z6, brush, rounded.a().h(), f / 2, f, j6, j10, new Stroke(f, 0.0f, 0, 0, null, 30, null))) : cacheDrawScope.m(new BorderKt$drawRoundRectBorder$2(i(n(ref).g(), rounded.a(), f, z6), brush));
    }

    @NotNull
    public static final Modifier f(@NotNull Modifier modifier, @NotNull BorderStroke border, @NotNull Shape shape) {
        t.j(modifier, "<this>");
        t.j(border, "border");
        t.j(shape, "shape");
        return g(modifier, border.b(), border.a(), shape);
    }

    @NotNull
    public static final Modifier g(@NotNull Modifier border, float f, @NotNull Brush brush, @NotNull Shape shape) {
        t.j(border, "$this$border");
        t.j(brush, "brush");
        t.j(shape, "shape");
        return ComposedModifierKt.c(border, InspectableValueKt.c() ? new BorderKt$borderziNgDLE$$inlined$debugInspectorInfo$1(f, brush, shape) : InspectableValueKt.a(), new BorderKt$border$2(f, shape, brush));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult j(CacheDrawScope cacheDrawScope) {
        return cacheDrawScope.m(BorderKt$drawContentWithoutBorder$1.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:24:0x00ba  */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [T, androidx.compose.ui.graphics.ImageBitmap] */
    public static final DrawResult k(CacheDrawScope cacheDrawScope, Ref<BorderCache> ref, Brush brush, Outline.Generic generic, boolean z6, float f) {
        int iB;
        ColorFilter colorFilterB;
        boolean z10;
        ?? r11;
        Canvas canvas;
        if (z6) {
            return cacheDrawScope.m(new BorderKt$drawGenericBorder$1(generic, brush));
        }
        if (brush instanceof SolidColor) {
            iB = ImageBitmapConfig.Companion.a();
            colorFilterB = ColorFilter.Companion.b(ColorFilter.Companion, ((SolidColor) brush).c(), 0, 2, null);
        } else {
            iB = ImageBitmapConfig.Companion.b();
            colorFilterB = null;
        }
        Rect bounds = generic.a().getBounds();
        BorderCache borderCacheN = n(ref);
        Path pathG = borderCacheN.g();
        pathG.reset();
        pathG.j(bounds);
        pathG.k(pathG, generic.a(), PathOperation.Companion.a());
        p0 p0Var = new p0();
        long jA = IntSizeKt.a((int) Math.ceil(bounds.p()), (int) Math.ceil(bounds.i()));
        ImageBitmap imageBitmap = borderCacheN.imageBitmap;
        Canvas canvas2 = borderCacheN.canvas;
        ImageBitmapConfig imageBitmapConfigF = imageBitmap != null ? ImageBitmapConfig.f(imageBitmap.b()) : null;
        int iB2 = ImageBitmapConfig.Companion.b();
        if (imageBitmapConfigF != null && ImageBitmapConfig.i(imageBitmapConfigF.l(), iB2)) {
            z10 = true;
        } else {
            if (ImageBitmapConfig.h(iB, imageBitmap != null ? ImageBitmapConfig.f(imageBitmap.b()) : null)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        if (imageBitmap == null || canvas2 == null || Size.i(cacheDrawScope.c()) > imageBitmap.getWidth() || Size.g(cacheDrawScope.c()) > imageBitmap.getHeight() || !z10) {
            ImageBitmap imageBitmapB = ImageBitmapKt.b(IntSize.g(jA), IntSize.f(jA), iB, false, null, 24, null);
            borderCacheN.imageBitmap = imageBitmapB;
            Canvas canvasA = androidx.compose.ui.graphics.CanvasKt.a(imageBitmapB);
            borderCacheN.canvas = canvasA;
            r11 = imageBitmapB;
            canvas = canvasA;
        } else {
            r11 = imageBitmap;
            canvas = canvas2;
        }
        CanvasDrawScope canvasDrawScope = borderCacheN.canvasDrawScope;
        if (canvasDrawScope == null) {
            canvasDrawScope = new CanvasDrawScope();
            borderCacheN.canvasDrawScope = canvasDrawScope;
        }
        CanvasDrawScope canvasDrawScope2 = canvasDrawScope;
        long jB = IntSizeKt.b(jA);
        LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
        CanvasDrawScope.DrawParams drawParamsI = canvasDrawScope2.I();
        Density densityA = drawParamsI.a();
        LayoutDirection layoutDirectionB = drawParamsI.b();
        Canvas canvasC = drawParamsI.c();
        long jD = drawParamsI.d();
        CanvasDrawScope.DrawParams drawParamsI2 = canvasDrawScope2.I();
        drawParamsI2.j(cacheDrawScope);
        drawParamsI2.k(layoutDirection);
        drawParamsI2.i(canvas);
        drawParamsI2.l(jB);
        canvas.r();
        long jA2 = Color.Companion.a();
        BlendMode.Companion companion = BlendMode.Companion;
        androidx.compose.ui.graphics.drawscope.a.n(canvasDrawScope2, jA2, 0L, jB, 0.0f, null, null, companion.a(), 58, null);
        float f6 = -bounds.j();
        float f7 = -bounds.m();
        canvasDrawScope2.T().d().b(f6, f7);
        androidx.compose.ui.graphics.drawscope.a.j(canvasDrawScope2, generic.a(), brush, 0.0f, new Stroke(f * 2, 0.0f, 0, 0, null, 30, null), null, 0, 52, null);
        float f10 = 1;
        float fI = (Size.i(canvasDrawScope2.c()) + f10) / Size.i(canvasDrawScope2.c());
        float fG = (Size.g(canvasDrawScope2.c()) + f10) / Size.g(canvasDrawScope2.c());
        long jW = canvasDrawScope2.W();
        DrawContext drawContextT = canvasDrawScope2.T();
        long jC = drawContextT.c();
        drawContextT.a().r();
        drawContextT.d().d(fI, fG, jW);
        androidx.compose.ui.graphics.drawscope.a.j(canvasDrawScope2, pathG, brush, 0.0f, null, null, companion.a(), 28, null);
        drawContextT.a().n();
        drawContextT.b(jC);
        canvasDrawScope2.T().d().b(-f6, -f7);
        canvas.n();
        CanvasDrawScope.DrawParams drawParamsI3 = canvasDrawScope2.I();
        drawParamsI3.j(densityA);
        drawParamsI3.k(layoutDirectionB);
        drawParamsI3.i(canvasC);
        drawParamsI3.l(jD);
        r11.a();
        p0Var.element = r11;
        return cacheDrawScope.m(new BorderKt$drawGenericBorder$3(bounds, p0Var, jA, colorFilterB));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final DrawResult l(CacheDrawScope cacheDrawScope, Brush brush, long j6, long j10, boolean z6, float f) {
        return cacheDrawScope.m(new BorderKt$drawRectBorder$1(brush, z6 ? Offset.Companion.c() : j6, z6 ? cacheDrawScope.c() : j10, z6 ? Fill.INSTANCE : new Stroke(f, 0.0f, 0, 0, null, 30, null)));
    }

    private static final Path i(Path path, RoundRect roundRect, float f, boolean z6) {
        path.reset();
        path.e(roundRect);
        if (!z6) {
            Path pathA = AndroidPath_androidKt.a();
            pathA.e(h(f, roundRect));
            path.k(path, pathA, PathOperation.Companion.a());
        }
        return path;
    }

    private static final BorderCache n(Ref<BorderCache> ref) {
        BorderCache borderCacheA = ref.a();
        if (borderCacheA == null) {
            BorderCache borderCache = new BorderCache(null, null, null, null, 15, null);
            ref.b(borderCache);
            return borderCache;
        }
        return borderCacheA;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long o(long j6, float f) {
        return CornerRadiusKt.a(Math.max(0.0f, CornerRadius.e(j6) - f), Math.max(0.0f, CornerRadius.f(j6) - f));
    }
}
