package androidx.compose.material;

import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import j8.o;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class SnackbarKt {
    private static final float HorizontalSpacingButtonSide;
    private static final float TextEndExtraSpacing;
    private static final float HeightToFirstLine = Dp.f(30);
    private static final float HorizontalSpacing = Dp.f(16);
    private static final float SeparateButtonExtraY = Dp.f(2);
    private static final float SnackbarVerticalPadding = Dp.f(6);
    private static final float LongButtonVerticalOffset = Dp.f(12);
    private static final float SnackbarMinHeightOneLine = Dp.f(48);
    private static final float SnackbarMinHeightTwoLines = Dp.f(68);

    static {
        float f = 8;
        HorizontalSpacingButtonSide = Dp.f(f);
        TextEndExtraSpacing = Dp.f(f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void a(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-1229075900);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(pVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pVar2) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierN = SizeKt.n(companion, 0.0f, 1, null);
            float f = HorizontalSpacing;
            float f6 = HorizontalSpacingButtonSide;
            Modifier modifierM = PaddingKt.m(modifierN, f, 0.0f, f6, SeparateButtonExtraY, 2, null);
            composerS.G(-483455358);
            Arrangement.Vertical verticalF = Arrangement.INSTANCE.f();
            Alignment.Companion companion2 = Alignment.Companion;
            MeasurePolicy measurePolicyA = ColumnKt.a(verticalF, companion2.k(), composerS, 0);
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierM);
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
            Updater.e(composerA, measurePolicyA, companion3.d());
            Updater.e(composerA, density, companion3.b());
            Updater.e(composerA, layoutDirection, companion3.c());
            Updater.e(composerA, viewConfiguration, companion3.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-1163856341);
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            composerS.G(-1214415430);
            Modifier modifierM2 = PaddingKt.m(AlignmentLineKt.g(companion, HeightToFirstLine, LongButtonVerticalOffset), 0.0f, 0.0f, f6, 0.0f, 11, null);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH = BoxKt.h(companion2.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA2 = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierM2);
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
            Updater.e(composerA2, measurePolicyH, companion3.d());
            Updater.e(composerA2, density2, companion3.b());
            Updater.e(composerA2, layoutDirection2, companion3.c());
            Updater.e(composerA2, viewConfiguration2, companion3.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(1193033152);
            pVar.invoke(composerS, Integer.valueOf(i11 & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            Modifier modifierB = columnScopeInstance.b(companion, companion2.j());
            composerS.G(733328855);
            MeasurePolicy measurePolicyH2 = BoxKt.h(companion2.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA3 = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB);
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
            Updater.e(composerA3, measurePolicyH2, companion3.d());
            Updater.e(composerA3, density3, companion3.b());
            Updater.e(composerA3, layoutDirection3, companion3.c());
            Updater.e(composerA3, viewConfiguration3, companion3.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            composerS.G(-2100387721);
            pVar2.invoke(composerS, Integer.valueOf((i11 >> 3) & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarKt$NewLineButtonSnackbar$2(pVar, pVar2, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void b(p<? super Composer, ? super Integer, l0> pVar, p<? super Composer, ? super Integer, l0> pVar2, Composer composer, int i10) {
        int i11;
        Composer composerS = composer.s(-534813202);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(pVar) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(pVar2) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            Modifier.Companion companion = Modifier.Companion;
            Modifier modifierM = PaddingKt.m(companion, HorizontalSpacing, 0.0f, HorizontalSpacingButtonSide, 0.0f, 10, null);
            final String str = "action";
            final String str2 = "text";
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material.SnackbarKt$OneRowSnackbar$2
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
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    int iMax;
                    int i12;
                    int iB0;
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    String str3 = str;
                    for (Measurable measurable : list) {
                        if (t.e(LayoutIdKt.a(measurable), str3)) {
                            Placeable placeableB0 = measurable.b0(j6);
                            int iE = o.e((Constraints.n(j6) - placeableB0.Q0()) - Layout.j0(SnackbarKt.TextEndExtraSpacing), Constraints.p(j6));
                            String str4 = str2;
                            for (Measurable measurable2 : list) {
                                if (t.e(LayoutIdKt.a(measurable2), str4)) {
                                    Placeable placeableB1 = measurable2.b0(Constraints.e(j6, 0, iE, 0, 0, 9, null));
                                    int iC0 = placeableB1.c0(androidx.compose.ui.layout.AlignmentLineKt.a());
                                    if (iC0 == Integer.MIN_VALUE) {
                                        throw new IllegalArgumentException("No baselines for text".toString());
                                    }
                                    int iC1 = placeableB1.c0(androidx.compose.ui.layout.AlignmentLineKt.b());
                                    if (iC1 == Integer.MIN_VALUE) {
                                        throw new IllegalArgumentException("No baselines for text".toString());
                                    }
                                    boolean z6 = iC0 == iC1;
                                    int iN = Constraints.n(j6) - placeableB0.Q0();
                                    if (z6) {
                                        iMax = Math.max(Layout.j0(SnackbarKt.SnackbarMinHeightOneLine), placeableB0.B0());
                                        int iB1 = (iMax - placeableB1.B0()) / 2;
                                        int iC2 = placeableB0.c0(androidx.compose.ui.layout.AlignmentLineKt.a());
                                        iB0 = iC2 != Integer.MIN_VALUE ? (iC0 + iB1) - iC2 : 0;
                                        i12 = iB1;
                                    } else {
                                        int iJ0 = Layout.j0(SnackbarKt.HeightToFirstLine) - iC0;
                                        int iMax2 = Math.max(Layout.j0(SnackbarKt.SnackbarMinHeightTwoLines), placeableB1.B0() + iJ0);
                                        iMax = iMax2;
                                        i12 = iJ0;
                                        iB0 = (iMax2 - placeableB0.B0()) / 2;
                                    }
                                    return MeasureScope.CC.b(Layout, Constraints.n(j6), iMax, null, new SnackbarKt$OneRowSnackbar$2$measure$4(placeableB1, i12, placeableB0, iN, iB0), 4, null);
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierM);
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
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-643033641);
            Modifier modifierK = PaddingKt.k(LayoutIdKt.b(companion, "text"), 0.0f, SnackbarVerticalPadding, 1, null);
            composerS.G(733328855);
            Alignment.Companion companion3 = Alignment.Companion;
            MeasurePolicy measurePolicyH = BoxKt.h(companion3.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA2 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierK);
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
            Updater.e(composerA2, measurePolicyH, companion2.d());
            Updater.e(composerA2, density2, companion2.b());
            Updater.e(composerA2, layoutDirection2, companion2.c());
            Updater.e(composerA2, viewConfiguration2, companion2.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(1616738193);
            pVar.invoke(composerS, Integer.valueOf(i11 & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            Modifier modifierB = LayoutIdKt.b(companion, "action");
            composerS.G(733328855);
            MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA3 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB);
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
            Updater.e(composerA3, measurePolicyH2, companion2.d());
            Updater.e(composerA3, density3, companion2.b());
            Updater.e(composerA3, layoutDirection3, companion2.c());
            Updater.e(composerA3, viewConfiguration3, companion2.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            composerS.G(-1690150342);
            pVar2.invoke(composerS, Integer.valueOf((i11 >> 3) & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarKt$OneRowSnackbar$3(pVar, pVar2, i10));
    }

    /* JADX WARN: Code duplicated, block: B:107:0x0146 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:108:0x0148  */
    /* JADX WARN: Code duplicated, block: B:109:0x014b  */
    /* JADX WARN: Code duplicated, block: B:111:0x014f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0153  */
    /* JADX WARN: Code duplicated, block: B:116:0x015a  */
    /* JADX WARN: Code duplicated, block: B:119:0x016b  */
    /* JADX WARN: Code duplicated, block: B:122:0x0177  */
    /* JADX WARN: Code duplicated, block: B:123:0x0185  */
    /* JADX WARN: Code duplicated, block: B:125:0x0189  */
    /* JADX WARN: Code duplicated, block: B:127:0x0194  */
    /* JADX WARN: Code duplicated, block: B:132:0x01de  */
    /* JADX WARN: Code duplicated, block: B:134:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0070  */
    /* JADX WARN: Code duplicated, block: B:41:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x007b  */
    /* JADX WARN: Code duplicated, block: B:45:0x0081  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:60:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:88:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0115  */
    /* JADX WARN: Code duplicated, block: B:94:0x0122  */
    @Composable
    @ComposableInferredTarget
    public static final void c(@Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, boolean z6, @Nullable Shape shape, long j6, long j10, float f, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        p<? super Composer, ? super Integer, l0> pVar2;
        int i13;
        boolean z10;
        int i14;
        Shape shapeC;
        long jA;
        int i15;
        int i16;
        p<? super Composer, ? super Integer, l0> pVar3;
        int i17;
        Modifier modifier2;
        long jN;
        float f6;
        int i18;
        long j11;
        long j12;
        float f7;
        Shape shape2;
        p<? super Composer, ? super Integer, l0> pVar4;
        long j13;
        boolean z11;
        long j14;
        ScopeUpdateScope scopeUpdateScopeU;
        int i19;
        int i20;
        t.j(content, "content");
        Composer composerS = composer.s(-558258760);
        int i21 = i11 & 1;
        if (i21 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i22 = i11 & 2;
        if (i22 == 0) {
            if ((i10 & 112) == 0) {
                pVar2 = pVar;
                i12 |= composerS.k(pVar2) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i10 & 7168) == 0) {
                    if ((i11 & 8) == 0) {
                        shapeC = shape;
                        int i23 = composerS.k(shapeC) ? 2048 : 1024;
                        i12 |= i23;
                    } else {
                        shapeC = shape;
                    }
                    i12 |= i23;
                } else {
                    shapeC = shape;
                }
                if ((57344 & i10) == 0) {
                    jA = j6;
                    if ((i11 & 16) == 0 || !composerS.q(jA)) {
                        i20 = 8192;
                    } else {
                        i20 = 16384;
                    }
                    i12 |= i20;
                } else {
                    jA = j6;
                }
                if ((i10 & 458752) != 0) {
                    if ((i11 & 32) == 0 || !composerS.q(j10)) {
                        i19 = 65536;
                    } else {
                        i19 = 131072;
                    }
                    i12 |= i19;
                }
                i15 = i11 & 64;
                if (i15 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.n(f)) {
                        i16 = 1048576;
                    } else {
                        i16 = 524288;
                    }
                    i12 |= i16;
                }
                if ((i11 & 128) != 0) {
                    i12 |= 12582912;
                    pVar3 = content;
                } else {
                    pVar3 = content;
                    if ((29360128 & i10) == 0) {
                        if (composerS.k(pVar3)) {
                            i17 = 8388608;
                        } else {
                            i17 = 4194304;
                        }
                        i12 |= i17;
                    }
                }
                if ((23967451 & i12) == 4793490 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i22 != 0) {
                            pVar2 = null;
                        }
                        if (i13 != 0) {
                            z10 = false;
                        }
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if ((i11 & 16) != 0) {
                            jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -57345;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        } else {
                            jN = j10;
                        }
                        if (i15 != 0) {
                            f6 = Dp.f(6);
                        } else {
                            f6 = f;
                        }
                        i18 = i12;
                        j11 = jA;
                        j12 = jN;
                    } else {
                        composerS.g();
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                        }
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                        }
                        modifier2 = modifier;
                        j12 = j10;
                        f6 = f;
                        i18 = i12;
                        j11 = jA;
                    }
                    composerS.A();
                    int i24 = i18 >> 6;
                    SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i24 & 112) | (i24 & 896) | (i24 & 7168) | ((i18 >> 3) & 458752), 16);
                    f7 = f6;
                    shape2 = shapeC;
                    long j15 = j11;
                    pVar4 = pVar2;
                    j13 = j15;
                    z11 = z10;
                    j14 = j12;
                } else {
                    composerS.g();
                    modifier2 = modifier;
                    f7 = f;
                    pVar4 = pVar2;
                    z11 = z10;
                    shape2 = shapeC;
                    j13 = jA;
                    j14 = j10;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SnackbarKt$Snackbar$2(modifier2, pVar4, z11, shape2, j13, j14, f7, content, i10, i11));
            }
            i12 |= 384;
            z10 = z6;
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shapeC = shape;
                    if (composerS.k(shapeC)) {
                    }
                    i12 |= i23;
                } else {
                    shapeC = shape;
                }
                i12 |= i23;
            } else {
                shapeC = shape;
            }
            if ((57344 & i10) == 0) {
                jA = j6;
                if ((i11 & 16) == 0) {
                    i20 = 8192;
                } else {
                    i20 = 8192;
                }
                i12 |= i20;
            } else {
                jA = j6;
            }
            if ((i10 & 458752) != 0) {
                if ((i11 & 32) == 0) {
                    i19 = 65536;
                } else {
                    i19 = 65536;
                }
                i12 |= i19;
            }
            i15 = i11 & 64;
            if (i15 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i12 |= i16;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
                pVar3 = content;
            } else {
                pVar3 = content;
                if ((29360128 & i10) == 0) {
                    if (composerS.k(pVar3)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                }
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                }
                composerS.A();
                int i25 = i18 >> 6;
                SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i25 & 112) | (i25 & 896) | (i25 & 7168) | ((i18 >> 3) & 458752), 16);
                f7 = f6;
                shape2 = shapeC;
                long j16 = j11;
                pVar4 = pVar2;
                j13 = j16;
                z11 = z10;
                j14 = j12;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                }
                composerS.A();
                int i26 = i18 >> 6;
                SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i26 & 112) | (i26 & 896) | (i26 & 7168) | ((i18 >> 3) & 458752), 16);
                f7 = f6;
                shape2 = shapeC;
                long j17 = j11;
                pVar4 = pVar2;
                j13 = j17;
                z11 = z10;
                j14 = j12;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarKt$Snackbar$2(modifier2, pVar4, z11, shape2, j13, j14, f7, content, i10, i11));
        }
        i12 |= 48;
        pVar2 = pVar;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shapeC = shape;
                    if (composerS.k(shapeC)) {
                    }
                    i12 |= i23;
                } else {
                    shapeC = shape;
                }
                i12 |= i23;
            } else {
                shapeC = shape;
            }
            if ((57344 & i10) == 0) {
                jA = j6;
                if ((i11 & 16) == 0) {
                    i20 = 8192;
                } else {
                    i20 = 8192;
                }
                i12 |= i20;
            } else {
                jA = j6;
            }
            if ((i10 & 458752) != 0) {
                if ((i11 & 32) == 0) {
                    i19 = 65536;
                } else {
                    i19 = 65536;
                }
                i12 |= i19;
            }
            i15 = i11 & 64;
            if (i15 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.n(f)) {
                    i16 = 1048576;
                } else {
                    i16 = 524288;
                }
                i12 |= i16;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
                pVar3 = content;
            } else {
                pVar3 = content;
                if ((29360128 & i10) == 0) {
                    if (composerS.k(pVar3)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                }
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                }
                composerS.A();
                int i27 = i18 >> 6;
                SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i27 & 112) | (i27 & 896) | (i27 & 7168) | ((i18 >> 3) & 458752), 16);
                f7 = f6;
                shape2 = shapeC;
                long j18 = j11;
                pVar4 = pVar2;
                j13 = j18;
                z11 = z10;
                j14 = j12;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i22 != 0) {
                        pVar2 = null;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 8) != 0) {
                        i12 &= -7169;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    } else {
                        jN = j10;
                    }
                    if (i15 != 0) {
                        f6 = Dp.f(6);
                    } else {
                        f6 = f;
                    }
                    i18 = i12;
                    j11 = jA;
                    j12 = jN;
                }
                composerS.A();
                int i28 = i18 >> 6;
                SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i28 & 112) | (i28 & 896) | (i28 & 7168) | ((i18 >> 3) & 458752), 16);
                f7 = f6;
                shape2 = shapeC;
                long j19 = j11;
                pVar4 = pVar2;
                j13 = j19;
                z11 = z10;
                j14 = j12;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarKt$Snackbar$2(modifier2, pVar4, z11, shape2, j13, j14, f7, content, i10, i11));
        }
        i12 |= 384;
        z10 = z6;
        if ((i10 & 7168) == 0) {
            if ((i11 & 8) == 0) {
                shapeC = shape;
                if (composerS.k(shapeC)) {
                }
                i12 |= i23;
            } else {
                shapeC = shape;
            }
            i12 |= i23;
        } else {
            shapeC = shape;
        }
        if ((57344 & i10) == 0) {
            jA = j6;
            if ((i11 & 16) == 0) {
                i20 = 8192;
            } else {
                i20 = 8192;
            }
            i12 |= i20;
        } else {
            jA = j6;
        }
        if ((i10 & 458752) != 0) {
            if ((i11 & 32) == 0) {
                i19 = 65536;
            } else {
                i19 = 65536;
            }
            i12 |= i19;
        }
        i15 = i11 & 64;
        if (i15 != 0) {
            i12 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.n(f)) {
                i16 = 1048576;
            } else {
                i16 = 524288;
            }
            i12 |= i16;
        }
        if ((i11 & 128) != 0) {
            i12 |= 12582912;
            pVar3 = content;
        } else {
            pVar3 = content;
            if ((29360128 & i10) == 0) {
                if (composerS.k(pVar3)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            }
        }
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i22 != 0) {
                    pVar2 = null;
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j10;
                }
                if (i15 != 0) {
                    f6 = Dp.f(6);
                } else {
                    f6 = f;
                }
                i18 = i12;
                j11 = jA;
                j12 = jN;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i22 != 0) {
                    pVar2 = null;
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j10;
                }
                if (i15 != 0) {
                    f6 = Dp.f(6);
                } else {
                    f6 = f;
                }
                i18 = i12;
                j11 = jA;
                j12 = jN;
            }
            composerS.A();
            int i29 = i18 >> 6;
            SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i29 & 112) | (i29 & 896) | (i29 & 7168) | ((i18 >> 3) & 458752), 16);
            f7 = f6;
            shape2 = shapeC;
            long j110 = j11;
            pVar4 = pVar2;
            j13 = j110;
            z11 = z10;
            j14 = j12;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i22 != 0) {
                    pVar2 = null;
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j10;
                }
                if (i15 != 0) {
                    f6 = Dp.f(6);
                } else {
                    f6 = f;
                }
                i18 = i12;
                j11 = jA;
                j12 = jN;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i22 != 0) {
                    pVar2 = null;
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 8) != 0) {
                    i12 &= -7169;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                } else {
                    jN = j10;
                }
                if (i15 != 0) {
                    f6 = Dp.f(6);
                } else {
                    f6 = f;
                }
                i18 = i12;
                j11 = jA;
                j12 = jN;
            }
            composerS.A();
            int i210 = i18 >> 6;
            SurfaceKt.b(modifier2, shapeC, j11, j12, null, f6, ComposableLambdaKt.b(composerS, -2084221700, true, new SnackbarKt$Snackbar$1(pVar2, pVar3, i18, z10)), composerS, (i18 & 14) | 1572864 | (i210 & 112) | (i210 & 896) | (i210 & 7168) | ((i18 >> 3) & 458752), 16);
            f7 = f6;
            shape2 = shapeC;
            long j111 = j11;
            pVar4 = pVar2;
            j13 = j111;
            z11 = z10;
            j14 = j12;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarKt$Snackbar$2(modifier2, pVar4, z11, shape2, j13, j14, f7, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:112:0x0154 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x0156  */
    /* JADX WARN: Code duplicated, block: B:114:0x0159  */
    /* JADX WARN: Code duplicated, block: B:116:0x015d  */
    /* JADX WARN: Code duplicated, block: B:117:0x015f  */
    /* JADX WARN: Code duplicated, block: B:120:0x0166  */
    /* JADX WARN: Code duplicated, block: B:121:0x0173  */
    /* JADX WARN: Code duplicated, block: B:124:0x0178  */
    /* JADX WARN: Code duplicated, block: B:125:0x0181  */
    /* JADX WARN: Code duplicated, block: B:128:0x0187  */
    /* JADX WARN: Code duplicated, block: B:131:0x0197  */
    /* JADX WARN: Code duplicated, block: B:132:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:134:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:136:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:139:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:141:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:146:0x0230  */
    /* JADX WARN: Code duplicated, block: B:148:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004b  */
    /* JADX WARN: Code duplicated, block: B:28:0x0050  */
    /* JADX WARN: Code duplicated, block: B:30:0x0054  */
    /* JADX WARN: Code duplicated, block: B:32:0x005c  */
    /* JADX WARN: Code duplicated, block: B:33:0x005f  */
    /* JADX WARN: Code duplicated, block: B:37:0x0066  */
    /* JADX WARN: Code duplicated, block: B:39:0x006a  */
    /* JADX WARN: Code duplicated, block: B:41:0x0072  */
    /* JADX WARN: Code duplicated, block: B:42:0x0075  */
    /* JADX WARN: Code duplicated, block: B:45:0x007b  */
    /* JADX WARN: Code duplicated, block: B:48:0x0084  */
    /* JADX WARN: Code duplicated, block: B:50:0x0088  */
    /* JADX WARN: Code duplicated, block: B:53:0x0093 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:56:0x0099  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:75:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:80:0x00da  */
    /* JADX WARN: Code duplicated, block: B:81:0x00df  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:94:0x0113  */
    /* JADX WARN: Code duplicated, block: B:96:0x0123  */
    @ComposableTarget
    @Composable
    public static final void d(@NotNull SnackbarData snackbarData, @Nullable Modifier modifier, boolean z6, @Nullable Shape shape, long j6, long j10, long j11, float f, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        Shape shape2;
        long jN;
        long j12;
        int i15;
        float f6;
        int i16;
        Modifier modifier2;
        boolean z10;
        Shape shapeC;
        long jA;
        long jB;
        float f7;
        long j13;
        long j14;
        String strB;
        boolean z11;
        ComposableLambda composableLambdaB;
        Modifier modifier3;
        boolean z12;
        Shape shape3;
        long j15;
        long j16;
        long j17;
        ScopeUpdateScope scopeUpdateScopeU;
        int i17;
        t.j(snackbarData, "snackbarData");
        Composer composerS = composer.s(258660814);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(snackbarData) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i18 = i11 & 2;
        if (i18 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            i13 = i11 & 4;
            if (i13 != 0) {
                if ((i10 & 896) == 0) {
                    if (composerS.m(z6)) {
                        i14 = 256;
                    } else {
                        i14 = 128;
                    }
                    i12 |= i14;
                }
                if ((i10 & 7168) == 0) {
                    if ((i11 & 8) == 0) {
                        shape2 = shape;
                        int i19 = composerS.k(shape2) ? 2048 : 1024;
                        i12 |= i19;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i19;
                } else {
                    shape2 = shape;
                }
                if ((i10 & 57344) != 0) {
                    i12 |= ((i11 & 16) == 0 || !composerS.q(j6)) ? 8192 : 16384;
                }
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        jN = j10;
                        int i20 = composerS.q(jN) ? 131072 : 65536;
                        i12 |= i20;
                    } else {
                        jN = j10;
                    }
                    i12 |= i20;
                } else {
                    jN = j10;
                }
                if ((i10 & 3670016) == 0) {
                    j12 = j11;
                    if ((i11 & 64) == 0 || !composerS.q(j12)) {
                        i17 = 524288;
                    } else {
                        i17 = 1048576;
                    }
                    i12 |= i17;
                } else {
                    j12 = j11;
                }
                i15 = i11 & 128;
                if (i15 != 0) {
                    i12 |= 12582912;
                    f6 = f;
                } else {
                    f6 = f;
                    if ((i10 & 29360128) == 0) {
                        if (composerS.n(f6)) {
                            i16 = 8388608;
                        } else {
                            i16 = 4194304;
                        }
                        i12 |= i16;
                    }
                }
                if ((i12 & 23967451) == 4793490 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i18 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = false;
                        } else {
                            z10 = z6;
                        }
                        if ((i11 & 8) != 0) {
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            i12 &= -7169;
                        } else {
                            shapeC = shape2;
                        }
                        if ((i11 & 16) != 0) {
                            jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -57345;
                        } else {
                            jA = j6;
                        }
                        if ((i11 & 32) != 0) {
                            jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                            i12 &= -458753;
                        }
                        if ((i11 & 64) != 0) {
                            jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            jB = j12;
                        }
                        if (i15 != 0) {
                            j13 = jN;
                            f7 = Dp.f(6);
                        } else {
                            f7 = f6;
                            j13 = jN;
                        }
                        j14 = jA;
                    } else {
                        composerS.g();
                        if ((i11 & 8) != 0) {
                            i12 &= -7169;
                        }
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
                        z10 = z6;
                        shapeC = shape2;
                        j14 = j6;
                        long j18 = jN;
                        i12 = i12;
                        f7 = f6;
                        jB = j12;
                        j13 = j18;
                    }
                    composerS.A();
                    strB = snackbarData.b();
                    if (strB != null) {
                        SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$1 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                        z11 = true;
                        composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$1);
                    } else {
                        z11 = true;
                        composableLambdaB = null;
                    }
                    c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
                    f6 = f7;
                    modifier3 = modifier2;
                    z12 = z10;
                    shape3 = shapeC;
                    j15 = j14;
                    j16 = j13;
                    j17 = jB;
                } else {
                    composerS.g();
                    modifier3 = modifier;
                    z12 = z6;
                    j15 = j6;
                    shape3 = shape2;
                    j17 = j12;
                    j16 = jN;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SnackbarKt$Snackbar$4(snackbarData, modifier3, z12, shape3, j15, j16, j17, f6, i10, i11));
            }
            i12 |= 384;
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i19;
                } else {
                    shape2 = shape;
                }
                i12 |= i19;
            } else {
                shape2 = shape;
            }
            if ((i10 & 57344) != 0) {
                i12 |= ((i11 & 16) == 0 || !composerS.q(j6)) ? 8192 : 16384;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    jN = j10;
                    if (composerS.q(jN)) {
                    }
                    i12 |= i20;
                } else {
                    jN = j10;
                }
                i12 |= i20;
            } else {
                jN = j10;
            }
            if ((i10 & 3670016) == 0) {
                j12 = j11;
                if ((i11 & 64) == 0) {
                    i17 = 524288;
                } else {
                    i17 = 524288;
                }
                i12 |= i17;
            } else {
                j12 = j11;
            }
            i15 = i11 & 128;
            if (i15 != 0) {
                i12 |= 12582912;
                f6 = f;
            } else {
                f6 = f;
                if ((i10 & 29360128) == 0) {
                    if (composerS.n(f6)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i12 |= i16;
                }
            }
            if ((i12 & 23967451) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                }
                composerS.A();
                strB = snackbarData.b();
                if (strB != null) {
                    SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$2 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                    z11 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$2);
                } else {
                    z11 = true;
                    composableLambdaB = null;
                }
                c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
                f6 = f7;
                modifier3 = modifier2;
                z12 = z10;
                shape3 = shapeC;
                j15 = j14;
                j16 = j13;
                j17 = jB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                }
                composerS.A();
                strB = snackbarData.b();
                if (strB != null) {
                    SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$3 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                    z11 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$3);
                } else {
                    z11 = true;
                    composableLambdaB = null;
                }
                c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
                f6 = f7;
                modifier3 = modifier2;
                z12 = z10;
                shape3 = shapeC;
                j15 = j14;
                j16 = j13;
                j17 = jB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarKt$Snackbar$4(snackbarData, modifier3, z12, shape3, j15, j16, j17, f6, i10, i11));
        }
        i12 |= 48;
        i13 = i11 & 4;
        if (i13 != 0) {
            if ((i10 & 896) == 0) {
                if (composerS.m(z6)) {
                    i14 = 256;
                } else {
                    i14 = 128;
                }
                i12 |= i14;
            }
            if ((i10 & 7168) == 0) {
                if ((i11 & 8) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i19;
                } else {
                    shape2 = shape;
                }
                i12 |= i19;
            } else {
                shape2 = shape;
            }
            if ((i10 & 57344) != 0) {
                i12 |= ((i11 & 16) == 0 || !composerS.q(j6)) ? 8192 : 16384;
            }
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    jN = j10;
                    if (composerS.q(jN)) {
                    }
                    i12 |= i20;
                } else {
                    jN = j10;
                }
                i12 |= i20;
            } else {
                jN = j10;
            }
            if ((i10 & 3670016) == 0) {
                j12 = j11;
                if ((i11 & 64) == 0) {
                    i17 = 524288;
                } else {
                    i17 = 524288;
                }
                i12 |= i17;
            } else {
                j12 = j11;
            }
            i15 = i11 & 128;
            if (i15 != 0) {
                i12 |= 12582912;
                f6 = f;
            } else {
                f6 = f;
                if ((i10 & 29360128) == 0) {
                    if (composerS.n(f6)) {
                        i16 = 8388608;
                    } else {
                        i16 = 4194304;
                    }
                    i12 |= i16;
                }
            }
            if ((i12 & 23967451) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                }
                composerS.A();
                strB = snackbarData.b();
                if (strB != null) {
                    SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$4 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                    z11 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$4);
                } else {
                    z11 = true;
                    composableLambdaB = null;
                }
                c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
                f6 = f7;
                modifier3 = modifier2;
                z12 = z10;
                shape3 = shapeC;
                j15 = j14;
                j16 = j13;
                j17 = jB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                } else {
                    if (i18 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = false;
                    } else {
                        z10 = z6;
                    }
                    if ((i11 & 8) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i12 &= -7169;
                    } else {
                        shapeC = shape2;
                    }
                    if ((i11 & 16) != 0) {
                        jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -57345;
                    } else {
                        jA = j6;
                    }
                    if ((i11 & 32) != 0) {
                        jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        jB = j12;
                    }
                    if (i15 != 0) {
                        j13 = jN;
                        f7 = Dp.f(6);
                    } else {
                        f7 = f6;
                        j13 = jN;
                    }
                    j14 = jA;
                }
                composerS.A();
                strB = snackbarData.b();
                if (strB != null) {
                    SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$5 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                    z11 = true;
                    composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$5);
                } else {
                    z11 = true;
                    composableLambdaB = null;
                }
                c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
                f6 = f7;
                modifier3 = modifier2;
                z12 = z10;
                shape3 = shapeC;
                j15 = j14;
                j16 = j13;
                j17 = jB;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SnackbarKt$Snackbar$4(snackbarData, modifier3, z12, shape3, j15, j16, j17, f6, i10, i11));
        }
        i12 |= 384;
        if ((i10 & 7168) == 0) {
            if ((i11 & 8) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i19;
            } else {
                shape2 = shape;
            }
            i12 |= i19;
        } else {
            shape2 = shape;
        }
        if ((i10 & 57344) != 0) {
            i12 |= ((i11 & 16) == 0 || !composerS.q(j6)) ? 8192 : 16384;
        }
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                jN = j10;
                if (composerS.q(jN)) {
                }
                i12 |= i20;
            } else {
                jN = j10;
            }
            i12 |= i20;
        } else {
            jN = j10;
        }
        if ((i10 & 3670016) == 0) {
            j12 = j11;
            if ((i11 & 64) == 0) {
                i17 = 524288;
            } else {
                i17 = 524288;
            }
            i12 |= i17;
        } else {
            j12 = j11;
        }
        i15 = i11 & 128;
        if (i15 != 0) {
            i12 |= 12582912;
            f6 = f;
        } else {
            f6 = f;
            if ((i10 & 29360128) == 0) {
                if (composerS.n(f6)) {
                    i16 = 8388608;
                } else {
                    i16 = 4194304;
                }
                i12 |= i16;
            }
        }
        if ((i12 & 23967451) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = false;
                } else {
                    z10 = z6;
                }
                if ((i11 & 8) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i12 &= -7169;
                } else {
                    shapeC = shape2;
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                } else {
                    jA = j6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                    i12 &= -3670017;
                } else {
                    jB = j12;
                }
                if (i15 != 0) {
                    j13 = jN;
                    f7 = Dp.f(6);
                } else {
                    f7 = f6;
                    j13 = jN;
                }
                j14 = jA;
            } else {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = false;
                } else {
                    z10 = z6;
                }
                if ((i11 & 8) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i12 &= -7169;
                } else {
                    shapeC = shape2;
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                } else {
                    jA = j6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                    i12 &= -3670017;
                } else {
                    jB = j12;
                }
                if (i15 != 0) {
                    j13 = jN;
                    f7 = Dp.f(6);
                } else {
                    f7 = f6;
                    j13 = jN;
                }
                j14 = jA;
            }
            composerS.A();
            strB = snackbarData.b();
            if (strB != null) {
                SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$6 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                z11 = true;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$6);
            } else {
                z11 = true;
                composableLambdaB = null;
            }
            c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
            f6 = f7;
            modifier3 = modifier2;
            z12 = z10;
            shape3 = shapeC;
            j15 = j14;
            j16 = j13;
            j17 = jB;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = false;
                } else {
                    z10 = z6;
                }
                if ((i11 & 8) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i12 &= -7169;
                } else {
                    shapeC = shape2;
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                } else {
                    jA = j6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                    i12 &= -3670017;
                } else {
                    jB = j12;
                }
                if (i15 != 0) {
                    j13 = jN;
                    f7 = Dp.f(6);
                } else {
                    f7 = f6;
                    j13 = jN;
                }
                j14 = jA;
            } else {
                if (i18 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = false;
                } else {
                    z10 = z6;
                }
                if ((i11 & 8) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i12 &= -7169;
                } else {
                    shapeC = shape2;
                }
                if ((i11 & 16) != 0) {
                    jA = SnackbarDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -57345;
                } else {
                    jA = j6;
                }
                if ((i11 & 32) != 0) {
                    jN = MaterialTheme.INSTANCE.a(composerS, 6).n();
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    jB = SnackbarDefaults.INSTANCE.b(composerS, 6);
                    i12 &= -3670017;
                } else {
                    jB = j12;
                }
                if (i15 != 0) {
                    j13 = jN;
                    f7 = Dp.f(6);
                } else {
                    f7 = f6;
                    j13 = jN;
                }
                j14 = jA;
            }
            composerS.A();
            strB = snackbarData.b();
            if (strB != null) {
                SnackbarKt$Snackbar$actionComposable$1 snackbarKt$Snackbar$actionComposable$7 = new SnackbarKt$Snackbar$actionComposable$1(jB, i12, snackbarData, strB);
                z11 = true;
                composableLambdaB = ComposableLambdaKt.b(composerS, 1843479216, true, snackbarKt$Snackbar$actionComposable$7);
            } else {
                z11 = true;
                composableLambdaB = null;
            }
            c(PaddingKt.i(modifier2, Dp.f(12)), composableLambdaB, z10, shapeC, j14, j13, f7, ComposableLambdaKt.b(composerS, -261845785, z11, new SnackbarKt$Snackbar$3(snackbarData)), composerS, (i12 & 896) | 12582912 | (i12 & 7168) | (57344 & i12) | (458752 & i12) | ((i12 >> 3) & 3670016), 0);
            f6 = f7;
            modifier3 = modifier2;
            z12 = z10;
            shape3 = shapeC;
            j15 = j14;
            j16 = j13;
            j17 = jB;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SnackbarKt$Snackbar$4(snackbarData, modifier3, z12, shape3, j15, j16, j17, f6, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ComposableInferredTarget
    public static final void e(p<? super Composer, ? super Integer, l0> pVar, Composer composer, int i10) {
        int i11;
        int i12;
        Composer composerS = composer.s(917397959);
        if ((i10 & 14) == 0) {
            if (composerS.k(pVar)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i11 = i12 | i10;
        } else {
            i11 = i10;
        }
        if ((i11 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            SnackbarKt$TextOnlySnackbar$2 snackbarKt$TextOnlySnackbar$2 = new MeasurePolicy() { // from class: androidx.compose.material.SnackbarKt$TextOnlySnackbar$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i13) {
                    return c.c(this, intrinsicMeasureScope, list, i13);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i13) {
                    return c.d(this, intrinsicMeasureScope, list, i13);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i13) {
                    return c.a(this, intrinsicMeasureScope, list, i13);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i13) {
                    return c.b(this, intrinsicMeasureScope, list, i13);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    if (measurables.size() != 1) {
                        throw new IllegalArgumentException("text for Snackbar expected to have exactly only one child".toString());
                    }
                    Placeable placeableB0 = ((Measurable) d0.j0(measurables)).b0(j6);
                    int iC0 = placeableB0.c0(androidx.compose.ui.layout.AlignmentLineKt.a());
                    int iC1 = placeableB0.c0(androidx.compose.ui.layout.AlignmentLineKt.b());
                    if (iC0 == Integer.MIN_VALUE) {
                        throw new IllegalArgumentException("No baselines for text".toString());
                    }
                    if (iC1 == Integer.MIN_VALUE) {
                        throw new IllegalArgumentException("No baselines for text".toString());
                    }
                    int iMax = Math.max(Layout.j0(iC0 == iC1 ? SnackbarKt.SnackbarMinHeightOneLine : SnackbarKt.SnackbarMinHeightTwoLines), placeableB0.B0());
                    return MeasureScope.CC.b(Layout, Constraints.n(j6), iMax, null, new SnackbarKt$TextOnlySnackbar$2$measure$4(iMax, placeableB0), 4, null);
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
            Updater.e(composerA, snackbarKt$TextOnlySnackbar$2, companion2.d());
            Updater.e(composerA, density, companion2.b());
            Updater.e(composerA, layoutDirection, companion2.c());
            Updater.e(composerA, viewConfiguration, companion2.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-266728784);
            Modifier modifierJ = PaddingKt.j(companion, HorizontalSpacing, SnackbarVerticalPadding);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH = BoxKt.h(Alignment.Companion.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            a<ComposeUiNode> aVarA2 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierJ);
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
            Updater.e(composerA2, measurePolicyH, companion2.d());
            Updater.e(composerA2, density2, companion2.b());
            Updater.e(composerA2, layoutDirection2, companion2.c());
            Updater.e(composerA2, viewConfiguration2, companion2.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            composerS.G(1392363114);
            pVar.invoke(composerS, Integer.valueOf(i11 & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new SnackbarKt$TextOnlySnackbar$3(pVar, i10));
        }
    }
}
