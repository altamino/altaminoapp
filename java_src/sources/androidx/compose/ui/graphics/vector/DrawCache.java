package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class DrawCache {

    @Nullable
    private Canvas cachedCanvas;

    @Nullable
    private ImageBitmap mCachedImage;

    @Nullable
    private Density scopeDensity;

    @NotNull
    private LayoutDirection layoutDirection = LayoutDirection.Ltr;
    private long size = IntSize.Companion.a();

    @NotNull
    private final CanvasDrawScope cacheScope = new CanvasDrawScope();

    public final void b(long j6, @NotNull Density density, @NotNull LayoutDirection layoutDirection, @NotNull l<? super DrawScope, l0> block) {
        t.j(density, "density");
        t.j(layoutDirection, "layoutDirection");
        t.j(block, "block");
        this.scopeDensity = density;
        this.layoutDirection = layoutDirection;
        ImageBitmap imageBitmapB = this.mCachedImage;
        Canvas canvasA = this.cachedCanvas;
        if (imageBitmapB == null || canvasA == null || IntSize.g(j6) > imageBitmapB.getWidth() || IntSize.f(j6) > imageBitmapB.getHeight()) {
            imageBitmapB = ImageBitmapKt.b(IntSize.g(j6), IntSize.f(j6), 0, false, null, 28, null);
            canvasA = CanvasKt.a(imageBitmapB);
            this.mCachedImage = imageBitmapB;
            this.cachedCanvas = canvasA;
        }
        this.size = j6;
        CanvasDrawScope canvasDrawScope = this.cacheScope;
        long jB = IntSizeKt.b(j6);
        CanvasDrawScope.DrawParams drawParamsI = canvasDrawScope.I();
        Density densityA = drawParamsI.a();
        LayoutDirection layoutDirectionB = drawParamsI.b();
        Canvas canvasC = drawParamsI.c();
        long jD = drawParamsI.d();
        CanvasDrawScope.DrawParams drawParamsI2 = canvasDrawScope.I();
        drawParamsI2.j(density);
        drawParamsI2.k(layoutDirection);
        drawParamsI2.i(canvasA);
        drawParamsI2.l(jB);
        canvasA.r();
        a(canvasDrawScope);
        block.invoke(canvasDrawScope);
        canvasA.n();
        CanvasDrawScope.DrawParams drawParamsI3 = canvasDrawScope.I();
        drawParamsI3.j(densityA);
        drawParamsI3.k(layoutDirectionB);
        drawParamsI3.i(canvasC);
        drawParamsI3.l(jD);
        imageBitmapB.a();
    }

    private final void a(DrawScope drawScope) {
        androidx.compose.ui.graphics.drawscope.a.n(drawScope, Color.Companion.a(), 0L, 0L, 0.0f, null, null, BlendMode.Companion.a(), 62, null);
    }

    public final void c(@NotNull DrawScope target, float f, @Nullable ColorFilter colorFilter) {
        t.j(target, "target");
        ImageBitmap imageBitmap = this.mCachedImage;
        if (imageBitmap == null) {
            throw new IllegalStateException("drawCachedImage must be invoked first before attempting to draw the result into another destination".toString());
        }
        androidx.compose.ui.graphics.drawscope.a.f(target, imageBitmap, 0L, this.size, 0L, 0L, f, null, colorFilter, 0, 0, 858, null);
    }
}
