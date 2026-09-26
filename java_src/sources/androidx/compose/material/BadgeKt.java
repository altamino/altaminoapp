package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
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
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.TextUnitKt;
import e8.a;
import e8.q;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.collections.s0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class BadgeKt {
    private static final float BadgeHorizontalOffset;
    private static final float BadgeRadius;
    private static final float BadgeWithContentHorizontalPadding;
    private static final float BadgeWithContentRadius = Dp.f(8);
    private static final long BadgeContentFontSize = TextUnitKt.e(10);
    private static final float BadgeWithContentHorizontalOffset = Dp.f(-Dp.f(6));

    static {
        float f = 4;
        BadgeRadius = Dp.f(f);
        BadgeWithContentHorizontalPadding = Dp.f(f);
        BadgeHorizontalOffset = Dp.f(-Dp.f(f));
    }

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0056  */
    /* JADX WARN: Code duplicated, block: B:31:0x005c  */
    /* JADX WARN: Code duplicated, block: B:32:0x005f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0077 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x0079  */
    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:48:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:52:0x011c  */
    /* JADX WARN: Code duplicated, block: B:56:0x012b  */
    /* JADX WARN: Code duplicated, block: B:58:0x0192  */
    /* JADX WARN: Code duplicated, block: B:61:0x019e  */
    /* JADX WARN: Code duplicated, block: B:62:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:65:0x01f1  */
    /* JADX WARN: Code duplicated, block: B:69:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:72:0x0278  */
    /* JADX WARN: Code duplicated, block: B:75:0x0284  */
    /* JADX WARN: Code duplicated, block: B:76:0x0288  */
    /* JADX WARN: Code duplicated, block: B:79:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x02e1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0314  */
    /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull q<? super BoxScope, ? super Composer, ? super Integer, l0> badge, @Nullable Modifier modifier, @NotNull q<? super BoxScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        Modifier modifier3;
        ComposeUiNode.Companion companion;
        a<ComposeUiNode> aVarA;
        int i14;
        int i15;
        a<ComposeUiNode> aVarA2;
        int i16;
        int i17;
        a<ComposeUiNode> aVarA3;
        int i18;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(badge, "badge");
        t.j(content, "content");
        Composer composerS = composer.s(859805272);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(badge) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i19 = i11 & 2;
        if (i19 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
            }
            if ((i11 & 4) != 0) {
                i12 |= 384;
            } else if ((i10 & 896) == 0) {
                if (composerS.k(content)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i12 |= i13;
            }
            if ((i12 & 731) == 146 || !composerS.b()) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                BadgeKt$BadgedBox$2 badgeKt$BadgedBox$2 = new MeasurePolicy() { // from class: androidx.compose.material.BadgeKt$BadgedBox$2
                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    @NotNull
                    public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                        t.j(Layout, "$this$Layout");
                        t.j(measurables, "measurables");
                        List<? extends Measurable> list = measurables;
                        for (Measurable measurable : list) {
                            if (t.e(LayoutIdKt.a(measurable), "badge")) {
                                Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                                for (Measurable measurable2 : list) {
                                    if (t.e(LayoutIdKt.a(measurable2), "anchor")) {
                                        Placeable placeableB1 = measurable2.b0(j6);
                                        return Layout.G0(placeableB1.Q0(), placeableB1.B0(), s0.l(a0.a(AlignmentLineKt.a(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.a()))), a0.a(AlignmentLineKt.b(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.b())))), new BadgeKt$BadgedBox$2$measure$1(placeableB0, Layout, placeableB1));
                                    }
                                }
                                throw new NoSuchElementException("Collection contains no element matching the predicate.");
                            }
                        }
                        throw new NoSuchElementException("Collection contains no element matching the predicate.");
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i20) {
                        return c.c(this, intrinsicMeasureScope, list, i20);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i20) {
                        return c.d(this, intrinsicMeasureScope, list, i20);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i20) {
                        return c.a(this, intrinsicMeasureScope, list, i20);
                    }

                    @Override // androidx.compose.ui.layout.MeasurePolicy
                    public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i20) {
                        return c.b(this, intrinsicMeasureScope, list, i20);
                    }
                };
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                companion = ComposeUiNode.Companion;
                aVarA = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier3);
                i14 = (((i12 & 112) << 9) & 7168) | 6;
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
                Updater.e(composerA, badgeKt$BadgedBox$2, companion.d());
                Updater.e(composerA, density, companion.b());
                Updater.e(composerA, layoutDirection, companion.c());
                Updater.e(composerA, viewConfiguration, companion.f());
                composerS.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i14 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(1799938959);
                if (((i14 >> 9) & 10) == 2 || !composerS.b()) {
                    Modifier.Companion companion2 = Modifier.Companion;
                    Modifier modifierB = LayoutIdKt.b(companion2, "anchor");
                    Alignment.Companion companion3 = Alignment.Companion;
                    Alignment alignmentE = companion3.e();
                    i15 = ((i12 << 3) & 7168) | 54;
                    composerS.G(733328855);
                    int i20 = i15 >> 3;
                    MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composerS, (i20 & 14) | (i20 & 112));
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA2 = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB);
                    i16 = ((((i15 << 3) & 112) << 9) & 7168) | 6;
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
                    qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i16 >> 3) & 112));
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    if (((i16 >> 9) & 10) == 2 || !composerS.b()) {
                        content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                    } else {
                        composerS.g();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    Modifier modifierB2 = LayoutIdKt.b(companion2, "badge");
                    i17 = ((i12 << 9) & 7168) | 6;
                    composerS.G(733328855);
                    int i21 = i17 >> 3;
                    MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, (i21 & 112) | (i21 & 14));
                    composerS.G(-1323940314);
                    Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA3 = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB2);
                    i18 = ((((i17 << 3) & 112) << 9) & 7168) | 6;
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
                    qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    if (((i18 >> 9) & 10) == 2 || !composerS.b()) {
                        badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                    } else {
                        composerS.g();
                    }
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                } else {
                    composerS.g();
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
            } else {
                composerS.g();
                modifier3 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BadgeKt$BadgedBox$3(badge, modifier3, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            if (composerS.k(content)) {
                i13 = 256;
            } else {
                i13 = 128;
            }
            i12 |= i13;
        }
        if ((i12 & 731) == 146) {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            BadgeKt$BadgedBox$2 badgeKt$BadgedBox$3 = new MeasurePolicy() { // from class: androidx.compose.material.BadgeKt$BadgedBox$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (t.e(LayoutIdKt.a(measurable), "badge")) {
                            Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                            for (Measurable measurable2 : list) {
                                if (t.e(LayoutIdKt.a(measurable2), "anchor")) {
                                    Placeable placeableB1 = measurable2.b0(j6);
                                    return Layout.G0(placeableB1.Q0(), placeableB1.B0(), s0.l(a0.a(AlignmentLineKt.a(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.a()))), a0.a(AlignmentLineKt.b(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.b())))), new BadgeKt$BadgedBox$2$measure$1(placeableB0, Layout, placeableB1));
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i22) {
                    return c.c(this, intrinsicMeasureScope, list, i22);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i22) {
                    return c.d(this, intrinsicMeasureScope, list, i22);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i22) {
                    return c.a(this, intrinsicMeasureScope, list, i22);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i22) {
                    return c.b(this, intrinsicMeasureScope, list, i22);
                }
            };
            composerS.G(-1323940314);
            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion = ComposeUiNode.Companion;
            aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifier3);
            i14 = (((i12 & 112) << 9) & 7168) | 6;
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
            Composer composerA4 = Updater.a(composerS);
            Updater.e(composerA4, badgeKt$BadgedBox$3, companion.d());
            Updater.e(composerA4, density4, companion.b());
            Updater.e(composerA4, layoutDirection4, companion.c());
            Updater.e(composerA4, viewConfiguration4, companion.f());
            composerS.o();
            qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i14 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(1799938959);
            if (((i14 >> 9) & 10) == 2) {
                Modifier.Companion companion4 = Modifier.Companion;
                Modifier modifierB3 = LayoutIdKt.b(companion4, "anchor");
                Alignment.Companion companion5 = Alignment.Companion;
                Alignment alignmentE2 = companion5.e();
                i15 = ((i12 << 3) & 7168) | 54;
                composerS.G(733328855);
                int i22 = i15 >> 3;
                MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentE2, false, composerS, (i22 & 14) | (i22 & 112));
                composerS.G(-1323940314);
                Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierB3);
                i16 = ((((i15 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA5 = Updater.a(composerS);
                Updater.e(composerA5, measurePolicyH3, companion.d());
                Updater.e(composerA5, density5, companion.b());
                Updater.e(composerA5, layoutDirection5, companion.c());
                Updater.e(composerA5, viewConfiguration5, companion.f());
                composerS.o();
                qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i16 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i16 >> 9) & 10) == 2) {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                } else {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                Modifier modifierB4 = LayoutIdKt.b(companion4, "badge");
                i17 = ((i12 << 9) & 7168) | 6;
                composerS.G(733328855);
                int i23 = i17 >> 3;
                MeasurePolicy measurePolicyH4 = BoxKt.h(companion5.o(), false, composerS, (i23 & 112) | (i23 & 14));
                composerS.G(-1323940314);
                Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierB4);
                i18 = ((((i17 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA6 = Updater.a(composerS);
                Updater.e(composerA6, measurePolicyH4, companion.d());
                Updater.e(composerA6, density6, companion.b());
                Updater.e(composerA6, layoutDirection6, companion.c());
                Updater.e(composerA6, viewConfiguration6, companion.f());
                composerS.o();
                qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i18 >> 9) & 10) == 2) {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                } else {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            } else {
                Modifier.Companion companion6 = Modifier.Companion;
                Modifier modifierB5 = LayoutIdKt.b(companion6, "anchor");
                Alignment.Companion companion7 = Alignment.Companion;
                Alignment alignmentE3 = companion7.e();
                i15 = ((i12 << 3) & 7168) | 54;
                composerS.G(733328855);
                int i24 = i15 >> 3;
                MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentE3, false, composerS, (i24 & 14) | (i24 & 112));
                composerS.G(-1323940314);
                Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierB5);
                i16 = ((((i15 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA7 = Updater.a(composerS);
                Updater.e(composerA7, measurePolicyH5, companion.d());
                Updater.e(composerA7, density7, companion.b());
                Updater.e(composerA7, layoutDirection7, companion.c());
                Updater.e(composerA7, viewConfiguration7, companion.f());
                composerS.o();
                qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i16 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i16 >> 9) & 10) == 2) {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                } else {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                Modifier modifierB6 = LayoutIdKt.b(companion6, "badge");
                i17 = ((i12 << 9) & 7168) | 6;
                composerS.G(733328855);
                int i25 = i17 >> 3;
                MeasurePolicy measurePolicyH6 = BoxKt.h(companion7.o(), false, composerS, (i25 & 112) | (i25 & 14));
                composerS.G(-1323940314);
                Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierB6);
                i18 = ((((i17 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA8 = Updater.a(composerS);
                Updater.e(composerA8, measurePolicyH6, companion.d());
                Updater.e(composerA8, density8, companion.b());
                Updater.e(composerA8, layoutDirection8, companion.c());
                Updater.e(composerA8, viewConfiguration8, companion.f());
                composerS.o();
                qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i18 >> 9) & 10) == 2) {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                } else {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        } else {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            BadgeKt$BadgedBox$2 badgeKt$BadgedBox$4 = new MeasurePolicy() { // from class: androidx.compose.material.BadgeKt$BadgedBox$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                @NotNull
                public final MeasureResult a(@NotNull MeasureScope Layout, @NotNull List<? extends Measurable> measurables, long j6) {
                    t.j(Layout, "$this$Layout");
                    t.j(measurables, "measurables");
                    List<? extends Measurable> list = measurables;
                    for (Measurable measurable : list) {
                        if (t.e(LayoutIdKt.a(measurable), "badge")) {
                            Placeable placeableB0 = measurable.b0(Constraints.e(j6, 0, 0, 0, 0, 11, null));
                            for (Measurable measurable2 : list) {
                                if (t.e(LayoutIdKt.a(measurable2), "anchor")) {
                                    Placeable placeableB1 = measurable2.b0(j6);
                                    return Layout.G0(placeableB1.Q0(), placeableB1.B0(), s0.l(a0.a(AlignmentLineKt.a(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.a()))), a0.a(AlignmentLineKt.b(), Integer.valueOf(placeableB1.c0(AlignmentLineKt.b())))), new BadgeKt$BadgedBox$2$measure$1(placeableB0, Layout, placeableB1));
                                }
                            }
                            throw new NoSuchElementException("Collection contains no element matching the predicate.");
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                    return c.c(this, intrinsicMeasureScope, list, i26);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                    return c.d(this, intrinsicMeasureScope, list, i26);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int d(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                    return c.a(this, intrinsicMeasureScope, list, i26);
                }

                @Override // androidx.compose.ui.layout.MeasurePolicy
                public /* synthetic */ int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i26) {
                    return c.b(this, intrinsicMeasureScope, list, i26);
                }
            };
            composerS.G(-1323940314);
            Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion = ComposeUiNode.Companion;
            aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifier3);
            i14 = (((i12 & 112) << 9) & 7168) | 6;
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
            Composer composerA9 = Updater.a(composerS);
            Updater.e(composerA9, badgeKt$BadgedBox$4, companion.d());
            Updater.e(composerA9, density9, companion.b());
            Updater.e(composerA9, layoutDirection9, companion.c());
            Updater.e(composerA9, viewConfiguration9, companion.f());
            composerS.o();
            qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i14 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(1799938959);
            if (((i14 >> 9) & 10) == 2) {
                Modifier.Companion companion8 = Modifier.Companion;
                Modifier modifierB7 = LayoutIdKt.b(companion8, "anchor");
                Alignment.Companion companion9 = Alignment.Companion;
                Alignment alignmentE4 = companion9.e();
                i15 = ((i12 << 3) & 7168) | 54;
                composerS.G(733328855);
                int i26 = i15 >> 3;
                MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentE4, false, composerS, (i26 & 14) | (i26 & 112));
                composerS.G(-1323940314);
                Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierB7);
                i16 = ((((i15 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA10 = Updater.a(composerS);
                Updater.e(composerA10, measurePolicyH7, companion.d());
                Updater.e(composerA10, density10, companion.b());
                Updater.e(composerA10, layoutDirection10, companion.c());
                Updater.e(composerA10, viewConfiguration10, companion.f());
                composerS.o();
                qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i16 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i16 >> 9) & 10) == 2) {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                } else {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                Modifier modifierB8 = LayoutIdKt.b(companion8, "badge");
                i17 = ((i12 << 9) & 7168) | 6;
                composerS.G(733328855);
                int i27 = i17 >> 3;
                MeasurePolicy measurePolicyH8 = BoxKt.h(companion9.o(), false, composerS, (i27 & 112) | (i27 & 14));
                composerS.G(-1323940314);
                Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierB8);
                i18 = ((((i17 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA11 = Updater.a(composerS);
                Updater.e(composerA11, measurePolicyH8, companion.d());
                Updater.e(composerA11, density11, companion.b());
                Updater.e(composerA11, layoutDirection11, companion.c());
                Updater.e(composerA11, viewConfiguration11, companion.f());
                composerS.o();
                qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i18 >> 9) & 10) == 2) {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                } else {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            } else {
                Modifier.Companion companion10 = Modifier.Companion;
                Modifier modifierB9 = LayoutIdKt.b(companion10, "anchor");
                Alignment.Companion companion11 = Alignment.Companion;
                Alignment alignmentE5 = companion11.e();
                i15 = ((i12 << 3) & 7168) | 54;
                composerS.G(733328855);
                int i28 = i15 >> 3;
                MeasurePolicy measurePolicyH9 = BoxKt.h(alignmentE5, false, composerS, (i28 & 14) | (i28 & 112));
                composerS.G(-1323940314);
                Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierB9);
                i16 = ((((i15 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA12 = Updater.a(composerS);
                Updater.e(composerA12, measurePolicyH9, companion.d());
                Updater.e(composerA12, density12, companion.b());
                Updater.e(composerA12, layoutDirection12, companion.c());
                Updater.e(composerA12, viewConfiguration12, companion.f());
                composerS.o();
                qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i16 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i16 >> 9) & 10) == 2) {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                } else {
                    content.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i15 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                Modifier modifierB10 = LayoutIdKt.b(companion10, "badge");
                i17 = ((i12 << 9) & 7168) | 6;
                composerS.G(733328855);
                int i29 = i17 >> 3;
                MeasurePolicy measurePolicyH10 = BoxKt.h(companion11.o(), false, composerS, (i29 & 112) | (i29 & 14));
                composerS.G(-1323940314);
                Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierB10);
                i18 = ((((i17 << 3) & 112) << 9) & 7168) | 6;
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
                Composer composerA13 = Updater.a(composerS);
                Updater.e(composerA13, measurePolicyH10, companion.d());
                Updater.e(composerA13, density13, companion.b());
                Updater.e(composerA13, layoutDirection13, companion.c());
                Updater.e(composerA13, viewConfiguration13, companion.f());
                composerS.o();
                qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i18 >> 3) & 112));
                composerS.G(2058660585);
                composerS.G(-2137368960);
                if (((i18 >> 9) & 10) == 2) {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                } else {
                    badge.invoke(BoxScopeInstance.INSTANCE, composerS, Integer.valueOf(((i17 >> 6) & 112) | 6));
                }
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BadgeKt$BadgedBox$3(badge, modifier3, content, i10, i11));
    }

    public static final float d() {
        return BadgeHorizontalOffset;
    }

    public static final float e() {
        return BadgeRadius;
    }

    public static final float f() {
        return BadgeWithContentHorizontalOffset;
    }

    /* JADX WARN: Code duplicated, block: B:53:0x0091  */
    /* JADX WARN: Code duplicated, block: B:55:0x009a  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:66:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:73:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00df  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:82:0x0155  */
    /* JADX WARN: Code duplicated, block: B:85:0x0161  */
    /* JADX WARN: Code duplicated, block: B:86:0x0165  */
    /* JADX WARN: Code duplicated, block: B:89:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:94:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:96:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(@Nullable Modifier modifier, long j6, long j10, @Nullable q<? super RowScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        long jD;
        long jB;
        q<? super RowScope, ? super Composer, ? super Integer, l0> qVar2;
        Modifier modifier3;
        float f;
        a<ComposeUiNode> aVarA;
        RowScopeInstance rowScopeInstance;
        Modifier modifier4;
        long j11;
        long j12;
        q<? super RowScope, ? super Composer, ? super Integer, l0> qVar3;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(1133484502);
        int i13 = i11 & 1;
        if (i13 != 0) {
            i12 = i10 | 6;
            modifier2 = modifier;
        } else if ((i10 & 14) == 0) {
            modifier2 = modifier;
            i12 = (composerS.k(modifier2) ? 4 : 2) | i10;
        } else {
            modifier2 = modifier;
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            if ((i11 & 2) == 0) {
                jD = j6;
                int i14 = composerS.q(jD) ? 32 : 16;
                i12 |= i14;
            } else {
                jD = j6;
            }
            i12 |= i14;
        } else {
            jD = j6;
        }
        if ((i10 & 896) == 0) {
            if ((i11 & 4) == 0) {
                jB = j10;
                int i15 = composerS.q(jB) ? 256 : 128;
                i12 |= i15;
            } else {
                jB = j10;
            }
            i12 |= i15;
        } else {
            jB = j10;
        }
        int i16 = i11 & 8;
        if (i16 == 0) {
            if ((i10 & 7168) == 0) {
                qVar2 = qVar;
                i12 |= composerS.k(qVar2) ? 2048 : 1024;
            }
            if ((i12 & 5851) == 1170 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if (i13 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if ((i11 & 2) != 0) {
                        jD = MaterialTheme.INSTANCE.a(composerS, 6).d();
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        jB = ColorsKt.b(jD, composerS, (i12 >> 3) & 14);
                        i12 &= -897;
                    }
                    if (i16 != 0) {
                        qVar2 = null;
                    }
                } else {
                    composerS.g();
                    if ((i11 & 2) != 0) {
                        i12 &= -113;
                    }
                    if ((i11 & 4) != 0) {
                        i12 &= -897;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                if (qVar2 != null) {
                    f = BadgeWithContentRadius;
                } else {
                    f = BadgeRadius;
                }
                RoundedCornerShape roundedCornerShapeC = RoundedCornerShapeKt.c(f);
                float f6 = f * 2;
                Modifier modifierK = PaddingKt.k(ClipKt.a(BackgroundKt.a(SizeKt.g(modifier3, Dp.f(f6), Dp.f(f6)), jD, roundedCornerShapeC), roundedCornerShapeC), BadgeWithContentHorizontalPadding, 0.0f, 2, null);
                Alignment.Vertical verticalI = Alignment.Companion.i();
                Arrangement.HorizontalOrVertical horizontalOrVerticalB = Arrangement.INSTANCE.b();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA = RowKt.a(horizontalOrVerticalB, verticalI, composerS, 54);
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                aVarA = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierK);
                Modifier modifier5 = modifier3;
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
                Updater.e(composerA, measurePolicyA, companion.d());
                Updater.e(composerA, density, companion.b());
                Updater.e(composerA, layoutDirection, companion.c());
                Updater.e(composerA, viewConfiguration, companion.f());
                composerS.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                rowScopeInstance = RowScopeInstance.INSTANCE;
                composerS.G(-1024875974);
                if (qVar2 != null) {
                    CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(jB))}, ComposableLambdaKt.b(composerS, 1784526485, true, new BadgeKt$Badge$1$1(qVar2, rowScopeInstance, 6, i12)), composerS, 56);
                }
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier5;
            } else {
                composerS.g();
                modifier4 = modifier2;
            }
            j11 = jD;
            j12 = jB;
            qVar3 = qVar2;
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BadgeKt$Badge$2(modifier4, j11, j12, qVar3, i10, i11));
        }
        i12 |= 3072;
        qVar2 = qVar;
        if ((i12 & 5851) == 1170) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jD = MaterialTheme.INSTANCE.a(composerS, 6).d();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jD, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i16 != 0) {
                    qVar2 = null;
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jD = MaterialTheme.INSTANCE.a(composerS, 6).d();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jD, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i16 != 0) {
                    qVar2 = null;
                }
            }
            composerS.A();
            if (qVar2 != null) {
                f = BadgeWithContentRadius;
            } else {
                f = BadgeRadius;
            }
            RoundedCornerShape roundedCornerShapeC2 = RoundedCornerShapeKt.c(f);
            float f7 = f * 2;
            Modifier modifierK2 = PaddingKt.k(ClipKt.a(BackgroundKt.a(SizeKt.g(modifier3, Dp.f(f7), Dp.f(f7)), jD, roundedCornerShapeC2), roundedCornerShapeC2), BadgeWithContentHorizontalPadding, 0.0f, 2, null);
            Alignment.Vertical verticalI2 = Alignment.Companion.i();
            Arrangement.HorizontalOrVertical horizontalOrVerticalB2 = Arrangement.INSTANCE.b();
            composerS.G(693286680);
            MeasurePolicy measurePolicyA2 = RowKt.a(horizontalOrVerticalB2, verticalI2, composerS, 54);
            composerS.G(-1323940314);
            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierK2);
            Modifier modifier6 = modifier3;
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
            Composer composerA2 = Updater.a(composerS);
            Updater.e(composerA2, measurePolicyA2, companion2.d());
            Updater.e(composerA2, density2, companion2.b());
            Updater.e(composerA2, layoutDirection2, companion2.c());
            Updater.e(composerA2, viewConfiguration2, companion2.f());
            composerS.o();
            qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            rowScopeInstance = RowScopeInstance.INSTANCE;
            composerS.G(-1024875974);
            if (qVar2 != null) {
                CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(jB))}, ComposableLambdaKt.b(composerS, 1784526485, true, new BadgeKt$Badge$1$1(qVar2, rowScopeInstance, 6, i12)), composerS, 56);
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier6;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jD = MaterialTheme.INSTANCE.a(composerS, 6).d();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jD, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i16 != 0) {
                    qVar2 = null;
                }
            } else {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if ((i11 & 2) != 0) {
                    jD = MaterialTheme.INSTANCE.a(composerS, 6).d();
                    i12 &= -113;
                }
                if ((i11 & 4) != 0) {
                    jB = ColorsKt.b(jD, composerS, (i12 >> 3) & 14);
                    i12 &= -897;
                }
                if (i16 != 0) {
                    qVar2 = null;
                }
            }
            composerS.A();
            if (qVar2 != null) {
                f = BadgeWithContentRadius;
            } else {
                f = BadgeRadius;
            }
            RoundedCornerShape roundedCornerShapeC3 = RoundedCornerShapeKt.c(f);
            float f10 = f * 2;
            Modifier modifierK3 = PaddingKt.k(ClipKt.a(BackgroundKt.a(SizeKt.g(modifier3, Dp.f(f10), Dp.f(f10)), jD, roundedCornerShapeC3), roundedCornerShapeC3), BadgeWithContentHorizontalPadding, 0.0f, 2, null);
            Alignment.Vertical verticalI3 = Alignment.Companion.i();
            Arrangement.HorizontalOrVertical horizontalOrVerticalB3 = Arrangement.INSTANCE.b();
            composerS.G(693286680);
            MeasurePolicy measurePolicyA3 = RowKt.a(horizontalOrVerticalB3, verticalI3, composerS, 54);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
            aVarA = companion3.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierK3);
            Modifier modifier7 = modifier3;
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
            Composer composerA3 = Updater.a(composerS);
            Updater.e(composerA3, measurePolicyA3, companion3.d());
            Updater.e(composerA3, density3, companion3.b());
            Updater.e(composerA3, layoutDirection3, companion3.c());
            Updater.e(composerA3, viewConfiguration3, companion3.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            rowScopeInstance = RowScopeInstance.INSTANCE;
            composerS.G(-1024875974);
            if (qVar2 != null) {
                CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a().c(Color.h(jB))}, ComposableLambdaKt.b(composerS, 1784526485, true, new BadgeKt$Badge$1$1(qVar2, rowScopeInstance, 6, i12)), composerS, 56);
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier7;
        }
        j11 = jD;
        j12 = jB;
        qVar3 = qVar2;
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BadgeKt$Badge$2(modifier4, j11, j12, qVar3, i10, i11));
    }
}
