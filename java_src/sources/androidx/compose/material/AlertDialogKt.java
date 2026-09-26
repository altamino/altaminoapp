package androidx.compose.material;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
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
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import e8.a;
import e8.p;
import e8.q;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class AlertDialogKt {
    private static final long TextBaselineDistanceFromTitle;
    private static final long TextBaselineDistanceFromTop;

    @NotNull
    private static final Modifier TextPadding;
    private static final long TitleBaselineDistanceFromTop;

    @NotNull
    private static final Modifier TitlePadding;

    static {
        Modifier.Companion companion = Modifier.Companion;
        float f = 24;
        TitlePadding = PaddingKt.m(companion, Dp.f(f), 0.0f, Dp.f(f), 0.0f, 10, null);
        TextPadding = PaddingKt.m(companion, Dp.f(f), 0.0f, Dp.f(f), Dp.f(28), 2, null);
        TitleBaselineDistanceFromTop = TextUnitKt.e(40);
        TextBaselineDistanceFromTitle = TextUnitKt.e(36);
        TextBaselineDistanceFromTop = TextUnitKt.e(38);
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull ColumnScope columnScope, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable Composer composer, int i10) {
        int i11;
        t.j(columnScope, "<this>");
        Composer composerS = composer.s(-555573207);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(columnScope) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pVar) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(pVar2) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            Modifier modifierA = columnScope.a(Modifier.Companion, 1.0f, false);
            AlertDialogKt$AlertDialogBaselineLayout$2 alertDialogKt$AlertDialogBaselineLayout$2 = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogBaselineLayout$2
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

                /* JADX WARN: Code duplicated, block: B:39:0x00a9  */
                /* JADX WARN: Code duplicated, block: B:47:0x00c3  */
                /* JADX WARN: Code duplicated, block: B:56:0x00e5  */
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    Object next;
                    Object next2;
                    int iIntValue;
                    int iIntValue2;
                    int iIntValue3;
                    int i12;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    Iterator<T> it = list.iterator();
                    do {
                        if (!it.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it.next();
                    } while (!t.e(LayoutIdKt.a((Measurable) next), "title"));
                    Measurable measurable = (Measurable) next;
                    Placeable placeableB0 = measurable != null ? measurable.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null)) : null;
                    Iterator<T> it2 = list.iterator();
                    do {
                        if (!it2.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it2.next();
                    } while (!t.e(LayoutIdKt.a((Measurable) next2), "text"));
                    Measurable measurable2 = (Measurable) next2;
                    Placeable placeableB1 = measurable2 != null ? measurable2.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null)) : null;
                    int iB0 = 0;
                    int iMax = Math.max(placeableB0 != null ? placeableB0.Q0() : 0, placeableB1 != null ? placeableB1.Q0() : 0);
                    if (placeableB0 == null) {
                        iIntValue = 0;
                    } else {
                        int iC0 = placeableB0.c0(AlignmentLineKt.a());
                        Integer numValueOf = iC0 == Integer.MIN_VALUE ? null : Integer.valueOf(iC0);
                        if (numValueOf != null) {
                            iIntValue = numValueOf.intValue();
                        } else {
                            iIntValue = 0;
                        }
                    }
                    if (placeableB0 == null) {
                        iIntValue2 = 0;
                    } else {
                        int iC1 = placeableB0.c0(AlignmentLineKt.b());
                        Integer numValueOf2 = iC1 == Integer.MIN_VALUE ? null : Integer.valueOf(iC1);
                        if (numValueOf2 != null) {
                            iIntValue2 = numValueOf2.intValue();
                        } else {
                            iIntValue2 = 0;
                        }
                    }
                    int iL0 = Layout.L0(AlertDialogKt.TitleBaselineDistanceFromTop) - iIntValue;
                    if (placeableB1 == null) {
                        iIntValue3 = 0;
                    } else {
                        int iC2 = placeableB1.c0(AlignmentLineKt.a());
                        Integer numValueOf3 = iC2 != Integer.MIN_VALUE ? Integer.valueOf(iC2) : null;
                        if (numValueOf3 != null) {
                            iIntValue3 = numValueOf3.intValue();
                        } else {
                            iIntValue3 = 0;
                        }
                    }
                    int iL1 = placeableB0 == null ? Layout.L0(AlertDialogKt.TextBaselineDistanceFromTop) : Layout.L0(AlertDialogKt.TextBaselineDistanceFromTitle);
                    int iB1 = placeableB0 != null ? placeableB0.B0() + iL0 : 0;
                    if (placeableB0 == null) {
                        i12 = iL1 - iIntValue3;
                    } else {
                        i12 = (iIntValue2 == 0 ? iB1 - iIntValue3 : (iL0 + iIntValue2) - iIntValue3) + iL1;
                    }
                    if (placeableB1 != null) {
                        if (iIntValue2 == 0) {
                            iB0 = (placeableB1.B0() + iL1) - iIntValue3;
                        } else {
                            iB0 = ((placeableB1.B0() + iL1) - iIntValue3) - ((placeableB0 != null ? placeableB0.B0() : 0) - iIntValue2);
                        }
                    }
                    return MeasureScope.CC.b(Layout, iMax, iB0 + iB1, null, new AlertDialogKt$AlertDialogBaselineLayout$2$measure$1(placeableB0, iL0, placeableB1, i12), 4, null);
                }
            };
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierA);
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
            Updater.e(composerA, alertDialogKt$AlertDialogBaselineLayout$2, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(1454034642);
            composerS.G(-1160646206);
            if (pVar != null) {
                Modifier modifierB = LayoutIdKt.b(TitlePadding, "title");
                Alignment.Companion companion2 = Alignment.Companion;
                Modifier modifierB2 = columnScope.b(modifierB, companion2.k());
                composerS.G(733328855);
                MeasurePolicy measurePolicyH = BoxKt.h(companion2.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA2 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB2);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA2);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA2 = Updater.a(composerS);
                Updater.e(composerA2, measurePolicyH, companion.d());
                Updater.e(composerA2, density2, companion.b());
                Updater.e(composerA2, layoutDirection2, companion.c());
                Updater.e(composerA2, viewConfiguration2, companion.f());
                composerS.o();
                qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                composerS.G(472489145);
                pVar.invoke(composerS, 0);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                l0 l0Var = l0.INSTANCE;
            }
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierB3 = LayoutIdKt.b(TextPadding, "text");
                Alignment.Companion companion3 = Alignment.Companion;
                Modifier modifierB4 = columnScope.b(modifierB3, companion3.k());
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA3 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB4);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA3);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA3 = Updater.a(composerS);
                Updater.e(composerA3, measurePolicyH2, companion.d());
                Updater.e(composerA3, density3, companion.b());
                Updater.e(composerA3, layoutDirection3, companion.c());
                Updater.e(composerA3, viewConfiguration3, companion.f());
                composerS.o();
                qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                composerS.G(-272722206);
                pVar2.invoke(composerS, 0);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                l0 l0Var2 = l0.INSTANCE;
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogBaselineLayout$3(columnScope, pVar, pVar2, i10));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011b A[PHI: r2 r3 r4 r5 r6 r7
      0x011b: PHI (r2v28 int) = (r2v20 int), (r2v31 int) binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]
      0x011b: PHI (r3v6 androidx.compose.ui.Modifier) = (r3v2 androidx.compose.ui.Modifier), (r3v10 androidx.compose.ui.Modifier) binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]
      0x011b: PHI (r4v8 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>) = 
      (r4v5 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
      (r4v10 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
     binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]
      0x011b: PHI (r5v12 androidx.compose.ui.graphics.Shape) = (r5v7 androidx.compose.ui.graphics.Shape), (r5v13 androidx.compose.ui.graphics.Shape) binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]
      0x011b: PHI (r6v7 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>) = 
      (r6v3 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
      (r6v2 e8.p<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, w7.l0>)
     binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]
      0x011b: PHI (r7v11 long) = (r7v7 long), (r7v12 long) binds: [B:119:0x0154, B:99:0x0116] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:101:0x011e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:102:0x0120  */
    /* JADX WARN: Code duplicated, block: B:103:0x0123  */
    /* JADX WARN: Code duplicated, block: B:106:0x0128  */
    /* JADX WARN: Code duplicated, block: B:109:0x012c  */
    /* JADX WARN: Code duplicated, block: B:112:0x0132  */
    /* JADX WARN: Code duplicated, block: B:113:0x013f  */
    /* JADX WARN: Code duplicated, block: B:116:0x0144  */
    /* JADX WARN: Code duplicated, block: B:117:0x0151  */
    /* JADX WARN: Code duplicated, block: B:120:0x0156  */
    /* JADX WARN: Code duplicated, block: B:125:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:127:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0048  */
    /* JADX WARN: Code duplicated, block: B:28:0x004d  */
    /* JADX WARN: Code duplicated, block: B:30:0x0051  */
    /* JADX WARN: Code duplicated, block: B:32:0x0059  */
    /* JADX WARN: Code duplicated, block: B:33:0x005c  */
    /* JADX WARN: Code duplicated, block: B:37:0x0063  */
    /* JADX WARN: Code duplicated, block: B:39:0x0068  */
    /* JADX WARN: Code duplicated, block: B:41:0x006c  */
    /* JADX WARN: Code duplicated, block: B:43:0x0074  */
    /* JADX WARN: Code duplicated, block: B:44:0x0077  */
    /* JADX WARN: Code duplicated, block: B:48:0x0080  */
    /* JADX WARN: Code duplicated, block: B:50:0x0084  */
    /* JADX WARN: Code duplicated, block: B:52:0x008c  */
    /* JADX WARN: Code duplicated, block: B:53:0x008f  */
    /* JADX WARN: Code duplicated, block: B:56:0x0095  */
    /* JADX WARN: Code duplicated, block: B:59:0x009c  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:70:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:78:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:85:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fb  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull p<? super Composer, ? super Integer, l0> buttons, @Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable Shape shape, long j6, long j10, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        p<? super Composer, ? super Integer, l0> pVar3;
        int i14;
        int i15;
        p<? super Composer, ? super Integer, l0> pVar4;
        int i16;
        Shape shape2;
        long j11;
        long j12;
        Modifier modifier2;
        p<? super Composer, ? super Integer, l0> pVar5;
        Shape shapeB;
        long jN;
        long j13;
        Modifier modifier3;
        p<? super Composer, ? super Integer, l0> pVar6;
        long j14;
        long j15;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(buttons, "buttons");
        Composer composerS = composer.s(-453679601);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(buttons) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i17 = i11 & 2;
        if (i17 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    pVar3 = pVar;
                    if (composerS.k(pVar3)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        pVar4 = pVar2;
                        if (composerS.k(pVar4)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    if ((57344 & i10) == 0) {
                        if ((i11 & 16) == 0) {
                            shape2 = shape;
                            int i18 = composerS.k(shape2) ? 16384 : 8192;
                            i12 |= i18;
                        } else {
                            shape2 = shape;
                        }
                        i12 |= i18;
                    } else {
                        shape2 = shape;
                    }
                    if ((458752 & i10) == 0) {
                        if ((i11 & 32) == 0) {
                            j11 = j6;
                            int i19 = composerS.q(j11) ? 131072 : 65536;
                            i12 |= i19;
                        } else {
                            j11 = j6;
                        }
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    if ((3670016 & i10) == 0) {
                        if ((i11 & 64) == 0) {
                            j12 = j10;
                            int i20 = composerS.q(j12) ? 1048576 : 524288;
                            i12 |= i20;
                        } else {
                            j12 = j10;
                        }
                        i12 |= i20;
                    } else {
                        j12 = j10;
                    }
                    if ((2995931 & i12) == 599186 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i17 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                pVar3 = null;
                            }
                            pVar5 = i15 == 0 ? pVar4 : null;
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if ((i11 & 32) != 0) {
                                jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                                i12 &= -458753;
                            } else {
                                jN = j11;
                            }
                            if ((i11 & 64) != 0) {
                                long jB = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                                i12 &= -3670017;
                                j13 = jB;
                            }
                            composerS.A();
                            ComposableLambda composableLambdaB = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                            int i21 = ((i12 >> 3) & 14) | 1572864;
                            int i22 = i12 >> 9;
                            SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB, composerS, i21 | (i22 & 112) | (i22 & 896) | (i22 & 7168), 48);
                            modifier3 = modifier2;
                            pVar6 = pVar3;
                            j14 = jN;
                            j15 = j13;
                        } else {
                            composerS.g();
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            if ((i11 & 64) != 0) {
                                i12 &= -3670017;
                            }
                            modifier2 = modifier;
                            pVar5 = pVar4;
                            shapeB = shape2;
                            jN = j11;
                        }
                        j13 = j12;
                        composerS.A();
                        ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                        int i23 = ((i12 >> 3) & 14) | 1572864;
                        int i24 = i12 >> 9;
                        SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB2, composerS, i23 | (i24 & 112) | (i24 & 896) | (i24 & 7168), 48);
                        modifier3 = modifier2;
                        pVar6 = pVar3;
                        j14 = jN;
                        j15 = j13;
                    } else {
                        composerS.g();
                        modifier3 = modifier;
                        pVar6 = pVar3;
                        pVar5 = pVar4;
                        shapeB = shape2;
                        j14 = j11;
                        j15 = j12;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
                }
                i12 |= 3072;
                pVar4 = pVar2;
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i18;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        j11 = j6;
                        if (composerS.q(j11)) {
                        }
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i20;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                if ((2995931 & i12) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB2 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB2;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB3 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB3;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB3 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i25 = ((i12 >> 3) & 14) | 1572864;
                    int i26 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB3, composerS, i25 | (i26 & 112) | (i26 & 896) | (i26 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB4 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB4;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB5 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB5;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB4 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i27 = ((i12 >> 3) & 14) | 1572864;
                    int i28 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB4, composerS, i27 | (i28 & 112) | (i28 & 896) | (i28 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
            }
            i12 |= 384;
            pVar3 = pVar;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    pVar4 = pVar2;
                    if (composerS.k(pVar4)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i18;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        j11 = j6;
                        if (composerS.q(j11)) {
                        }
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i20;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                if ((2995931 & i12) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB6 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB6;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB7 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB7;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB5 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i29 = ((i12 >> 3) & 14) | 1572864;
                    int i210 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB5, composerS, i29 | (i210 & 112) | (i210 & 896) | (i210 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB8 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB8;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB9 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB9;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB6 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i211 = ((i12 >> 3) & 14) | 1572864;
                    int i212 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB6, composerS, i211 | (i212 & 112) | (i212 & 896) | (i212 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
            }
            i12 |= 3072;
            pVar4 = pVar2;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    j11 = j6;
                    if (composerS.q(j11)) {
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            if ((2995931 & i12) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB10 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB10;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB11 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB11;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB7 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i213 = ((i12 >> 3) & 14) | 1572864;
                int i214 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB7, composerS, i213 | (i214 & 112) | (i214 & 896) | (i214 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB12 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB12;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB13 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB13;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB8 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i215 = ((i12 >> 3) & 14) | 1572864;
                int i216 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB8, composerS, i215 | (i216 & 112) | (i216 & 896) | (i216 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                pVar3 = pVar;
                if (composerS.k(pVar3)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    pVar4 = pVar2;
                    if (composerS.k(pVar4)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i18;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        j11 = j6;
                        if (composerS.q(j11)) {
                        }
                        i12 |= i19;
                    } else {
                        j11 = j6;
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                if ((3670016 & i10) == 0) {
                    if ((i11 & 64) == 0) {
                        j12 = j10;
                        if (composerS.q(j12)) {
                        }
                        i12 |= i20;
                    } else {
                        j12 = j10;
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                if ((2995931 & i12) == 599186) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB14 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB14;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB15 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB15;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB9 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i217 = ((i12 >> 3) & 14) | 1572864;
                    int i218 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB9, composerS, i217 | (i218 & 112) | (i218 & 896) | (i218 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB16 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB16;
                        } else {
                            j13 = j12;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            pVar3 = null;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j11;
                        }
                        if ((i11 & 64) != 0) {
                            long jB17 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                            i12 &= -3670017;
                            j13 = jB17;
                        } else {
                            j13 = j12;
                        }
                    }
                    composerS.A();
                    ComposableLambda composableLambdaB10 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                    int i219 = ((i12 >> 3) & 14) | 1572864;
                    int i2110 = i12 >> 9;
                    SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB10, composerS, i219 | (i2110 & 112) | (i2110 & 896) | (i2110 & 7168), 48);
                    modifier3 = modifier2;
                    pVar6 = pVar3;
                    j14 = jN;
                    j15 = j13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
            }
            i12 |= 3072;
            pVar4 = pVar2;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    j11 = j6;
                    if (composerS.q(j11)) {
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            if ((2995931 & i12) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB18 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB18;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB19 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB19;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB11 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i2111 = ((i12 >> 3) & 14) | 1572864;
                int i2112 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB11, composerS, i2111 | (i2112 & 112) | (i2112 & 896) | (i2112 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB110 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB110;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB111 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB111;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB12 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i2113 = ((i12 >> 3) & 14) | 1572864;
                int i2114 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB12, composerS, i2113 | (i2114 & 112) | (i2114 & 896) | (i2114 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
        }
        i12 |= 384;
        pVar3 = pVar;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                pVar4 = pVar2;
                if (composerS.k(pVar4)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i18;
                } else {
                    shape2 = shape;
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    j11 = j6;
                    if (composerS.q(j11)) {
                    }
                    i12 |= i19;
                } else {
                    j11 = j6;
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            if ((3670016 & i10) == 0) {
                if ((i11 & 64) == 0) {
                    j12 = j10;
                    if (composerS.q(j12)) {
                    }
                    i12 |= i20;
                } else {
                    j12 = j10;
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            if ((2995931 & i12) == 599186) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB112 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB112;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB113 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB113;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB13 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i2115 = ((i12 >> 3) & 14) | 1572864;
                int i2116 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB13, composerS, i2115 | (i2116 & 112) | (i2116 & 896) | (i2116 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB114 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB114;
                    } else {
                        j13 = j12;
                    }
                } else {
                    if (i17 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        pVar3 = null;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j11;
                    }
                    if ((i11 & 64) != 0) {
                        long jB115 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                        i12 &= -3670017;
                        j13 = jB115;
                    } else {
                        j13 = j12;
                    }
                }
                composerS.A();
                ComposableLambda composableLambdaB14 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
                int i2117 = ((i12 >> 3) & 14) | 1572864;
                int i2118 = i12 >> 9;
                SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB14, composerS, i2117 | (i2118 & 112) | (i2118 & 896) | (i2118 & 7168), 48);
                modifier3 = modifier2;
                pVar6 = pVar3;
                j14 = jN;
                j15 = j13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
        }
        i12 |= 3072;
        pVar4 = pVar2;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i18;
            } else {
                shape2 = shape;
            }
            i12 |= i18;
        } else {
            shape2 = shape;
        }
        if ((458752 & i10) == 0) {
            if ((i11 & 32) == 0) {
                j11 = j6;
                if (composerS.q(j11)) {
                }
                i12 |= i19;
            } else {
                j11 = j6;
            }
            i12 |= i19;
        } else {
            j11 = j6;
        }
        if ((3670016 & i10) == 0) {
            if ((i11 & 64) == 0) {
                j12 = j10;
                if (composerS.q(j12)) {
                }
                i12 |= i20;
            } else {
                j12 = j10;
            }
            i12 |= i20;
        } else {
            j12 = j10;
        }
        if ((2995931 & i12) == 599186) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j11;
                }
                if ((i11 & 64) != 0) {
                    long jB116 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                    j13 = jB116;
                } else {
                    j13 = j12;
                }
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j11;
                }
                if ((i11 & 64) != 0) {
                    long jB117 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                    j13 = jB117;
                } else {
                    j13 = j12;
                }
            }
            composerS.A();
            ComposableLambda composableLambdaB15 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
            int i2119 = ((i12 >> 3) & 14) | 1572864;
            int i21110 = i12 >> 9;
            SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB15, composerS, i2119 | (i21110 & 112) | (i21110 & 896) | (i21110 & 7168), 48);
            modifier3 = modifier2;
            pVar6 = pVar3;
            j14 = jN;
            j15 = j13;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j11;
                }
                if ((i11 & 64) != 0) {
                    long jB118 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                    j13 = jB118;
                } else {
                    j13 = j12;
                }
            } else {
                if (i17 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    pVar3 = null;
                }
                if (i15 == 0) {
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).b();
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j11;
                }
                if ((i11 & 64) != 0) {
                    long jB119 = ColorsKt.b(jN, composerS, (i12 >> 15) & 14);
                    i12 &= -3670017;
                    j13 = jB119;
                } else {
                    j13 = j12;
                }
            }
            composerS.A();
            ComposableLambda composableLambdaB16 = ComposableLambdaKt.b(composerS, 629950291, true, new AlertDialogKt$AlertDialogContent$1(pVar3, pVar5, buttons, i12));
            int i21111 = ((i12 >> 3) & 14) | 1572864;
            int i21112 = i12 >> 9;
            SurfaceKt.b(modifier2, shapeB, jN, j13, null, 0.0f, composableLambdaB16, composerS, i21111 | (i21112 & 112) | (i21112 & 896) | (i21112 & 7168), 48);
            modifier3 = modifier2;
            pVar6 = pVar3;
            j14 = jN;
            j15 = j13;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogContent$2(buttons, modifier3, pVar6, pVar5, shapeB, j14, j15, i10, i11));
    }

    @Composable
    @ComposableInferredTarget
    public static final void c(final float f, final float f6, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(content, "content");
        Composer composerS = composer.s(73434452);
        if ((i10 & 14) == 0) {
            i11 = (composerS.n(f) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.n(f6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.k(content) ? 256 : 128;
        }
        if ((i11 & 731) == 146 && composerS.b()) {
            composerS.g();
        } else {
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.AlertDialogKt$AlertDialogFlowRow$1
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

                private static final void g(List<List<Placeable>> list, n0 n0Var, MeasureScope measureScope, float f7, List<Placeable> list2, List<Integer> list3, n0 n0Var2, List<Integer> list4, n0 n0Var3, n0 n0Var4) {
                    List<List<Placeable>> list5 = list;
                    if (!list5.isEmpty()) {
                        n0Var.element += measureScope.j0(f7);
                    }
                    list5.add(d0.U0(list2));
                    list3.add(Integer.valueOf(n0Var2.element));
                    list4.add(Integer.valueOf(n0Var.element));
                    n0Var.element += n0Var2.element;
                    n0Var3.element = Math.max(n0Var3.element, n0Var4.element);
                    list2.clear();
                    n0Var4.element = 0;
                    n0Var2.element = 0;
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    n0 n0Var;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    ArrayList arrayList3 = new ArrayList();
                    n0 n0Var2 = new n0();
                    n0 n0Var3 = new n0();
                    ArrayList arrayList4 = new ArrayList();
                    n0 n0Var4 = new n0();
                    n0 n0Var5 = new n0();
                    long jB = ConstraintsKt.b(0, Constraints.n(j6), 0, 0, 13, null);
                    Iterator<? extends Measurable> it = measurables.iterator();
                    while (it.hasNext()) {
                        Placeable placeableB0 = it.next().b0(jB);
                        long j10 = jB;
                        n0 n0Var6 = n0Var5;
                        if (f(arrayList4, n0Var4, Layout, f, j6, placeableB0)) {
                            n0Var = n0Var4;
                        } else {
                            n0Var = n0Var4;
                            g(arrayList, n0Var3, Layout, f6, arrayList4, arrayList2, n0Var6, arrayList3, n0Var2, n0Var);
                        }
                        n0 n0Var7 = n0Var;
                        if (!arrayList4.isEmpty()) {
                            n0Var7.element += Layout.j0(f);
                        }
                        ArrayList arrayList5 = arrayList4;
                        arrayList5.add(placeableB0);
                        n0Var7.element += placeableB0.Q0();
                        n0Var5 = n0Var6;
                        n0Var5.element = Math.max(n0Var5.element, placeableB0.B0());
                        arrayList4 = arrayList5;
                        n0Var4 = n0Var7;
                        jB = j10;
                        n0Var3 = n0Var3;
                    }
                    ArrayList arrayList6 = arrayList4;
                    n0 n0Var8 = n0Var3;
                    n0 n0Var9 = n0Var4;
                    if (!arrayList6.isEmpty()) {
                        g(arrayList, n0Var8, Layout, f6, arrayList6, arrayList2, n0Var5, arrayList3, n0Var2, n0Var9);
                    }
                    int iN = Constraints.n(j6) != Integer.MAX_VALUE ? Constraints.n(j6) : Math.max(n0Var2.element, Constraints.p(j6));
                    return MeasureScope.CC.b(Layout, iN, Math.max(n0Var8.element, Constraints.o(j6)), null, new AlertDialogKt$AlertDialogFlowRow$1$measure$1(arrayList, Layout, f, iN, arrayList3), 4, null);
                }

                private static final boolean f(List<Placeable> list, n0 n0Var, MeasureScope measureScope, float f7, long j6, Placeable placeable) {
                    if (!list.isEmpty() && n0Var.element + measureScope.j0(f7) + placeable.Q0() > Constraints.n(j6)) {
                        return false;
                    }
                    return true;
                }
            };
            composerS.G(-1323940314);
            Modifier.Companion companion = Modifier.Companion;
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(companion);
            int i12 = ((((i11 >> 6) & 14) << 9) & 7168) | 6;
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
            Updater.e(composerA, measurePolicy, companion2.d());
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i12 >> 3) & 112));
            composerS.G(2058660585);
            content.invoke(composerS, Integer.valueOf((i12 >> 9) & 14));
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AlertDialogKt$AlertDialogFlowRow$2(f, f6, content, i10));
    }
}
