package androidx.compose.ui.window;

import android.view.View;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.EffectsKt;
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
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.c;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidDialog_androidKt {
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull a<l0> onDismissRequest, @Nullable DialogProperties dialogProperties, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        DialogProperties dialogProperties2;
        LayoutDirection layoutDirection;
        Composer composer2;
        Object obj;
        DialogProperties dialogProperties3;
        Composer composer3;
        t.j(onDismissRequest, "onDismissRequest");
        t.j(content, "content");
        Composer composerS = composer.s(-2032877254);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onDismissRequest) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                dialogProperties2 = dialogProperties;
                int i13 = composerS.k(dialogProperties2) ? 32 : 16;
                i12 |= i13;
            } else {
                dialogProperties2 = dialogProperties;
            }
            i12 |= i13;
        } else {
            dialogProperties2 = dialogProperties;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(content) ? 256 : 128;
        }
        if ((i12 & 731) == 146 && composerS.b()) {
            composerS.g();
            dialogProperties3 = dialogProperties2;
            composer3 = composerS;
        } else {
            composerS.J();
            if ((i10 & 1) != 0 && !composerS.h()) {
                composerS.g();
                if ((i11 & 2) != 0) {
                    i12 &= -113;
                }
            } else if ((i11 & 2) != 0) {
                dialogProperties2 = new DialogProperties(false, false, null, 7, null);
                i12 &= -113;
            }
            DialogProperties dialogProperties4 = dialogProperties2;
            composerS.A();
            View view = (View) composerS.x(AndroidCompositionLocals_androidKt.k());
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            CompositionContext compositionContextD = ComposablesKt.d(composerS, 0);
            State stateN = SnapshotStateKt.n(content, composerS, (i12 >> 6) & 14);
            UUID dialogId = (UUID) RememberSaveableKt.b(new Object[0], null, null, AndroidDialog_androidKt$Dialog$dialogId$1.INSTANCE, composerS, 3080, 6);
            composerS.G(511388516);
            boolean zK = composerS.k(view) | composerS.k(density);
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                t.i(dialogId, "dialogId");
                layoutDirection = layoutDirection2;
                Composer composer4 = composerS;
                DialogWrapper dialogWrapper = new DialogWrapper(onDismissRequest, dialogProperties4, view, layoutDirection, density, dialogId);
                dialogWrapper.c(compositionContextD, ComposableLambdaKt.c(488261145, true, new AndroidDialog_androidKt$Dialog$dialog$1$1$1(stateN)));
                composer4.z(dialogWrapper);
                obj = dialogWrapper;
                composer2 = composer4;
            } else {
                layoutDirection = layoutDirection2;
                composer2 = composerS;
                obj = objH;
            }
            composer2.Q();
            DialogWrapper dialogWrapper2 = (DialogWrapper) obj;
            EffectsKt.a(dialogWrapper2, new AndroidDialog_androidKt$Dialog$1(dialogWrapper2), composer2, 8);
            EffectsKt.h(new AndroidDialog_androidKt$Dialog$2(dialogWrapper2, onDismissRequest, dialogProperties4, layoutDirection), composer2, 0);
            dialogProperties3 = dialogProperties4;
            composer3 = composer2;
        }
        ScopeUpdateScope scopeUpdateScopeU = composer3.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidDialog_androidKt$Dialog$3(onDismissRequest, dialogProperties3, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p<Composer, Integer, l0> b(State<? extends p<? super Composer, ? super Integer, l0>> state) {
        return (p) state.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void c(Modifier modifier, p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        Composer composerS = composer.s(-1177876616);
        int i15 = i11 & 1;
        if (i15 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            if (composerS.k(modifier)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i12 = i13 | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            if (composerS.k(pVar)) {
                i14 = 32;
            } else {
                i14 = 16;
            }
            i12 |= i14;
        }
        if ((i12 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            if (i15 != 0) {
                modifier = Modifier.Companion;
            }
            AndroidDialog_androidKt$DialogLayout$1 androidDialog_androidKt$DialogLayout$1 = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidDialog_androidKt$DialogLayout$1
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i16) {
                    return c.c(this, intrinsicMeasureScope, list, i16);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i16) {
                    return c.d(this, intrinsicMeasureScope, list, i16);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i16) {
                    return c.a(this, intrinsicMeasureScope, list, i16);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i16) {
                    return c.b(this, intrinsicMeasureScope, list, i16);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    Object obj;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    ArrayList arrayList = new ArrayList(measurables.size());
                    int size = measurables.size();
                    for (int i16 = 0; i16 < size; i16++) {
                        arrayList.add(measurables.get(i16).b0(j6));
                    }
                    Object obj2 = null;
                    int i17 = 1;
                    if (!arrayList.isEmpty()) {
                        obj = arrayList.get(0);
                        int iQ0 = ((Placeable) obj).Q0();
                        int iO = v.o(arrayList);
                        if (1 <= iO) {
                            int i18 = 1;
                            while (true) {
                                Object obj3 = arrayList.get(i18);
                                int iQ1 = ((Placeable) obj3).Q0();
                                if (iQ0 < iQ1) {
                                    obj = obj3;
                                    iQ0 = iQ1;
                                }
                                if (i18 == iO) {
                                    break;
                                }
                                i18++;
                            }
                        }
                    } else {
                        obj = null;
                    }
                    Placeable placeable = (Placeable) obj;
                    int iQ2 = placeable != null ? placeable.Q0() : Constraints.p(j6);
                    if (!arrayList.isEmpty()) {
                        Object obj4 = arrayList.get(0);
                        int iB0 = ((Placeable) obj4).B0();
                        int iO2 = v.o(arrayList);
                        if (1 <= iO2) {
                            while (true) {
                                Object obj5 = arrayList.get(i17);
                                int iB1 = ((Placeable) obj5).B0();
                                if (iB0 < iB1) {
                                    obj4 = obj5;
                                    iB0 = iB1;
                                }
                                if (i17 == iO2) {
                                    break;
                                }
                                i17++;
                            }
                        }
                        obj2 = obj4;
                    }
                    Placeable placeable2 = (Placeable) obj2;
                    return MeasureScope.CC.b(Layout, iQ2, placeable2 != null ? placeable2.B0() : Constraints.o(j6), null, new AndroidDialog_androidKt$DialogLayout$1$measure$1(arrayList), 4, null);
                }
            };
            int i16 = ((i12 << 3) & 112) | ((i12 >> 3) & 14);
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
            int i17 = ((i16 << 9) & 7168) | 6;
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
            Updater.e(composerA, androidDialog_androidKt$DialogLayout$1, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i17 >> 3) & 112));
            composerS.G(2058660585);
            pVar.invoke(composerS, Integer.valueOf((i17 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new AndroidDialog_androidKt$DialogLayout$2(modifier, pVar, i10, i11));
        }
    }
}
