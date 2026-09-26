package androidx.compose.material.internal;

import android.view.View;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import e8.a;
import e8.p;
import e8.q;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ExposedDropdownMenuPopupKt {

    @NotNull
    private static final ProvidableCompositionLocal<String> LocalPopupTestTag = CompositionLocalKt.d(null, ExposedDropdownMenuPopupKt$LocalPopupTestTag$1.INSTANCE, 1, null);

    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable a<l0> aVar, @NotNull PopupPositionProvider popupPositionProvider, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        a<l0> aVar2;
        int i12;
        Composer composer2;
        Object obj;
        Composer composer3;
        t.j(popupPositionProvider, "popupPositionProvider");
        t.j(content, "content");
        Composer composerS = composer.s(-841446797);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            aVar2 = aVar;
        } else if ((i10 & 14) == 0) {
            aVar2 = aVar;
            i12 = (composerS.k(aVar2) ? 4 : 2) | i10;
        } else {
            aVar2 = aVar;
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(popupPositionProvider) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(content) ? 256 : 128;
        }
        int i14 = i12;
        if ((i14 & 731) == 146 && composerS.b()) {
            composerS.g();
            composer3 = composerS;
        } else {
            a<l0> aVar3 = i13 != 0 ? null : aVar2;
            View view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            String str = (String) composerS.x(LocalPopupTestTag);
            final LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            CompositionContext compositionContextD = ComposablesKt.d(composerS, 0);
            State stateN = SnapshotStateKt.n(content, composerS, (i14 >> 6) & 14);
            UUID popupId = (UUID) RememberSaveableKt.b(new Object[0], null, null, ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupId$1.INSTANCE, composerS, 3080, 6);
            composerS.G(-492369756);
            Object objH = composerS.H();
            if (objH == Composer.Companion.a()) {
                t.i(popupId, "popupId");
                Composer composer4 = composerS;
                PopupLayout popupLayout = new PopupLayout(aVar3, str, view, density, popupPositionProvider, popupId);
                popupLayout.n(compositionContextD, ComposableLambdaKt.c(144472904, true, new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1(popupLayout, stateN)));
                composer4.z(popupLayout);
                obj = popupLayout;
                composer2 = composer4;
            } else {
                composer2 = composerS;
                obj = objH;
            }
            composer2.Q();
            final PopupLayout popupLayout2 = (PopupLayout) obj;
            EffectsKt.a(popupLayout2, new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$1(popupLayout2, aVar3, str, layoutDirection), composer2, 8);
            EffectsKt.h(new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$2(popupLayout2, aVar3, str, layoutDirection), composer2, 0);
            EffectsKt.a(popupPositionProvider, new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$3(popupLayout2, popupPositionProvider), composer2, (i14 >> 3) & 14);
            Modifier modifierA = OnGloballyPositionedModifierKt.a(Modifier.Companion, new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$5(popupLayout2));
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.internal.ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i15) {
                    return c.c(this, intrinsicMeasureScope, list, i15);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i15) {
                    return c.d(this, intrinsicMeasureScope, list, i15);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i15) {
                    return c.a(this, intrinsicMeasureScope, list, i15);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i15) {
                    return c.b(this, intrinsicMeasureScope, list, i15);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> list, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(list, "<anonymous parameter 0>");
                    popupLayout2.setParentLayoutDirection(layoutDirection);
                    return MeasureScope.CC.b(Layout, 0, 0, null, ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6$measure$1.INSTANCE, 4, null);
                }
            };
            composer2.G(-1323940314);
            Density density2 = (Density) composer2.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
            if (!(composer2.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composer2.e();
            if (composer2.r()) {
                composer2.w(aVarA);
            } else {
                composer2.c();
            }
            composer2.L();
            Composer composerA = Updater.a(composer2);
            Updater.e(composerA, measurePolicy, companion.d());
            Updater.e(composerA, density2, companion.b());
            Updater.e(composerA, layoutDirection2, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composer2.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
            composer2.G(2058660585);
            composer2.G(-261830998);
            composer2.Q();
            composer2.Q();
            composer2.d();
            composer2.Q();
            aVar2 = aVar3;
            composer3 = composer2;
        }
        ScopeUpdateScope scopeUpdateScopeU = composer3.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$7(aVar2, popupPositionProvider, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p<Composer, Integer, l0> b(State<? extends p<? super Composer, ? super Integer, l0>> state) {
        return (p) state.getValue();
    }
}
