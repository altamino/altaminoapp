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
import androidx.compose.runtime.internal.ComposableLambdaKt;
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
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class TwoLine {
    private static final float ContentLeftPadding;
    private static final float ContentRightPadding;
    private static final float IconLeftPadding;
    private static final float IconVerticalPadding;
    private static final float OverlineToPrimaryBaselineOffset;
    private static final float PrimaryToSecondaryBaselineOffsetNoIcon;
    private static final float PrimaryToSecondaryBaselineOffsetWithIcon;
    private static final float TrailingRightPadding;

    @NotNull
    public static final TwoLine INSTANCE = new TwoLine();
    private static final float MinHeight = Dp.f(64);
    private static final float MinHeightWithIcon = Dp.f(72);
    private static final float IconMinPaddedWidth = Dp.f(40);
    private static final float OverlineBaselineOffset = Dp.f(24);
    private static final float PrimaryBaselineOffsetNoIcon = Dp.f(28);
    private static final float PrimaryBaselineOffsetWithIcon = Dp.f(32);

    static {
        float f = 16;
        IconLeftPadding = Dp.f(f);
        IconVerticalPadding = Dp.f(f);
        ContentLeftPadding = Dp.f(f);
        ContentRightPadding = Dp.f(f);
        float f6 = 20;
        OverlineToPrimaryBaselineOffset = Dp.f(f6);
        PrimaryToSecondaryBaselineOffsetNoIcon = Dp.f(f6);
        PrimaryToSecondaryBaselineOffsetWithIcon = Dp.f(f6);
        TrailingRightPadding = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0247  */
    /* JADX WARN: Code duplicated, block: B:102:0x024b  */
    /* JADX WARN: Code duplicated, block: B:106:0x02bb  */
    /* JADX WARN: Code duplicated, block: B:107:0x02f4  */
    /* JADX WARN: Code duplicated, block: B:109:0x0301  */
    /* JADX WARN: Code duplicated, block: B:110:0x0304  */
    /* JADX WARN: Code duplicated, block: B:113:0x030f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0312  */
    /* JADX WARN: Code duplicated, block: B:117:0x0336 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:118:0x0338  */
    /* JADX WARN: Code duplicated, block: B:120:0x033c  */
    /* JADX WARN: Code duplicated, block: B:126:0x036e  */
    /* JADX WARN: Code duplicated, block: B:128:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:71:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:89:0x0149  */
    /* JADX WARN: Code duplicated, block: B:92:0x0155  */
    /* JADX WARN: Code duplicated, block: B:93:0x0159  */
    /* JADX WARN: Code duplicated, block: B:96:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:98:0x023b  */
    @Composable
    @ComposableInferredTarget
    public final void a(@Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull p<? super Composer, ? super Integer, l0> text, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        int i13;
        int i14;
        int i15;
        Modifier modifier3;
        float f;
        float f6;
        Alignment.Companion companion;
        ComposeUiNode.Companion companion2;
        a<ComposeUiNode> aVarA;
        Modifier.Companion companion3;
        Modifier modifierM;
        int i16;
        float f7;
        float f10;
        Modifier modifier4;
        float f11;
        a<ComposeUiNode> aVarA2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        Composer composerS = composer.s(-1340612993);
        int i17 = i11 & 1;
        if (i17 != 0) {
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
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            i12 |= composerS.k(pVar3) ? 16384 : 8192;
        }
        if ((i11 & 32) == 0) {
            if ((458752 & i10) == 0) {
                i13 = composerS.k(pVar4) ? 131072 : 65536;
            }
            if ((i11 & 64) != 0) {
                i12 |= 1572864;
            } else if ((3670016 & i10) == 0) {
                if (composerS.k(this)) {
                    i14 = 1048576;
                } else {
                    i14 = 524288;
                }
                i12 |= i14;
            }
            i15 = i12;
            if ((2995931 & i15) == 599186 || !composerS.b()) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (pVar == null) {
                    f = MinHeight;
                } else {
                    f = MinHeightWithIcon;
                }
                f6 = f;
                Modifier modifierQ = SizeKt.q(modifier3, f6, 0.0f, 2, null);
                composerS.G(693286680);
                Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyA = RowKt.a(horizontalE, companion.l(), composerS, 0);
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                Modifier modifier5 = modifier3;
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
                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                composerS.G(1912737507);
                companion3 = Modifier.Companion;
                modifierM = PaddingKt.m(d.a(rowScopeInstance, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
                composerS.G(-269995367);
                if (pVar != null) {
                    float f12 = IconLeftPadding;
                    Modifier modifierC = SizeKt.C(companion3, Dp.f(IconMinPaddedWidth + f12), f6, 0.0f, 0.0f, 12, null);
                    float f13 = IconVerticalPadding;
                    Modifier modifierM2 = PaddingKt.m(modifierC, f12, f13, 0.0f, f13, 4, null);
                    Alignment alignmentO = companion.o();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH = BoxKt.h(alignmentO, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA2 = companion2.a();
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
                    Updater.e(composerA2, measurePolicyH, companion2.d());
                    Updater.e(composerA2, density2, companion2.b());
                    Updater.e(composerA2, layoutDirection2, companion2.c());
                    Updater.e(composerA2, viewConfiguration2, companion2.f());
                    composerS.o();
                    qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    composerS.G(1698757508);
                    pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                if (pVar3 != null) {
                    composerS.G(-269994745);
                    i16 = i15;
                    ListItemKt.a(v.p(Dp.c(OverlineBaselineOffset), Dp.c(OverlineToPrimaryBaselineOffset)), modifierM, ComposableLambdaKt.b(composerS, -1675021441, true, new TwoLine$ListItem$1$2(pVar3, i15, text)), composerS, 384, 0);
                    composerS.Q();
                } else {
                    i16 = i15;
                    composerS.G(-269994465);
                    Dp[] dpArr = new Dp[2];
                    if (pVar != null) {
                        f7 = PrimaryBaselineOffsetWithIcon;
                    } else {
                        f7 = PrimaryBaselineOffsetNoIcon;
                    }
                    dpArr[0] = Dp.c(f7);
                    if (pVar != null) {
                        f10 = PrimaryToSecondaryBaselineOffsetWithIcon;
                    } else {
                        f10 = PrimaryToSecondaryBaselineOffsetNoIcon;
                    }
                    dpArr[1] = Dp.c(f10);
                    ListItemKt.a(v.p(dpArr), modifierM, ComposableLambdaKt.b(composerS, 993836488, true, new TwoLine$ListItem$1$3(text, i16, pVar2)), composerS, 384, 0);
                    composerS.Q();
                }
                if (pVar4 != null) {
                    if (pVar != null) {
                        f11 = PrimaryBaselineOffsetWithIcon;
                    } else {
                        f11 = PrimaryBaselineOffsetNoIcon;
                    }
                    ListItemKt.c(f11, null, ComposableLambdaKt.b(composerS, -1696992176, true, new TwoLine$ListItem$1$4(f6, pVar4, i16)), composerS, 384, 2);
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
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TwoLine$ListItem$2(this, modifier4, pVar, text, pVar2, pVar3, pVar4, i10, i11));
        }
        i13 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i13;
        if ((i11 & 64) != 0) {
            i12 |= 1572864;
        } else if ((3670016 & i10) == 0) {
            if (composerS.k(this)) {
                i14 = 1048576;
            } else {
                i14 = 524288;
            }
            i12 |= i14;
        }
        i15 = i12;
        if ((2995931 & i15) == 599186) {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (pVar == null) {
                f = MinHeight;
            } else {
                f = MinHeightWithIcon;
            }
            f6 = f;
            Modifier modifierQ2 = SizeKt.q(modifier3, f6, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE2 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA2 = RowKt.a(horizontalE2, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            Modifier modifier6 = modifier3;
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierQ2);
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
            Updater.e(composerA3, measurePolicyA2, companion2.d());
            Updater.e(composerA3, density3, companion2.b());
            Updater.e(composerA3, layoutDirection3, companion2.c());
            Updater.e(composerA3, viewConfiguration3, companion2.f());
            composerS.o();
            qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
            composerS.G(1912737507);
            companion3 = Modifier.Companion;
            modifierM = PaddingKt.m(d.a(rowScopeInstance2, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
            composerS.G(-269995367);
            if (pVar != null) {
                float f14 = IconLeftPadding;
                Modifier modifierC2 = SizeKt.C(companion3, Dp.f(IconMinPaddedWidth + f14), f6, 0.0f, 0.0f, 12, null);
                float f15 = IconVerticalPadding;
                Modifier modifierM3 = PaddingKt.m(modifierC2, f14, f15, 0.0f, f15, 4, null);
                Alignment alignmentO2 = companion.o();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentO2, false, composerS, 6);
                composerS.G(-1323940314);
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierM3);
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
                Composer composerA4 = Updater.a(composerS);
                Updater.e(composerA4, measurePolicyH2, companion2.d());
                Updater.e(composerA4, density4, companion2.b());
                Updater.e(composerA4, layoutDirection4, companion2.c());
                Updater.e(composerA4, viewConfiguration4, companion2.f());
                composerS.o();
                qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                composerS.G(1698757508);
                pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            if (pVar3 != null) {
                composerS.G(-269994745);
                i16 = i15;
                ListItemKt.a(v.p(Dp.c(OverlineBaselineOffset), Dp.c(OverlineToPrimaryBaselineOffset)), modifierM, ComposableLambdaKt.b(composerS, -1675021441, true, new TwoLine$ListItem$1$2(pVar3, i15, text)), composerS, 384, 0);
                composerS.Q();
            } else {
                i16 = i15;
                composerS.G(-269994465);
                Dp[] dpArr2 = new Dp[2];
                if (pVar != null) {
                    f7 = PrimaryBaselineOffsetWithIcon;
                } else {
                    f7 = PrimaryBaselineOffsetNoIcon;
                }
                dpArr2[0] = Dp.c(f7);
                if (pVar != null) {
                    f10 = PrimaryToSecondaryBaselineOffsetWithIcon;
                } else {
                    f10 = PrimaryToSecondaryBaselineOffsetNoIcon;
                }
                dpArr2[1] = Dp.c(f10);
                ListItemKt.a(v.p(dpArr2), modifierM, ComposableLambdaKt.b(composerS, 993836488, true, new TwoLine$ListItem$1$3(text, i16, pVar2)), composerS, 384, 0);
                composerS.Q();
            }
            if (pVar4 != null) {
                if (pVar != null) {
                    f11 = PrimaryBaselineOffsetWithIcon;
                } else {
                    f11 = PrimaryBaselineOffsetNoIcon;
                }
                ListItemKt.c(f11, null, ComposableLambdaKt.b(composerS, -1696992176, true, new TwoLine$ListItem$1$4(f6, pVar4, i16)), composerS, 384, 2);
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier6;
        } else {
            if (i17 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (pVar == null) {
                f = MinHeight;
            } else {
                f = MinHeightWithIcon;
            }
            f6 = f;
            Modifier modifierQ3 = SizeKt.q(modifier3, f6, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE3 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA3 = RowKt.a(horizontalE3, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            Modifier modifier7 = modifier3;
            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            aVarA = companion2.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierQ3);
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
            Updater.e(composerA5, measurePolicyA3, companion2.d());
            Updater.e(composerA5, density5, companion2.b());
            Updater.e(composerA5, layoutDirection5, companion2.c());
            Updater.e(composerA5, viewConfiguration5, companion2.f());
            composerS.o();
            qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
            composerS.G(1912737507);
            companion3 = Modifier.Companion;
            modifierM = PaddingKt.m(d.a(rowScopeInstance3, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null);
            composerS.G(-269995367);
            if (pVar != null) {
                float f16 = IconLeftPadding;
                Modifier modifierC3 = SizeKt.C(companion3, Dp.f(IconMinPaddedWidth + f16), f6, 0.0f, 0.0f, 12, null);
                float f17 = IconVerticalPadding;
                Modifier modifierM4 = PaddingKt.m(modifierC3, f16, f17, 0.0f, f17, 4, null);
                Alignment alignmentO3 = companion.o();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentO3, false, composerS, 6);
                composerS.G(-1323940314);
                Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierM4);
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
                Composer composerA6 = Updater.a(composerS);
                Updater.e(composerA6, measurePolicyH3, companion2.d());
                Updater.e(composerA6, density6, companion2.b());
                Updater.e(composerA6, layoutDirection6, companion2.c());
                Updater.e(composerA6, viewConfiguration6, companion2.f());
                composerS.o();
                qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                composerS.G(1698757508);
                pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            if (pVar3 != null) {
                composerS.G(-269994745);
                i16 = i15;
                ListItemKt.a(v.p(Dp.c(OverlineBaselineOffset), Dp.c(OverlineToPrimaryBaselineOffset)), modifierM, ComposableLambdaKt.b(composerS, -1675021441, true, new TwoLine$ListItem$1$2(pVar3, i15, text)), composerS, 384, 0);
                composerS.Q();
            } else {
                i16 = i15;
                composerS.G(-269994465);
                Dp[] dpArr3 = new Dp[2];
                if (pVar != null) {
                    f7 = PrimaryBaselineOffsetWithIcon;
                } else {
                    f7 = PrimaryBaselineOffsetNoIcon;
                }
                dpArr3[0] = Dp.c(f7);
                if (pVar != null) {
                    f10 = PrimaryToSecondaryBaselineOffsetWithIcon;
                } else {
                    f10 = PrimaryToSecondaryBaselineOffsetNoIcon;
                }
                dpArr3[1] = Dp.c(f10);
                ListItemKt.a(v.p(dpArr3), modifierM, ComposableLambdaKt.b(composerS, 993836488, true, new TwoLine$ListItem$1$3(text, i16, pVar2)), composerS, 384, 0);
                composerS.Q();
            }
            if (pVar4 != null) {
                if (pVar != null) {
                    f11 = PrimaryBaselineOffsetWithIcon;
                } else {
                    f11 = PrimaryBaselineOffsetNoIcon;
                }
                ListItemKt.c(f11, null, ComposableLambdaKt.b(composerS, -1696992176, true, new TwoLine$ListItem$1$4(f6, pVar4, i16)), composerS, 384, 2);
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier7;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TwoLine$ListItem$2(this, modifier4, pVar, text, pVar2, pVar3, pVar4, i10, i11));
    }

    private TwoLine() {
    }
}
