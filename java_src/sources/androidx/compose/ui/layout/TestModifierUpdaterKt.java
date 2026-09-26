package androidx.compose.ui.layout;

import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class TestModifierUpdaterKt {
    @Composable
    public static final void a(@NotNull l<? super TestModifierUpdater, l0> onAttached, @Nullable Composer composer, int i10) {
        int i11;
        t.j(onAttached, "onAttached");
        Composer composerS = composer.s(-1673066036);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(onAttached) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1 = new MeasurePolicy() { // from class: androidx.compose.ui.layout.TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.c(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.d(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.a(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i12) {
                    return c.b(this, intrinsicMeasureScope, list, i12);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope MeasurePolicy, @NotNull List<? extends Measurable> list, long j6) {
                    t.j(MeasurePolicy, "$this$MeasurePolicy");
                    t.j(list, "<anonymous parameter 0>");
                    return MeasureScope.CC.b(MeasurePolicy, Constraints.n(j6), Constraints.m(j6), null, TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1.INSTANCE, 4, null);
                }
            };
            e8.a<LayoutNode> aVarA = LayoutNode.Companion.a();
            composerS.G(1886828752);
            if (!(composerS.t() instanceof Applier)) {
                ComposablesKt.c();
            }
            composerS.v();
            if (composerS.r()) {
                composerS.w(new TestModifierUpdaterKt$TestModifierUpdaterLayout$$inlined$ComposeNode$1(aVarA));
            } else {
                composerS.c();
            }
            Composer composerA = Updater.a(composerS);
            Updater.e(composerA, testModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1, ComposeUiNode.Companion.d());
            Updater.d(composerA, new TestModifierUpdaterKt$TestModifierUpdaterLayout$1$1(onAttached));
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TestModifierUpdaterKt$TestModifierUpdaterLayout$2(onAttached, i10));
    }
}
