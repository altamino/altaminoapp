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
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class ThreeLine {
    private static final float ContentLeftPadding;
    private static final float ContentRightPadding;
    private static final float IconLeftPadding;
    private static final float IconThreeLineVerticalPadding;
    private static final float ThreeLineBaselineSecondOffset;
    private static final float ThreeLineBaselineThirdOffset;
    private static final float ThreeLineTrailingTopPadding;
    private static final float TrailingRightPadding;

    @NotNull
    public static final ThreeLine INSTANCE = new ThreeLine();
    private static final float MinHeight = Dp.f(88);
    private static final float IconMinPaddedWidth = Dp.f(40);
    private static final float ThreeLineBaselineFirstOffset = Dp.f(28);

    static {
        float f = 16;
        IconLeftPadding = Dp.f(f);
        IconThreeLineVerticalPadding = Dp.f(f);
        ContentLeftPadding = Dp.f(f);
        ContentRightPadding = Dp.f(f);
        float f6 = 20;
        ThreeLineBaselineSecondOffset = Dp.f(f6);
        ThreeLineBaselineThirdOffset = Dp.f(f6);
        ThreeLineTrailingTopPadding = Dp.f(f);
        TrailingRightPadding = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:102:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:107:0x032e  */
    /* JADX WARN: Code duplicated, block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:80:0x00ea A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:85:0x0147  */
    /* JADX WARN: Code duplicated, block: B:88:0x0153  */
    /* JADX WARN: Code duplicated, block: B:89:0x0157  */
    /* JADX WARN: Code duplicated, block: B:92:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:94:0x0218  */
    /* JADX WARN: Code duplicated, block: B:97:0x0224  */
    /* JADX WARN: Code duplicated, block: B:98:0x0228  */
    @Composable
    @ComposableInferredTarget
    public final void a(@Nullable Modifier modifier, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull p<? super Composer, ? super Integer, l0> text, @NotNull p<? super Composer, ? super Integer, l0> secondaryText, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable Composer composer, int i10, int i11) {
        Modifier modifier2;
        int i12;
        int i13;
        int i14;
        int i15;
        Modifier modifier3;
        Alignment.Companion companion;
        ComposeUiNode.Companion companion2;
        a<ComposeUiNode> aVarA;
        float f;
        Modifier.Companion companion3;
        Modifier modifier4;
        a<ComposeUiNode> aVarA2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        t.j(secondaryText, "secondaryText");
        Composer composerS = composer.s(1749738797);
        int i16 = i11 & 1;
        if (i16 != 0) {
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
            i12 |= composerS.k(secondaryText) ? 2048 : 1024;
        }
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            i12 |= composerS.k(pVar2) ? 16384 : 8192;
        }
        if ((i11 & 32) == 0) {
            if ((458752 & i10) == 0) {
                i13 = composerS.k(pVar3) ? 131072 : 65536;
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
                if (i16 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                Modifier modifierQ = SizeKt.q(modifier3, MinHeight, 0.0f, 2, null);
                composerS.G(693286680);
                Arrangement.Horizontal horizontalE = Arrangement.INSTANCE.e();
                companion = Alignment.Companion;
                MeasurePolicy measurePolicyA = RowKt.a(horizontalE, companion.l(), composerS, 0);
                composerS.G(-1323940314);
                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                companion2 = ComposeUiNode.Companion;
                Modifier modifier5 = modifier3;
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
                composerS.G(1483377809);
                composerS.G(-280382992);
                if (pVar != null) {
                    float f6 = IconLeftPadding;
                    float f7 = Dp.f(f6 + IconMinPaddedWidth);
                    Modifier modifierC = SizeKt.C(Modifier.Companion, f7, f7, 0.0f, 0.0f, 12, null);
                    float f10 = IconThreeLineVerticalPadding;
                    Modifier modifierM = PaddingKt.m(modifierC, f6, f10, 0.0f, f10, 4, null);
                    Alignment alignmentH = companion.h();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH = BoxKt.h(alignmentH, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    aVarA2 = companion2.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierM);
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
                    composerS.G(2007028978);
                    pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                f = ThreeLineBaselineFirstOffset;
                List listP = v.p(Dp.c(f), Dp.c(ThreeLineBaselineSecondOffset), Dp.c(ThreeLineBaselineThirdOffset));
                companion3 = Modifier.Companion;
                ListItemKt.a(listP, PaddingKt.m(d.a(rowScopeInstance, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null), ComposableLambdaKt.b(composerS, -318094245, true, new ThreeLine$ListItem$1$2(pVar2, i15, text, secondaryText)), composerS, 384, 0);
                if (pVar3 != null) {
                    float f11 = ThreeLineTrailingTopPadding;
                    ListItemKt.c(Dp.f(f - f11), PaddingKt.m(companion3, 0.0f, f11, TrailingRightPadding, 0.0f, 9, null), pVar3, composerS, ((i15 >> 9) & 896) | 54, 0);
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
            scopeUpdateScopeU.a(new ThreeLine$ListItem$2(this, modifier4, pVar, text, secondaryText, pVar2, pVar3, i10, i11));
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
            if (i16 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            Modifier modifierQ2 = SizeKt.q(modifier3, MinHeight, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE2 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA2 = RowKt.a(horizontalE2, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            Modifier modifier6 = modifier3;
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
            composerS.G(1483377809);
            composerS.G(-280382992);
            if (pVar != null) {
                float f12 = IconLeftPadding;
                float f13 = Dp.f(f12 + IconMinPaddedWidth);
                Modifier modifierC2 = SizeKt.C(Modifier.Companion, f13, f13, 0.0f, 0.0f, 12, null);
                float f14 = IconThreeLineVerticalPadding;
                Modifier modifierM2 = PaddingKt.m(modifierC2, f12, f14, 0.0f, f14, 4, null);
                Alignment alignmentH2 = companion.h();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentH2, false, composerS, 6);
                composerS.G(-1323940314);
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierM2);
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
                composerS.G(2007028978);
                pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            f = ThreeLineBaselineFirstOffset;
            List listP2 = v.p(Dp.c(f), Dp.c(ThreeLineBaselineSecondOffset), Dp.c(ThreeLineBaselineThirdOffset));
            companion3 = Modifier.Companion;
            ListItemKt.a(listP2, PaddingKt.m(d.a(rowScopeInstance2, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null), ComposableLambdaKt.b(composerS, -318094245, true, new ThreeLine$ListItem$1$2(pVar2, i15, text, secondaryText)), composerS, 384, 0);
            if (pVar3 != null) {
                float f15 = ThreeLineTrailingTopPadding;
                ListItemKt.c(Dp.f(f - f15), PaddingKt.m(companion3, 0.0f, f15, TrailingRightPadding, 0.0f, 9, null), pVar3, composerS, ((i15 >> 9) & 896) | 54, 0);
            }
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier4 = modifier6;
        } else {
            if (i16 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            Modifier modifierQ3 = SizeKt.q(modifier3, MinHeight, 0.0f, 2, null);
            composerS.G(693286680);
            Arrangement.Horizontal horizontalE3 = Arrangement.INSTANCE.e();
            companion = Alignment.Companion;
            MeasurePolicy measurePolicyA3 = RowKt.a(horizontalE3, companion.l(), composerS, 0);
            composerS.G(-1323940314);
            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            companion2 = ComposeUiNode.Companion;
            Modifier modifier7 = modifier3;
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
            composerS.G(1483377809);
            composerS.G(-280382992);
            if (pVar != null) {
                float f16 = IconLeftPadding;
                float f17 = Dp.f(f16 + IconMinPaddedWidth);
                Modifier modifierC3 = SizeKt.C(Modifier.Companion, f17, f17, 0.0f, 0.0f, 12, null);
                float f18 = IconThreeLineVerticalPadding;
                Modifier modifierM3 = PaddingKt.m(modifierC3, f16, f18, 0.0f, f18, 4, null);
                Alignment alignmentH3 = companion.h();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentH3, false, composerS, 6);
                composerS.G(-1323940314);
                Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                aVarA2 = companion2.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierM3);
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
                composerS.G(2007028978);
                pVar.invoke(composerS, Integer.valueOf((i15 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
            }
            composerS.Q();
            f = ThreeLineBaselineFirstOffset;
            List listP3 = v.p(Dp.c(f), Dp.c(ThreeLineBaselineSecondOffset), Dp.c(ThreeLineBaselineThirdOffset));
            companion3 = Modifier.Companion;
            ListItemKt.a(listP3, PaddingKt.m(d.a(rowScopeInstance3, companion3, 1.0f, false, 2, null), ContentLeftPadding, 0.0f, ContentRightPadding, 0.0f, 10, null), ComposableLambdaKt.b(composerS, -318094245, true, new ThreeLine$ListItem$1$2(pVar2, i15, text, secondaryText)), composerS, 384, 0);
            if (pVar3 != null) {
                float f19 = ThreeLineTrailingTopPadding;
                ListItemKt.c(Dp.f(f - f19), PaddingKt.m(companion3, 0.0f, f19, TrailingRightPadding, 0.0f, 9, null), pVar3, composerS, ((i15 >> 9) & 896) | 54, 0);
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
        scopeUpdateScopeU.a(new ThreeLine$ListItem$2(this, modifier4, pVar, text, secondaryText, pVar2, pVar3, i10, i11));
    }

    private ThreeLine() {
    }
}
