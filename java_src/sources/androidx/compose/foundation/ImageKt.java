package androidx.compose.foundation;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.PainterModifierKt;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.ContentScale;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ImageKt {
    @ComposableTarget
    @Composable
    public static final void a(@NotNull Painter painter, @Nullable String str, @Nullable Modifier modifier, @Nullable Alignment alignment, @Nullable ContentScale contentScale, float f, @Nullable ColorFilter colorFilter, @Nullable Composer composer, int i10, int i11) {
        Modifier modifierC;
        t.j(painter, "painter");
        Composer composerS = composer.s(1142754848);
        Modifier modifier2 = (i11 & 4) != 0 ? Modifier.Companion : modifier;
        Alignment alignmentE = (i11 & 8) != 0 ? Alignment.Companion.e() : alignment;
        ContentScale contentScaleB = (i11 & 16) != 0 ? ContentScale.Companion.b() : contentScale;
        float f6 = (i11 & 32) != 0 ? 1.0f : f;
        ColorFilter colorFilter2 = (i11 & 64) != 0 ? null : colorFilter;
        composerS.G(-816794123);
        if (str != null) {
            Modifier.Companion companion = Modifier.Companion;
            composerS.G(1157296644);
            boolean zK = composerS.k(str);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new ImageKt$Image$semantics$1$1(str);
                composerS.z(objH);
            }
            composerS.Q();
            modifierC = SemanticsModifierKt.c(companion, false, (l) objH, 1, null);
        } else {
            modifierC = Modifier.Companion;
        }
        composerS.Q();
        Modifier modifierB = PainterModifierKt.b(ClipKt.b(modifier2.B(modifierC)), painter, false, alignmentE, contentScaleB, f6, colorFilter2, 2, null);
        ImageKt$Image$2 imageKt$Image$2 = new MeasurePolicy() { // from class: androidx.compose.foundation.ImageKt$Image$2
            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                return androidx.compose.ui.layout.c.c(this, intrinsicMeasureScope, list, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                return androidx.compose.ui.layout.c.d(this, intrinsicMeasureScope, list, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                return androidx.compose.ui.layout.c.a(this, intrinsicMeasureScope, list, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                return androidx.compose.ui.layout.c.b(this, intrinsicMeasureScope, list, i12);
            }

            @Override // androidx.compose.ui.layout.MeasurePolicy
            @NotNull
            public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                t.j(Layout, "$this$Layout");
                t.j(list, "<anonymous parameter 0>");
                return MeasureScope.CC.b(Layout, Constraints.p(j6), Constraints.o(j6), null, ImageKt$Image$2$measure$1.INSTANCE, 4, null);
            }
        };
        composerS.G(-1323940314);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
        e8.a<ComposeUiNode> aVarA = companion2.a();
        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
        if (!(composerS.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composerS.e();
        if (composerS.r()) {
            composerS.w(aVarA);
        } else {
            composerS.c();
        }
        composerS.L();
        Composer composerA = Updater.a(composerS);
        Updater.e(composerA, imageKt$Image$2, companion2.d());
        Updater.e(composerA, density, companion2.b());
        Updater.e(composerA, layoutDirection, companion2.c());
        Updater.e(composerA, viewConfiguration, companion2.f());
        composerS.o();
        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
        composerS.G(2058660585);
        composerS.G(-2077995625);
        composerS.Q();
        composerS.Q();
        composerS.d();
        composerS.Q();
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ImageKt$Image$3(painter, str, modifier2, alignmentE, contentScaleB, f6, colorFilter2, i10, i11));
    }
}
