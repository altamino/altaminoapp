package androidx.compose.material;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.material.ripple.RippleThemeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialThemeKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Colors colors, @Nullable Typography typography, @Nullable Shapes shapes, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        Colors colorsA;
        int i12;
        Typography typographyC;
        Shapes shapesB;
        Shapes shapes2;
        Typography typography2;
        int i13;
        t.j(content, "content");
        Composer composerS = composer.s(-891417079);
        if ((i10 & 14) == 0) {
            if ((i11 & 1) == 0) {
                colorsA = colors;
                if (composerS.k(colorsA)) {
                    i13 = 4;
                }
                i12 = i13 | i10;
            } else {
                colorsA = colors;
            }
            i13 = 2;
            i12 = i13 | i10;
        } else {
            colorsA = colors;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                typographyC = typography;
                int i14 = composerS.k(typographyC) ? 32 : 16;
                i12 |= i14;
            } else {
                typographyC = typography;
            }
            i12 |= i14;
        } else {
            typographyC = typography;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                shapesB = shapes;
                int i15 = composerS.k(shapesB) ? 256 : 128;
                i12 |= i15;
            } else {
                shapesB = shapes;
            }
            i12 |= i15;
        } else {
            shapesB = shapes;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(content) ? 2048 : 1024;
        }
        if ((i12 & 5851) == 1170 && composerS.b()) {
            composerS.g();
            typography2 = typographyC;
            shapes2 = shapesB;
        } else {
            composerS.J();
            if ((i10 & 1) == 0 || composerS.h()) {
                if ((i11 & 1) != 0) {
                    colorsA = MaterialTheme.INSTANCE.a(composerS, 6);
                    i12 &= -15;
                }
                if ((i11 & 2) != 0) {
                    typographyC = MaterialTheme.INSTANCE.c(composerS, 6);
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    shapesB = MaterialTheme.INSTANCE.b(composerS, 6);
                    i12 &= -897;
                }
            } else {
                composerS.g();
                if ((i11 & 1) != 0) {
                    i12 &= -15;
                }
                if ((i11 & 2) != 0) {
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    i12 &= -897;
                }
            }
            int i16 = i12;
            Typography typography3 = typographyC;
            Shapes shapes3 = shapesB;
            composerS.A();
            composerS.G(-492369756);
            Object objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                Colors colors2 = colorsA;
                objH = colors2.a((8191 & 1) != 0 ? colors2.j() : 0L, (8191 & 2) != 0 ? colors2.k() : 0L, (8191 & 4) != 0 ? colors2.l() : 0L, (8191 & 8) != 0 ? colors2.m() : 0L, (8191 & 16) != 0 ? colors2.c() : 0L, (8191 & 32) != 0 ? colors2.n() : 0L, (8191 & 64) != 0 ? colors2.d() : 0L, (8191 & 128) != 0 ? colors2.g() : 0L, (8191 & 256) != 0 ? colors2.h() : 0L, (8191 & 512) != 0 ? colors2.e() : 0L, (8191 & 1024) != 0 ? colors2.i() : 0L, (8191 & 2048) != 0 ? colors2.f() : 0L, (8191 & 4096) != 0 ? colors2.o() : false);
                composerS.z(objH);
            }
            composerS.Q();
            Colors colors3 = (Colors) objH;
            ColorsKt.i(colors3, colorsA);
            shapes2 = shapes3;
            CompositionLocalKt.b(new ProvidedValue[]{ColorsKt.e().c(colors3), ContentAlphaKt.a().c(Float.valueOf(ContentAlpha.INSTANCE.c(composerS, 6))), IndicationKt.a().c(RippleKt.e(false, 0.0f, 0L, composerS, 0, 7)), RippleThemeKt.d().c(MaterialRippleTheme.INSTANCE), ShapesKt.a().c(shapes2), TextSelectionColorsKt.b().c(MaterialTextSelectionColorsKt.e(colors3, composerS, 0)), TypographyKt.b().c(typography3)}, ComposableLambdaKt.b(composerS, -1740102967, true, new MaterialThemeKt$MaterialTheme$1(typography3, content, i16)), composerS, 56);
            typography2 = typography3;
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new MaterialThemeKt$MaterialTheme$2(colorsA, typography2, shapes2, content, i10, i11));
    }
}
