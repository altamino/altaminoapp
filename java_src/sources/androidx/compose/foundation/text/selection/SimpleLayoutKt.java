package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class SimpleLayoutKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(content, "content");
        Composer composerS = composer.s(-2105228848);
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
            i12 |= composerS.k(content) ? 32 : 16;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            if (i13 != 0) {
                modifier = Modifier.Companion;
            }
            SimpleLayoutKt$SimpleLayout$1 simpleLayoutKt$SimpleLayout$1 = new MeasurePolicy() { // from class: androidx.compose.foundation.text.selection.SimpleLayoutKt$SimpleLayout$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i14) {
                    return c.c(this, intrinsicMeasureScope, list, i14);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i14) {
                    return c.d(this, intrinsicMeasureScope, list, i14);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i14) {
                    return c.a(this, intrinsicMeasureScope, list, i14);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i14) {
                    return c.b(this, intrinsicMeasureScope, list, i14);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    ArrayList arrayList = new ArrayList(measurables.size());
                    int size = measurables.size();
                    Integer numValueOf = 0;
                    for (int i14 = 0; i14 < size; i14++) {
                        arrayList.add(measurables.get(i14).b0(j6));
                    }
                    int size2 = arrayList.size();
                    Integer numValueOf2 = numValueOf;
                    for (int i15 = 0; i15 < size2; i15++) {
                        numValueOf2 = Integer.valueOf(Math.max(numValueOf2.intValue(), ((Placeable) arrayList.get(i15)).Q0()));
                    }
                    int iIntValue = numValueOf2.intValue();
                    int size3 = arrayList.size();
                    for (int i16 = 0; i16 < size3; i16++) {
                        numValueOf = Integer.valueOf(Math.max(numValueOf.intValue(), ((Placeable) arrayList.get(i16)).B0()));
                    }
                    return MeasureScope.CC.b(Layout, iIntValue, numValueOf.intValue(), null, new SimpleLayoutKt$SimpleLayout$1$measure$1(arrayList), 4, null);
                }
            };
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            e8.a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
            int i14 = (((((i12 << 3) & 112) | ((i12 >> 3) & 14)) << 9) & 7168) | 6;
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
            Updater.e(composerA, simpleLayoutKt$SimpleLayout$1, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i14 >> 3) & 112));
            composerS.G(2058660585);
            content.invoke(composerS, Integer.valueOf((i14 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SimpleLayoutKt$SimpleLayout$2(modifier, content, i10, i11));
    }
}
