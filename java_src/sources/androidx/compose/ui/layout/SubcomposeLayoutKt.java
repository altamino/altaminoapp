package androidx.compose.ui.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.UiComposable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class SubcomposeLayoutKt {
    @ComposableTarget
    @Composable
    public static final void a(@Nullable Modifier modifier, @NotNull p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(measurePolicy, "measurePolicy");
        Composer composerS = composer.s(-1298353104);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(measurePolicy) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            composerS.G(-492369756);
            Object objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                objH = new SubcomposeLayoutState();
                composerS.z(objH);
            }
            composerS.Q();
            int i14 = i12 << 3;
            b((SubcomposeLayoutState) objH, modifier, measurePolicy, composerS, (i14 & 112) | 8 | (i14 & 896), 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SubcomposeLayoutKt$SubcomposeLayout$2(modifier, measurePolicy, i10, i11));
    }

    @Composable
    @UiComposable
    public static final void b(@NotNull SubcomposeLayoutState state, @Nullable Modifier modifier, @NotNull p<? super SubcomposeMeasureScope, ? super Constraints, ? extends MeasureResult> measurePolicy, @Nullable Composer composer, int i10, int i11) {
        t.j(state, "state");
        t.j(measurePolicy, "measurePolicy");
        Composer composerS = composer.s(-511989831);
        if ((i11 & 2) != 0) {
            modifier = Modifier.Companion;
        }
        Modifier modifier2 = modifier;
        CompositionContext compositionContextD = ComposablesKt.d(composerS, 0);
        Modifier modifierE = ComposedModifierKt.e(composerS, modifier2);
        Density density = (Density) composerS.x(CompositionLocalsKt.e());
        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
        e8.a<LayoutNode> aVarA = LayoutNode.Companion.a();
        composerS.G(1886828752);
        if (!(composerS.t() instanceof Applier)) {
            ComposablesKt.c();
        }
        composerS.v();
        if (composerS.r()) {
            composerS.w(new SubcomposeLayoutKt$SubcomposeLayout$$inlined$ComposeNode$1(aVarA));
        } else {
            composerS.c();
        }
        Composer composerA = Updater.a(composerS);
        Updater.e(composerA, state, state.h());
        Updater.e(composerA, compositionContextD, state.f());
        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
        Updater.e(composerA, modifierE, companion.e());
        Updater.e(composerA, measurePolicy, state.g());
        Updater.e(composerA, density, companion.b());
        Updater.e(composerA, layoutDirection, companion.c());
        Updater.e(composerA, viewConfiguration, companion.f());
        composerS.d();
        composerS.Q();
        composerS.G(-607848778);
        if (!composerS.b()) {
            EffectsKt.h(new SubcomposeLayoutKt$SubcomposeLayout$4(state), composerS, 0);
        }
        composerS.Q();
        State stateN = SnapshotStateKt.n(state, composerS, 8);
        l0 l0Var = l0.INSTANCE;
        composerS.G(1157296644);
        boolean zK = composerS.k(stateN);
        Object objH = composerS.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new SubcomposeLayoutKt$SubcomposeLayout$5$1(stateN);
            composerS.z(objH);
        }
        composerS.Q();
        EffectsKt.a(l0Var, (l) objH, composerS, 0);
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SubcomposeLayoutKt$SubcomposeLayout$6(state, modifier2, measurePolicy, i10, i11));
    }

    @NotNull
    public static final SubcomposeSlotReusePolicy c(int i10) {
        return new FixedCountSubcomposeSlotReusePolicy(i10);
    }
}
