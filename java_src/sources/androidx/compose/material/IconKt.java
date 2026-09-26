package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class IconKt {

    @NotNull
    private static final Modifier DefaultIconSizeModifier = SizeKt.y(Modifier.Companion, Dp.f(24));

    @ComposableTarget
    @Composable
    public static final void a(@NotNull Painter painter, @Nullable String str, @Nullable Modifier modifier, long j6, @Nullable Composer composer, int i10, int i11) {
        Modifier modifierC;
        t.j(painter, "painter");
        Composer composerS = composer.s(-1142959010);
        Modifier modifier2 = (i11 & 4) != 0 ? Modifier.Companion : modifier;
        long jL = (i11 & 8) != 0 ? Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j6;
        ColorFilter colorFilterB = Color.n(jL, Color.Companion.f()) ? null : ColorFilter.Companion.b(ColorFilter.Companion, jL, 0, 2, null);
        composerS.G(1547385429);
        if (str != null) {
            Modifier.Companion companion = Modifier.Companion;
            composerS.G(1157296644);
            boolean zK = composerS.k(str);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new IconKt$Icon$semantics$1$1(str);
                composerS.z(objH);
            }
            composerS.Q();
            modifierC = SemanticsModifierKt.c(companion, false, (l) objH, 1, null);
        } else {
            modifierC = Modifier.Companion;
        }
        Modifier modifier3 = modifierC;
        composerS.Q();
        BoxKt.a(PainterModifierKt.b(c(GraphicsLayerModifierKt.d(modifier2), painter), painter, false, null, ContentScale.Companion.b(), 0.0f, colorFilterB, 22, null).B(modifier3), composerS, 0);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new IconKt$Icon$1(painter, str, modifier2, jL, i10, i11));
    }

    @ComposableTarget
    @Composable
    public static final void b(@NotNull ImageVector imageVector, @Nullable String str, @Nullable Modifier modifier, long j6, @Nullable Composer composer, int i10, int i11) {
        t.j(imageVector, "imageVector");
        composer.G(-800853103);
        a(VectorPainterKt.b(imageVector, composer, i10 & 14), str, (i11 & 4) != 0 ? Modifier.Companion : modifier, (i11 & 8) != 0 ? Color.l(((Color) composer.x(ContentColorKt.a())).v(), ((Number) composer.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j6, composer, VectorPainter.$stable | (i10 & 112) | (i10 & 896) | (i10 & 7168), 0);
        composer.Q();
    }

    private static final Modifier c(Modifier modifier, Painter painter) {
        Modifier modifier2;
        if (!Size.f(painter.k(), Size.Companion.a()) && !d(painter.k())) {
            modifier2 = Modifier.Companion;
        } else {
            modifier2 = DefaultIconSizeModifier;
        }
        return modifier.B(modifier2);
    }

    private static final boolean d(long j6) {
        if (Float.isInfinite(Size.i(j6)) && Float.isInfinite(Size.g(j6))) {
            return true;
        }
        return false;
    }
}
