package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.BlendMode;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.CanvasKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.ImageBitmapConfig;
import androidx.compose.ui.graphics.ImageBitmapKt;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import e8.p;
import g8.c;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidSelectionHandles_androidKt {
    @ComposableTarget
    @Composable
    public static final void a(@NotNull Modifier modifier, boolean z6, @NotNull ResolvedTextDirection direction, boolean z10, @Nullable Composer composer, int i10) {
        int i11;
        t.j(modifier, "modifier");
        t.j(direction, "direction");
        Composer composerS = composer.s(47957398);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.m(z6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(direction) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.m(z10) ? 2048 : 1024;
        }
        if ((i11 & 5851) == 1170 && composerS.b()) {
            composerS.g();
        } else {
            SpacerKt.a(f(SizeKt.A(modifier, SelectionHandlesKt.c(), SelectionHandlesKt.b()), z6, direction, z10), composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidSelectionHandles_androidKt$DefaultSelectionHandle$1(modifier, z6, direction, z10, i10));
    }

    @Composable
    @ComposableInferredTarget
    public static final void b(long j6, @NotNull HandleReferencePoint handleReferencePoint, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(handleReferencePoint, "handleReferencePoint");
        t.j(content, "content");
        Composer composerS = composer.s(-1409050158);
        if ((i10 & 14) == 0) {
            i11 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(handleReferencePoint) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(content) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            long jA = IntOffsetKt.a(c.c(Offset.m(j6)), c.c(Offset.n(j6)));
            IntOffset intOffsetB = IntOffset.b(jA);
            composerS.G(511388516);
            boolean zK = composerS.k(intOffsetB) | composerS.k(handleReferencePoint);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new HandlePositionProvider(handleReferencePoint, jA, null);
                composerS.z(objH);
            }
            composerS.Q();
            AndroidPopup_androidKt.a((HandlePositionProvider) objH, null, new PopupProperties(false, false, false, null, true, false, 15, null), content, composerS, (i11 << 3) & 7168, 2);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidSelectionHandles_androidKt$HandlePopup$1(j6, handleReferencePoint, content, i10));
    }

    @Composable
    @ComposableInferredTarget
    public static final void c(long j6, boolean z6, @NotNull ResolvedTextDirection direction, boolean z10, @NotNull Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable Composer composer, int i10) {
        int i11;
        t.j(direction, "direction");
        t.j(modifier, "modifier");
        Composer composerS = composer.s(-616295642);
        if ((i10 & 14) == 0) {
            i11 = (composerS.q(j6) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.m(z6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(direction) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.m(z10) ? 2048 : 1024;
        }
        if ((57344 & i10) == 0) {
            i11 |= composerS.k(modifier) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i11 |= composerS.k(pVar) ? 131072 : 65536;
        }
        int i12 = i11;
        if ((i12 & 374491) == 74898 && composerS.b()) {
            composerS.g();
        } else {
            b(j6, h(z6, direction, z10) ? HandleReferencePoint.TopRight : HandleReferencePoint.TopLeft, ComposableLambdaKt.b(composerS, 732099485, true, new AndroidSelectionHandles_androidKt$SelectionHandle$1(pVar, modifier, z6, j6, i12, direction, z10)), composerS, (i12 & 14) | 384);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidSelectionHandles_androidKt$SelectionHandle$2(j6, z6, direction, z10, modifier, pVar, i10));
    }

    @NotNull
    public static final ImageBitmap e(@NotNull CacheDrawScope cacheDrawScope, float f) {
        t.j(cacheDrawScope, "<this>");
        int iCeil = ((int) Math.ceil(f)) * 2;
        HandleImageCache handleImageCache = HandleImageCache.INSTANCE;
        ImageBitmap imageBitmapC = handleImageCache.c();
        Canvas canvasA = handleImageCache.a();
        CanvasDrawScope canvasDrawScopeB = handleImageCache.b();
        if (imageBitmapC == null || canvasA == null || iCeil > imageBitmapC.getWidth() || iCeil > imageBitmapC.getHeight()) {
            imageBitmapC = ImageBitmapKt.b(iCeil, iCeil, ImageBitmapConfig.Companion.a(), false, null, 24, null);
            handleImageCache.f(imageBitmapC);
            canvasA = CanvasKt.a(imageBitmapC);
            handleImageCache.d(canvasA);
        }
        ImageBitmap imageBitmap = imageBitmapC;
        Canvas canvas = canvasA;
        if (canvasDrawScopeB == null) {
            canvasDrawScopeB = new CanvasDrawScope();
            handleImageCache.e(canvasDrawScopeB);
        }
        CanvasDrawScope canvasDrawScope = canvasDrawScopeB;
        LayoutDirection layoutDirection = cacheDrawScope.getLayoutDirection();
        long jA = androidx.compose.ui.geometry.SizeKt.a(imageBitmap.getWidth(), imageBitmap.getHeight());
        CanvasDrawScope.DrawParams drawParamsI = canvasDrawScope.I();
        Density densityA = drawParamsI.a();
        LayoutDirection layoutDirectionB = drawParamsI.b();
        Canvas canvasC = drawParamsI.c();
        long jD = drawParamsI.d();
        CanvasDrawScope.DrawParams drawParamsI2 = canvasDrawScope.I();
        drawParamsI2.j(cacheDrawScope);
        drawParamsI2.k(layoutDirection);
        drawParamsI2.i(canvas);
        drawParamsI2.l(jA);
        canvas.r();
        androidx.compose.ui.graphics.drawscope.a.n(canvasDrawScope, Color.Companion.a(), 0L, canvasDrawScope.c(), 0.0f, null, null, BlendMode.Companion.a(), 58, null);
        androidx.compose.ui.graphics.drawscope.a.n(canvasDrawScope, ColorKt.d(4278190080L), Offset.Companion.c(), androidx.compose.ui.geometry.SizeKt.a(f, f), 0.0f, null, null, 0, 120, null);
        androidx.compose.ui.graphics.drawscope.a.e(canvasDrawScope, ColorKt.d(4278190080L), f, OffsetKt.a(f, f), 0.0f, null, null, 0, 120, null);
        canvas.n();
        CanvasDrawScope.DrawParams drawParamsI3 = canvasDrawScope.I();
        drawParamsI3.j(densityA);
        drawParamsI3.k(layoutDirectionB);
        drawParamsI3.i(canvasC);
        drawParamsI3.l(jD);
        return imageBitmap;
    }

    @NotNull
    public static final Modifier f(@NotNull Modifier modifier, boolean z6, @NotNull ResolvedTextDirection direction, boolean z10) {
        t.j(modifier, "<this>");
        t.j(direction, "direction");
        return ComposedModifierKt.d(modifier, null, new AndroidSelectionHandles_androidKt$drawSelectionHandle$1(z6, direction, z10), 1, null);
    }

    public static final boolean g(@NotNull ResolvedTextDirection direction, boolean z6) {
        t.j(direction, "direction");
        return (direction == ResolvedTextDirection.Ltr && !z6) || (direction == ResolvedTextDirection.Rtl && z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(boolean z6, ResolvedTextDirection resolvedTextDirection, boolean z10) {
        if (z6) {
            return g(resolvedTextDirection, z10);
        }
        return !g(resolvedTextDirection, z10);
    }
}
