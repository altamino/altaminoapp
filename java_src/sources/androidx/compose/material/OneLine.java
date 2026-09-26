package androidx.compose.material;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.d;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
final class OneLine {
    private static final float ContentLeftPadding;
    private static final float ContentRightPadding;
    private static final float IconLeftPadding;
    private static final float TrailingRightPadding;

    @NotNull
    public static final OneLine INSTANCE = new OneLine();
    private static final float MinHeight = Dp.f(48);
    private static final float MinHeightWithIcon = Dp.f(56);
    private static final float IconMinPaddedWidth = Dp.f(40);
    private static final float IconVerticalPadding = Dp.f(8);

    static {
        float f = 16;
        IconLeftPadding = Dp.f(f);
        ContentLeftPadding = Dp.f(f);
        ContentRightPadding = Dp.f(f);
        TrailingRightPadding = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:105:0x0438  */
    /* JADX WARN: Code duplicated, block: B:107:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00ac A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:61:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:68:0x010c  */
    /* JADX WARN: Code duplicated, block: B:71:0x0118  */
    /* JADX WARN: Code duplicated, block: B:72:0x011c  */
    /* JADX WARN: Code duplicated, block: B:75:0x0174  */
    /* JADX WARN: Code duplicated, block: B:77:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:81:0x01f0  */
    /* JADX WARN: Code duplicated, block: B:83:0x025b  */
    /* JADX WARN: Code duplicated, block: B:86:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:89:0x02da  */
    /* JADX WARN: Code duplicated, block: B:90:0x02de  */
    /* JADX WARN: Code duplicated, block: B:93:0x034a  */
    /* JADX WARN: Code duplicated, block: B:95:0x03a5  */
    /* JADX WARN: Code duplicated, block: B:98:0x03b1  */
    /* JADX WARN: Code duplicated, block: B:99:0x03b5  */
    @Composable
    @ComposableInferredTarget
    public final void a(@Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull p<? super Composer, ? super Integer, l0> text, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        Modifier modifier3;
        float f;
        Alignment.Companion companion;
        ComposeUiNode.Companion companion2;
        a<ComposeUiNode> aVarA;
        RowScopeInstance rowScopeInstance;
        Modifier.Companion companion3;
        a<ComposeUiNode> aVarA2;
        Modifier modifier4;
        a<ComposeUiNode> aVarA3;
        a<ComposeUiNode> aVarA4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        Composer composerS = composer.s(-1884451315);
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
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(pVar) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(text) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(pVar2) ? 2048 : 1024;
        }
        if ((i11 & 16) == 0) {
            if ((57344 & i10) == 0) {
                i12 |= composerS.k(this) ? 16384 : 8192;
            }
            if ((46811 & i12) == 9362 || !composerS.b()) {
                if (i13 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (pVar == null) {
                    f = MinHeight;
                } else {
                    f = MinHeightWithIcon;
                }
                Modifier modifierQ = SizeKt.q(modifier3, f, 0.0f, 2, null);
                composerS.G(693286680);
                Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyA = RowKt.a(horizontalE, companion.l(), composerS, 0);
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                companion2 = ComposeUiNode.Companion;
                aVarA = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierQ);
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
                Updater.e(composerA, measurePolicyA, companion2.d());
                Updater.e(composerA, density, companion2.b());
                Updater.e(composerA, layoutDirection, companion2.c());
                Updater.e(composerA, viewConfiguration, companion2.f());
                composerS.o();
                qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                rowScopeInstance = RowScopeInstance.INSTANCE;
                composerS.G(-2040473487);
                composerS.G(1825884304);
                if (pVar != null) {
                    Modifier modifierB = rowScopeInstance.b(Modifier.Companion, companion.i());
                    float f6 = IconLeftPadding;
                    Modifier modifierF = SizeKt.F(modifierB, Dp.f(f6 + IconMinPaddedWidth), 0.0f, 2, null);
                    float f7 = IconVerticalPadding;
                    Modifier modifierM = PaddingKt.m(modifierF, f6, f7, 0.0f, f7, 4, null);
                    Alignment alignmentH = companion.h();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH = BoxKt.h(alignmentH, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA4 = companion2.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierM);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA4);
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
                    composerS.G(722575250);
                    pVar.invoke(composerS, Integer.valueOf((i12 >> 3) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                companion3 = Modifier.Companion;
                Modifier modifierM2 = PaddingKt.m(rowScopeInstance.b(d.a(rowScopeInstance, companion3, 1.0f, false, 2, null), companion.i()), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
                Alignment alignmentH2 = companion.h();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentH2, false, composerS, 6);
                composerS.G(-1323940314);
                Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierM2);
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
                Composer composerA3 = Updater.a(composerS);
                Updater.e(composerA3, measurePolicyH2, companion2.d());
                Updater.e(composerA3, density3, companion2.b());
                Updater.e(composerA3, layoutDirection3, companion2.c());
                Updater.e(composerA3, viewConfiguration3, companion2.f());
                composerS.o();
                qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                composerS.G(-869001737);
                text.invoke(composerS, Integer.valueOf((i12 >> 6) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                if (pVar2 != null) {
                    Modifier modifierM3 = PaddingKt.m(rowScopeInstance.b(companion3, companion.i()), 0.0f, 0.0f, TrailingRightPadding, 0.0f, 11, null);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH3 = BoxKt.h(companion.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA3 = companion2.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierM3);
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
                    Composer composerA4 = Updater.a(composerS);
                    Updater.e(composerA4, measurePolicyH3, companion2.d());
                    Updater.e(composerA4, density4, companion2.b());
                    Updater.e(composerA4, layoutDirection4, companion2.c());
                    Updater.e(composerA4, viewConfiguration4, companion2.f());
                    composerS.o();
                    qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    composerS.G(9272137);
                    pVar2.invoke(composerS, Integer.valueOf((i12 >> 9) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier4 = modifier3;
            } else {
                composerS.g();
                modifier4 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new OneLine$ListItem$2(this, modifier4, pVar, text, pVar2, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        if ((46811 & i12) == 9362) {
            if (i13 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (pVar == null) {
                f = MinHeight;
            } else {
                f = MinHeightWithIcon;
            }
            Modifier modifierQ2 = SizeKt.q(modifier3, f, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE2 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA2 = RowKt.a(horizontalE2, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierQ2);
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
            Composer composerA5 = Updater.a(composerS);
            Updater.e(composerA5, measurePolicyA2, companion2.d());
            Updater.e(composerA5, density5, companion2.b());
            Updater.e(composerA5, layoutDirection5, companion2.c());
            Updater.e(composerA5, viewConfiguration5, companion2.f());
            composerS.o();
            qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            rowScopeInstance = RowScopeInstance.INSTANCE;
            composerS.G(-2040473487);
            composerS.G(1825884304);
            if (pVar != null) {
                Modifier modifierB2 = rowScopeInstance.b(Modifier.Companion, companion.i());
                float f10 = IconLeftPadding;
                Modifier modifierF2 = SizeKt.F(modifierB2, Dp.f(f10 + IconMinPaddedWidth), 0.0f, 2, null);
                float f11 = IconVerticalPadding;
                Modifier modifierM4 = PaddingKt.m(modifierF2, f10, f11, 0.0f, f11, 4, null);
                Alignment alignmentH3 = companion.h();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH4 = BoxKt.h(alignmentH3, false, composerS, 6);
                composerS.G(-1323940314);
                Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA4 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierM4);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA4);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA6 = Updater.a(composerS);
                Updater.e(composerA6, measurePolicyH4, companion2.d());
                Updater.e(composerA6, density6, companion2.b());
                Updater.e(composerA6, layoutDirection6, companion2.c());
                Updater.e(composerA6, viewConfiguration6, companion2.f());
                composerS.o();
                qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                composerS.G(722575250);
                pVar.invoke(composerS, Integer.valueOf((i12 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            companion3 = Modifier.Companion;
            Modifier modifierM5 = PaddingKt.m(rowScopeInstance.b(d.a(rowScopeInstance, companion3, 1.0f, false, 2, null), companion.i()), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
            Alignment alignmentH4 = companion.h();
            composerS.G(733328855);
            MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentH4, false, composerS, 6);
            composerS.G(-1323940314);
            Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            aVarA2 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierM5);
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
            Updater.e(composerA7, measurePolicyH5, companion2.d());
            Updater.e(composerA7, density7, companion2.b());
            Updater.e(composerA7, layoutDirection7, companion2.c());
            Updater.e(composerA7, viewConfiguration7, companion2.f());
            composerS.o();
            qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
            composerS.G(-869001737);
            text.invoke(composerS, Integer.valueOf((i12 >> 6) & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierM6 = PaddingKt.m(rowScopeInstance.b(companion3, companion.i()), 0.0f, 0.0f, TrailingRightPadding, 0.0f, 11, null);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH6 = BoxKt.h(companion.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierM6);
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
                Updater.e(composerA8, measurePolicyH6, companion2.d());
                Updater.e(composerA8, density8, companion2.b());
                Updater.e(composerA8, layoutDirection8, companion2.c());
                Updater.e(composerA8, viewConfiguration8, companion2.f());
                composerS.o();
                qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                composerS.G(9272137);
                pVar2.invoke(composerS, Integer.valueOf((i12 >> 9) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier3;
        } else {
            if (i13 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (pVar == null) {
                f = MinHeight;
            } else {
                f = MinHeightWithIcon;
            }
            Modifier modifierQ3 = SizeKt.q(modifier3, f, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE3 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA3 = RowKt.a(horizontalE3, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierQ3);
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
            Updater.e(composerA9, measurePolicyA3, companion2.d());
            Updater.e(composerA9, density9, companion2.b());
            Updater.e(composerA9, layoutDirection9, companion2.c());
            Updater.e(composerA9, viewConfiguration9, companion2.f());
            composerS.o();
            qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            rowScopeInstance = RowScopeInstance.INSTANCE;
            composerS.G(-2040473487);
            composerS.G(1825884304);
            if (pVar != null) {
                Modifier modifierB3 = rowScopeInstance.b(Modifier.Companion, companion.i());
                float f12 = IconLeftPadding;
                Modifier modifierF3 = SizeKt.F(modifierB3, Dp.f(f12 + IconMinPaddedWidth), 0.0f, 2, null);
                float f13 = IconVerticalPadding;
                Modifier modifierM7 = PaddingKt.m(modifierF3, f12, f13, 0.0f, f13, 4, null);
                Alignment alignmentH5 = companion.h();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentH5, false, composerS, 6);
                composerS.G(-1323940314);
                Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA4 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierM7);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA4);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA10 = Updater.a(composerS);
                Updater.e(composerA10, measurePolicyH7, companion2.d());
                Updater.e(composerA10, density10, companion2.b());
                Updater.e(composerA10, layoutDirection10, companion2.c());
                Updater.e(composerA10, viewConfiguration10, companion2.f());
                composerS.o();
                qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                composerS.G(722575250);
                pVar.invoke(composerS, Integer.valueOf((i12 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            companion3 = Modifier.Companion;
            Modifier modifierM8 = PaddingKt.m(rowScopeInstance.b(d.a(rowScopeInstance, companion3, 1.0f, false, 2, null), companion.i()), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
            Alignment alignmentH6 = companion.h();
            composerS.G(733328855);
            MeasurePolicy measurePolicyH8 = BoxKt.h(alignmentH6, false, composerS, 6);
            composerS.G(-1323940314);
            Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            aVarA2 = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierM8);
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
            Composer composerA11 = Updater.a(composerS);
            Updater.e(composerA11, measurePolicyH8, companion2.d());
            Updater.e(composerA11, density11, companion2.b());
            Updater.e(composerA11, layoutDirection11, companion2.c());
            Updater.e(composerA11, viewConfiguration11, companion2.f());
            composerS.o();
            qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
            composerS.G(-869001737);
            text.invoke(composerS, Integer.valueOf((i12 >> 6) & 14));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            if (pVar2 != null) {
                Modifier modifierM9 = PaddingKt.m(rowScopeInstance.b(companion3, companion.i()), 0.0f, 0.0f, TrailingRightPadding, 0.0f, 11, null);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH9 = BoxKt.h(companion.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA3 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierM9);
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
                Composer composerA12 = Updater.a(composerS);
                Updater.e(composerA12, measurePolicyH9, companion2.d());
                Updater.e(composerA12, density12, companion2.b());
                Updater.e(composerA12, layoutDirection12, companion2.c());
                Updater.e(composerA12, viewConfiguration12, companion2.f());
                composerS.o();
                qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                composerS.G(9272137);
                pVar2.invoke(composerS, Integer.valueOf((i12 >> 9) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new OneLine$ListItem$2(this, modifier4, pVar, text, pVar2, i10, i11));
    }

    private OneLine() {
    }
}
