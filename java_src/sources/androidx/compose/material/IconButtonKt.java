package androidx.compose.material;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.material.ripple.RippleKt;
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
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class IconButtonKt {
    private static final float RippleRadius = Dp.f(24);

    /* JADX WARN: Code duplicated, block: B:26:0x004f  */
    /* JADX WARN: Code duplicated, block: B:28:0x0054  */
    /* JADX WARN: Code duplicated, block: B:30:0x0058  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x0063  */
    /* JADX WARN: Code duplicated, block: B:37:0x006a  */
    /* JADX WARN: Code duplicated, block: B:39:0x006f  */
    /* JADX WARN: Code duplicated, block: B:41:0x0073  */
    /* JADX WARN: Code duplicated, block: B:43:0x007b  */
    /* JADX WARN: Code duplicated, block: B:44:0x007e  */
    /* JADX WARN: Code duplicated, block: B:48:0x0085  */
    /* JADX WARN: Code duplicated, block: B:50:0x0089  */
    /* JADX WARN: Code duplicated, block: B:52:0x008f  */
    /* JADX WARN: Code duplicated, block: B:54:0x0095  */
    /* JADX WARN: Code duplicated, block: B:55:0x0098  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:68:0x00be  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:74:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:77:0x0156  */
    /* JADX WARN: Code duplicated, block: B:80:0x0162  */
    /* JADX WARN: Code duplicated, block: B:81:0x0166  */
    /* JADX WARN: Code duplicated, block: B:84:0x01b4  */
    /* JADX WARN: Code duplicated, block: B:86:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:91:0x0211  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z10;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        int i17;
        int i18;
        Modifier modifier3;
        boolean z11;
        MutableInteractionSource mutableInteractionSource3;
        a<ComposeUiNode> aVarA;
        float fB;
        boolean z12;
        MutableInteractionSource mutableInteractionSource4;
        Object objH;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(-111063634);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onClick) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i19 = i11 & 2;
        if (i19 == 0) {
            if ((i10 & 112) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 32 : 16;
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
                i15 = i11 & 8;
                if (i15 != 0) {
                    if ((i10 & 7168) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    if ((i11 & 16) != 0) {
                        i12 |= CpioConstants.C_ISBLK;
                    } else if ((57344 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 16384;
                        } else {
                            i17 = 8192;
                        }
                        i12 |= i17;
                    }
                    i18 = i12;
                    if ((46811 & i18) == 9362 || !composerS.b()) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        Modifier modifierC = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                        Alignment alignmentE = Alignment.Companion.e();
                        composerS.G(733328855);
                        MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composerS, 6);
                        composerS.G(-1323940314);
                        Density density = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                        aVarA = companion.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierC);
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
                        Updater.e(composerA, measurePolicyH, companion.d());
                        Updater.e(composerA, density, companion.b());
                        Updater.e(composerA, layoutDirection, companion.c());
                        Updater.e(composerA, viewConfiguration, companion.f());
                        composerS.o();
                        qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                        composerS.G(-2146259096);
                        if (z11) {
                            composerS.G(753555775);
                            fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composerS.G(753555801);
                            fB = ContentAlpha.INSTANCE.b(composerS, 6);
                        }
                        composerS.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        composerS.g();
                        z12 = z10;
                        mutableInteractionSource4 = mutableInteractionSource2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= 3072;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                i18 = i12;
                if ((46811 & i18) == 9362) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC2 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE2 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE2, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                    aVarA = companion2.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierC2);
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
                    Updater.e(composerA2, measurePolicyH2, companion2.d());
                    Updater.e(composerA2, density2, companion2.b());
                    Updater.e(composerA2, layoutDirection2, companion2.c());
                    Updater.e(composerA2, viewConfiguration2, companion2.f());
                    composerS.o();
                    qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC3 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE3 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentE3, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                    aVarA = companion3.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierC3);
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
                    Updater.e(composerA3, measurePolicyH3, companion3.d());
                    Updater.e(composerA3, density3, companion3.b());
                    Updater.e(composerA3, layoutDirection3, companion3.c());
                    Updater.e(composerA3, viewConfiguration3, companion3.f());
                    composerS.o();
                    qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 384;
            z10 = z6;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                i18 = i12;
                if ((46811 & i18) == 9362) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC4 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE4 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH4 = BoxKt.h(alignmentE4, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                    aVarA = companion4.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierC4);
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
                    Updater.e(composerA4, measurePolicyH4, companion4.d());
                    Updater.e(composerA4, density4, companion4.b());
                    Updater.e(composerA4, layoutDirection4, companion4.c());
                    Updater.e(composerA4, viewConfiguration4, companion4.f());
                    composerS.o();
                    qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC5 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE5 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentE5, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                    aVarA = companion5.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierC5);
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
                    Updater.e(composerA5, measurePolicyH5, companion5.d());
                    Updater.e(composerA5, density5, companion5.b());
                    Updater.e(composerA5, layoutDirection5, companion5.c());
                    Updater.e(composerA5, viewConfiguration5, companion5.f());
                    composerS.o();
                    qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 3072;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            i18 = i12;
            if ((46811 & i18) == 9362) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC6 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE6 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH6 = BoxKt.h(alignmentE6, false, composerS, 6);
                composerS.G(-1323940314);
                Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                aVarA = companion6.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierC6);
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
                Composer composerA6 = Updater.a(composerS);
                Updater.e(composerA6, measurePolicyH6, companion6.d());
                Updater.e(composerA6, density6, companion6.b());
                Updater.e(composerA6, layoutDirection6, companion6.c());
                Updater.e(composerA6, viewConfiguration6, companion6.f());
                composerS.o();
                qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC7 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE7 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentE7, false, composerS, 6);
                composerS.G(-1323940314);
                Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                aVarA = companion7.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierC7);
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
                Composer composerA7 = Updater.a(composerS);
                Updater.e(composerA7, measurePolicyH7, companion7.d());
                Updater.e(composerA7, density7, companion7.b());
                Updater.e(composerA7, layoutDirection7, companion7.c());
                Updater.e(composerA7, viewConfiguration7, companion7.f());
                composerS.o();
                qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 48;
        modifier2 = modifier;
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
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i12 |= i17;
                }
                i18 = i12;
                if ((46811 & i18) == 9362) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC8 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE8 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH8 = BoxKt.h(alignmentE8, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                    aVarA = companion8.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierC8);
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
                    Composer composerA8 = Updater.a(composerS);
                    Updater.e(composerA8, measurePolicyH8, companion8.d());
                    Updater.e(composerA8, density8, companion8.b());
                    Updater.e(composerA8, layoutDirection8, companion8.c());
                    Updater.e(composerA8, viewConfiguration8, companion8.f());
                    composerS.o();
                    qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    Modifier modifierC9 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                    Alignment alignmentE9 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH9 = BoxKt.h(alignmentE9, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                    aVarA = companion9.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierC9);
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
                    Updater.e(composerA9, measurePolicyH9, companion9.d());
                    Updater.e(composerA9, density9, companion9.b());
                    Updater.e(composerA9, layoutDirection9, companion9.c());
                    Updater.e(composerA9, viewConfiguration9, companion9.f());
                    composerS.o();
                    qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                    composerS.G(-2146259096);
                    if (z11) {
                        composerS.G(753555775);
                        fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composerS.G(753555801);
                        fB = ContentAlpha.INSTANCE.b(composerS, 6);
                    }
                    composerS.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 3072;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            i18 = i12;
            if ((46811 & i18) == 9362) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC10 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE10 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH10 = BoxKt.h(alignmentE10, false, composerS, 6);
                composerS.G(-1323940314);
                Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                aVarA = companion10.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierC10);
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
                Composer composerA10 = Updater.a(composerS);
                Updater.e(composerA10, measurePolicyH10, companion10.d());
                Updater.e(composerA10, density10, companion10.b());
                Updater.e(composerA10, layoutDirection10, companion10.c());
                Updater.e(composerA10, viewConfiguration10, companion10.f());
                composerS.o();
                qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC11 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE11 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH11 = BoxKt.h(alignmentE11, false, composerS, 6);
                composerS.G(-1323940314);
                Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                aVarA = companion11.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierC11);
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
                Composer composerA11 = Updater.a(composerS);
                Updater.e(composerA11, measurePolicyH11, companion11.d());
                Updater.e(composerA11, density11, companion11.b());
                Updater.e(composerA11, layoutDirection11, companion11.c());
                Updater.e(composerA11, viewConfiguration11, companion11.f());
                composerS.o();
                qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 384;
        z10 = z6;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i12 |= i17;
            }
            i18 = i12;
            if ((46811 & i18) == 9362) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC12 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE12 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH12 = BoxKt.h(alignmentE12, false, composerS, 6);
                composerS.G(-1323940314);
                Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                aVarA = companion12.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierC12);
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
                Composer composerA12 = Updater.a(composerS);
                Updater.e(composerA12, measurePolicyH12, companion12.d());
                Updater.e(composerA12, density12, companion12.b());
                Updater.e(composerA12, layoutDirection12, companion12.c());
                Updater.e(composerA12, viewConfiguration12, companion12.f());
                composerS.o();
                qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                Modifier modifierC13 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
                Alignment alignmentE13 = Alignment.Companion.e();
                composerS.G(733328855);
                MeasurePolicy measurePolicyH13 = BoxKt.h(alignmentE13, false, composerS, 6);
                composerS.G(-1323940314);
                Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                aVarA = companion13.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierC13);
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
                Composer composerA13 = Updater.a(composerS);
                Updater.e(composerA13, measurePolicyH13, companion13.d());
                Updater.e(composerA13, density13, companion13.b());
                Updater.e(composerA13, layoutDirection13, companion13.c());
                Updater.e(composerA13, viewConfiguration13, companion13.f());
                composerS.o();
                qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                composerS.G(-2146259096);
                if (z11) {
                    composerS.G(753555775);
                    fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composerS.G(753555801);
                    fB = ContentAlpha.INSTANCE.b(composerS, 6);
                }
                composerS.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 3072;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i11 & 16) != 0) {
            i12 |= CpioConstants.C_ISBLK;
        } else if ((57344 & i10) == 0) {
            if (composerS.k(content)) {
                i17 = 16384;
            } else {
                i17 = 8192;
            }
            i12 |= i17;
        }
        i18 = i12;
        if ((46811 & i18) == 9362) {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i15 != 0) {
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource3 = (MutableInteractionSource) objH;
            } else {
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            Modifier modifierC14 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
            Alignment alignmentE14 = Alignment.Companion.e();
            composerS.G(733328855);
            MeasurePolicy measurePolicyH14 = BoxKt.h(alignmentE14, false, composerS, 6);
            composerS.G(-1323940314);
            Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
            aVarA = companion14.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierC14);
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
            Composer composerA14 = Updater.a(composerS);
            Updater.e(composerA14, measurePolicyH14, companion14.d());
            Updater.e(composerA14, density14, companion14.b());
            Updater.e(composerA14, layoutDirection14, companion14.c());
            Updater.e(composerA14, viewConfiguration14, companion14.f());
            composerS.o();
            qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
            composerS.G(-2146259096);
            if (z11) {
                composerS.G(753555775);
                fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
            } else {
                composerS.G(753555801);
                fB = ContentAlpha.INSTANCE.b(composerS, 6);
            }
            composerS.Q();
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier2 = modifier3;
            z12 = z11;
            mutableInteractionSource4 = mutableInteractionSource3;
        } else {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i15 != 0) {
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource3 = (MutableInteractionSource) objH;
            } else {
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            Modifier modifierC15 = ClickableKt.c(TouchTargetKt.b(modifier3), mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z11, null, Role.g(Role.Companion.a()), onClick, 8, null);
            Alignment alignmentE15 = Alignment.Companion.e();
            composerS.G(733328855);
            MeasurePolicy measurePolicyH15 = BoxKt.h(alignmentE15, false, composerS, 6);
            composerS.G(-1323940314);
            Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
            aVarA = companion15.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierC15);
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
            Composer composerA15 = Updater.a(composerS);
            Updater.e(composerA15, measurePolicyH15, companion15.d());
            Updater.e(composerA15, density15, companion15.b());
            Updater.e(composerA15, layoutDirection15, companion15.c());
            Updater.e(composerA15, viewConfiguration15, companion15.f());
            composerS.o();
            qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
            composerS.G(-2146259096);
            if (z11) {
                composerS.G(753555775);
                fB = ((Number) composerS.x(ContentAlphaKt.a())).floatValue();
            } else {
                composerS.G(753555801);
                fB = ContentAlpha.INSTANCE.b(composerS, 6);
            }
            composerS.Q();
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composerS, ((i18 >> 9) & 112) | 8);
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier2 = modifier3;
            z12 = z11;
            mutableInteractionSource4 = mutableInteractionSource3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new IconButtonKt$IconButton$3(onClick, modifier2, z12, mutableInteractionSource4, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0236  */
    /* JADX WARN: Code duplicated, block: B:104:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006a  */
    /* JADX WARN: Code duplicated, block: B:38:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x007b  */
    /* JADX WARN: Code duplicated, block: B:43:0x007e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0085  */
    /* JADX WARN: Code duplicated, block: B:49:0x008a  */
    /* JADX WARN: Code duplicated, block: B:51:0x0090  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00de  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:85:0x0106  */
    /* JADX WARN: Code duplicated, block: B:88:0x017b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0187  */
    /* JADX WARN: Code duplicated, block: B:92:0x018b  */
    /* JADX WARN: Code duplicated, block: B:95:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:97:0x01f1  */
    @Composable
    @ComposableInferredTarget
    public static final void b(boolean z6, @NotNull l<? super Boolean, l0> onCheckedChange, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z11;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        int i17;
        int i18;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource3;
        Composer composer2;
        a<ComposeUiNode> aVarA;
        float fB;
        Modifier modifier4;
        MutableInteractionSource mutableInteractionSource4;
        Object objH;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onCheckedChange, "onCheckedChange");
        t.j(content, "content");
        Composer composerS = composer.s(-54657793);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(onCheckedChange) ? 32 : 16;
        }
        int i19 = i11 & 4;
        if (i19 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z10;
                    if (composerS.m(z11)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((57344 & i10) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((i11 & 32) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i17 = 131072;
                            } else {
                                i17 = 65536;
                            }
                        }
                        i18 = i12;
                        if ((i18 & 374491) == 74898 || !composerS.b()) {
                            if (i19 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                z12 = true;
                            } else {
                                z12 = z11;
                            }
                            if (i15 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource3 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            composer2 = composerS;
                            Modifier modifierB = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                            Alignment alignmentE = Alignment.Companion.e();
                            composer2.G(733328855);
                            MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composer2, 6);
                            composer2.G(-1323940314);
                            Density density = (Density) composer2.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                            aVarA = companion.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierB);
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
                            Updater.e(composerA, measurePolicyH, companion.d());
                            Updater.e(composerA, density, companion.b());
                            Updater.e(composerA, layoutDirection, companion.c());
                            Updater.e(composerA, viewConfiguration, companion.f());
                            composer2.o();
                            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                            composer2.G(2058660585);
                            composer2.G(-2137368960);
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            composer2.G(-430124743);
                            if (z12) {
                                composer2.G(-1866758102);
                                fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                            } else {
                                composer2.G(-1866758076);
                                fB = ContentAlpha.INSTANCE.b(composer2, 6);
                            }
                            composer2.Q();
                            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                            composer2.Q();
                            composer2.Q();
                            composer2.Q();
                            composer2.d();
                            composer2.Q();
                            composer2.Q();
                            modifier4 = modifier3;
                            z11 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            composerS.g();
                            modifier4 = modifier2;
                            composer2 = composerS;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
                    }
                    i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i17;
                    i18 = i12;
                    if ((i18 & 374491) == 74898) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB2 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE2 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE2, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density2 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection2 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                        aVarA = companion2.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB2);
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
                        Composer composerA2 = Updater.a(composer2);
                        Updater.e(composerA2, measurePolicyH2, companion2.d());
                        Updater.e(composerA2, density2, companion2.b());
                        Updater.e(composerA2, layoutDirection2, companion2.c());
                        Updater.e(composerA2, viewConfiguration2, companion2.f());
                        composer2.o();
                        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB3 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE3 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH3 = BoxKt.h(alignmentE3, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density3 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection3 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration3 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                        aVarA = companion3.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB3);
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
                        Composer composerA3 = Updater.a(composer2);
                        Updater.e(composerA3, measurePolicyH3, companion3.d());
                        Updater.e(composerA3, density3, companion3.b());
                        Updater.e(composerA3, layoutDirection3, companion3.c());
                        Updater.e(composerA3, viewConfiguration3, companion3.f());
                        composer2.o();
                        qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    i18 = i12;
                    if ((i18 & 374491) == 74898) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB4 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE4 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH4 = BoxKt.h(alignmentE4, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density4 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection4 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration4 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        aVarA = companion4.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierB4);
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
                        Composer composerA4 = Updater.a(composer2);
                        Updater.e(composerA4, measurePolicyH4, companion4.d());
                        Updater.e(composerA4, density4, companion4.b());
                        Updater.e(composerA4, layoutDirection4, companion4.c());
                        Updater.e(composerA4, viewConfiguration4, companion4.f());
                        composer2.o();
                        qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB5 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE5 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH5 = BoxKt.h(alignmentE5, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density5 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection5 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration5 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                        aVarA = companion5.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierB5);
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
                        Composer composerA5 = Updater.a(composer2);
                        Updater.e(composerA5, measurePolicyH5, companion5.d());
                        Updater.e(composerA5, density5, companion5.b());
                        Updater.e(composerA5, layoutDirection5, companion5.c());
                        Updater.e(composerA5, viewConfiguration5, companion5.f());
                        composer2.o();
                        qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB6 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE6 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH6 = BoxKt.h(alignmentE6, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density6 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration6 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    aVarA = companion6.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierB6);
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
                    Composer composerA6 = Updater.a(composer2);
                    Updater.e(composerA6, measurePolicyH6, companion6.d());
                    Updater.e(composerA6, density6, companion6.b());
                    Updater.e(composerA6, layoutDirection6, companion6.c());
                    Updater.e(composerA6, viewConfiguration6, companion6.f());
                    composer2.o();
                    qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB7 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE7 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH7 = BoxKt.h(alignmentE7, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density7 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection7 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration7 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                    aVarA = companion7.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierB7);
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
                    Composer composerA7 = Updater.a(composer2);
                    Updater.e(composerA7, measurePolicyH7, companion7.d());
                    Updater.e(composerA7, density7, companion7.b());
                    Updater.e(composerA7, layoutDirection7, companion7.c());
                    Updater.e(composerA7, viewConfiguration7, companion7.f());
                    composer2.o();
                    qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 3072;
            z11 = z10;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    i18 = i12;
                    if ((i18 & 374491) == 74898) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB8 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE8 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH8 = BoxKt.h(alignmentE8, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density8 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection8 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration8 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                        aVarA = companion8.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierB8);
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
                        Composer composerA8 = Updater.a(composer2);
                        Updater.e(composerA8, measurePolicyH8, companion8.d());
                        Updater.e(composerA8, density8, companion8.b());
                        Updater.e(composerA8, layoutDirection8, companion8.c());
                        Updater.e(composerA8, viewConfiguration8, companion8.f());
                        composer2.o();
                        qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB9 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE9 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH9 = BoxKt.h(alignmentE9, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density9 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection9 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration9 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                        aVarA = companion9.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierB9);
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
                        Composer composerA9 = Updater.a(composer2);
                        Updater.e(composerA9, measurePolicyH9, companion9.d());
                        Updater.e(composerA9, density9, companion9.b());
                        Updater.e(composerA9, layoutDirection9, companion9.c());
                        Updater.e(composerA9, viewConfiguration9, companion9.f());
                        composer2.o();
                        qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB10 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE10 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH10 = BoxKt.h(alignmentE10, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density10 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection10 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration10 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    aVarA = companion10.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierB10);
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
                    Composer composerA10 = Updater.a(composer2);
                    Updater.e(composerA10, measurePolicyH10, companion10.d());
                    Updater.e(composerA10, density10, companion10.b());
                    Updater.e(composerA10, layoutDirection10, companion10.c());
                    Updater.e(composerA10, viewConfiguration10, companion10.f());
                    composer2.o();
                    qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB11 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE11 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH11 = BoxKt.h(alignmentE11, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density11 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                    aVarA = companion11.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierB11);
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
                    Composer composerA11 = Updater.a(composer2);
                    Updater.e(composerA11, measurePolicyH11, companion11.d());
                    Updater.e(composerA11, density11, companion11.b());
                    Updater.e(composerA11, layoutDirection11, companion11.c());
                    Updater.e(composerA11, viewConfiguration11, companion11.f());
                    composer2.o();
                    qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB12 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE12 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH12 = BoxKt.h(alignmentE12, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density12 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection12 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration12 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    aVarA = companion12.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierB12);
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
                    Composer composerA12 = Updater.a(composer2);
                    Updater.e(composerA12, measurePolicyH12, companion12.d());
                    Updater.e(composerA12, density12, companion12.b());
                    Updater.e(composerA12, layoutDirection12, companion12.c());
                    Updater.e(composerA12, viewConfiguration12, companion12.f());
                    composer2.o();
                    qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB13 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE13 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH13 = BoxKt.h(alignmentE13, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density13 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection13 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration13 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                    aVarA = companion13.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierB13);
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
                    Composer composerA13 = Updater.a(composer2);
                    Updater.e(composerA13, measurePolicyH13, companion13.d());
                    Updater.e(composerA13, density13, companion13.b());
                    Updater.e(composerA13, layoutDirection13, companion13.c());
                    Updater.e(composerA13, viewConfiguration13, companion13.f());
                    composer2.o();
                    qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            i18 = i12;
            if ((i18 & 374491) == 74898) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB14 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE14 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH14 = BoxKt.h(alignmentE14, false, composer2, 6);
                composer2.G(-1323940314);
                Density density14 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection14 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration14 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                aVarA = companion14.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierB14);
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
                Composer composerA14 = Updater.a(composer2);
                Updater.e(composerA14, measurePolicyH14, companion14.d());
                Updater.e(composerA14, density14, companion14.b());
                Updater.e(composerA14, layoutDirection14, companion14.c());
                Updater.e(composerA14, viewConfiguration14, companion14.f());
                composer2.o();
                qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB15 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE15 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH15 = BoxKt.h(alignmentE15, false, composer2, 6);
                composer2.G(-1323940314);
                Density density15 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection15 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration15 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                aVarA = companion15.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierB15);
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
                Composer composerA15 = Updater.a(composer2);
                Updater.e(composerA15, measurePolicyH15, companion15.d());
                Updater.e(composerA15, density15, companion15.b());
                Updater.e(composerA15, layoutDirection15, companion15.c());
                Updater.e(composerA15, viewConfiguration15, companion15.f());
                composer2.o();
                qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z10;
                if (composerS.m(z11)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i17 = 131072;
                        } else {
                            i17 = 65536;
                        }
                    }
                    i18 = i12;
                    if ((i18 & 374491) == 74898) {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB16 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE16 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH16 = BoxKt.h(alignmentE16, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density16 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection16 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration16 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                        aVarA = companion16.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierB16);
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
                        Composer composerA16 = Updater.a(composer2);
                        Updater.e(composerA16, measurePolicyH16, companion16.d());
                        Updater.e(composerA16, density16, companion16.b());
                        Updater.e(composerA16, layoutDirection16, companion16.c());
                        Updater.e(composerA16, viewConfiguration16, companion16.f());
                        composer2.o();
                        qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i19 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            z12 = true;
                        } else {
                            z12 = z11;
                        }
                        if (i15 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource3 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource3 = mutableInteractionSource2;
                        }
                        composer2 = composerS;
                        Modifier modifierB17 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                        Alignment alignmentE17 = Alignment.Companion.e();
                        composer2.G(733328855);
                        MeasurePolicy measurePolicyH17 = BoxKt.h(alignmentE17, false, composer2, 6);
                        composer2.G(-1323940314);
                        Density density17 = (Density) composer2.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection17 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration17 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                        aVarA = companion17.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierB17);
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
                        Composer composerA17 = Updater.a(composer2);
                        Updater.e(composerA17, measurePolicyH17, companion17.d());
                        Updater.e(composerA17, density17, companion17.b());
                        Updater.e(composerA17, layoutDirection17, companion17.c());
                        Updater.e(composerA17, viewConfiguration17, companion17.f());
                        composer2.o();
                        qVarC17.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                        composer2.G(2058660585);
                        composer2.G(-2137368960);
                        BoxScopeInstance boxScopeInstance17 = BoxScopeInstance.INSTANCE;
                        composer2.G(-430124743);
                        if (z12) {
                            composer2.G(-1866758102);
                            fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                        } else {
                            composer2.G(-1866758076);
                            fB = ContentAlpha.INSTANCE.b(composer2, 6);
                        }
                        composer2.Q();
                        CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                        composer2.Q();
                        composer2.Q();
                        composer2.Q();
                        composer2.d();
                        composer2.Q();
                        composer2.Q();
                        modifier4 = modifier3;
                        z11 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
                }
                i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i17;
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB18 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE18 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH18 = BoxKt.h(alignmentE18, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density18 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection18 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration18 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                    aVarA = companion18.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierB18);
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
                    Composer composerA18 = Updater.a(composer2);
                    Updater.e(composerA18, measurePolicyH18, companion18.d());
                    Updater.e(composerA18, density18, companion18.b());
                    Updater.e(composerA18, layoutDirection18, companion18.c());
                    Updater.e(composerA18, viewConfiguration18, companion18.f());
                    composer2.o();
                    qVarC18.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance18 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB19 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE19 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH19 = BoxKt.h(alignmentE19, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density19 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection19 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration19 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                    aVarA = companion19.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierB19);
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
                    Composer composerA19 = Updater.a(composer2);
                    Updater.e(composerA19, measurePolicyH19, companion19.d());
                    Updater.e(composerA19, density19, companion19.b());
                    Updater.e(composerA19, layoutDirection19, companion19.c());
                    Updater.e(composerA19, viewConfiguration19, companion19.f());
                    composer2.o();
                    qVarC19.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance19 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB110 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE110 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH110 = BoxKt.h(alignmentE110, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density110 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection110 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration110 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    aVarA = companion110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierB110);
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
                    Composer composerA110 = Updater.a(composer2);
                    Updater.e(composerA110, measurePolicyH110, companion110.d());
                    Updater.e(composerA110, density110, companion110.b());
                    Updater.e(composerA110, layoutDirection110, companion110.c());
                    Updater.e(composerA110, viewConfiguration110, companion110.f());
                    composer2.o();
                    qVarC110.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance110 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB111 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE111 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH111 = BoxKt.h(alignmentE111, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density111 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                    aVarA = companion111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierB111);
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
                    Composer composerA111 = Updater.a(composer2);
                    Updater.e(composerA111, measurePolicyH111, companion111.d());
                    Updater.e(composerA111, density111, companion111.b());
                    Updater.e(composerA111, layoutDirection111, companion111.c());
                    Updater.e(composerA111, viewConfiguration111, companion111.f());
                    composer2.o();
                    qVarC111.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance111 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            i18 = i12;
            if ((i18 & 374491) == 74898) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB112 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE112 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH112 = BoxKt.h(alignmentE112, false, composer2, 6);
                composer2.G(-1323940314);
                Density density112 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection112 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration112 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                aVarA = companion112.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierB112);
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
                Composer composerA112 = Updater.a(composer2);
                Updater.e(composerA112, measurePolicyH112, companion112.d());
                Updater.e(composerA112, density112, companion112.b());
                Updater.e(composerA112, layoutDirection112, companion112.c());
                Updater.e(composerA112, viewConfiguration112, companion112.f());
                composer2.o();
                qVarC112.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance112 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB113 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE113 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH113 = BoxKt.h(alignmentE113, false, composer2, 6);
                composer2.G(-1323940314);
                Density density113 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection113 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration113 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                aVarA = companion113.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierB113);
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
                Composer composerA113 = Updater.a(composer2);
                Updater.e(composerA113, measurePolicyH113, companion113.d());
                Updater.e(composerA113, density113, companion113.b());
                Updater.e(composerA113, layoutDirection113, companion113.c());
                Updater.e(composerA113, viewConfiguration113, companion113.f());
                composer2.o();
                qVarC113.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance113 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 3072;
        z11 = z10;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((57344 & i10) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 131072;
                    } else {
                        i17 = 65536;
                    }
                }
                i18 = i12;
                if ((i18 & 374491) == 74898) {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB114 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE114 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH114 = BoxKt.h(alignmentE114, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density114 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection114 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration114 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                    aVarA = companion114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierB114);
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
                    Composer composerA114 = Updater.a(composer2);
                    Updater.e(composerA114, measurePolicyH114, companion114.d());
                    Updater.e(composerA114, density114, companion114.b());
                    Updater.e(composerA114, layoutDirection114, companion114.c());
                    Updater.e(composerA114, viewConfiguration114, companion114.f());
                    composer2.o();
                    qVarC114.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance114 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i19 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        z12 = true;
                    } else {
                        z12 = z11;
                    }
                    if (i15 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource3 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource3 = mutableInteractionSource2;
                    }
                    composer2 = composerS;
                    Modifier modifierB115 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                    Alignment alignmentE115 = Alignment.Companion.e();
                    composer2.G(733328855);
                    MeasurePolicy measurePolicyH115 = BoxKt.h(alignmentE115, false, composer2, 6);
                    composer2.G(-1323940314);
                    Density density115 = (Density) composer2.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection115 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration115 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                    aVarA = companion115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierB115);
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
                    Composer composerA115 = Updater.a(composer2);
                    Updater.e(composerA115, measurePolicyH115, companion115.d());
                    Updater.e(composerA115, density115, companion115.b());
                    Updater.e(composerA115, layoutDirection115, companion115.c());
                    Updater.e(composerA115, viewConfiguration115, companion115.f());
                    composer2.o();
                    qVarC115.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                    composer2.G(2058660585);
                    composer2.G(-2137368960);
                    BoxScopeInstance boxScopeInstance115 = BoxScopeInstance.INSTANCE;
                    composer2.G(-430124743);
                    if (z12) {
                        composer2.G(-1866758102);
                        fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                    } else {
                        composer2.G(-1866758076);
                        fB = ContentAlpha.INSTANCE.b(composer2, 6);
                    }
                    composer2.Q();
                    CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                    composer2.Q();
                    composer2.Q();
                    composer2.Q();
                    composer2.d();
                    composer2.Q();
                    composer2.Q();
                    modifier4 = modifier3;
                    z11 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
            }
            i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i17;
            i18 = i12;
            if ((i18 & 374491) == 74898) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB116 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE116 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH116 = BoxKt.h(alignmentE116, false, composer2, 6);
                composer2.G(-1323940314);
                Density density116 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection116 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration116 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                aVarA = companion116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierB116);
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
                Composer composerA116 = Updater.a(composer2);
                Updater.e(composerA116, measurePolicyH116, companion116.d());
                Updater.e(composerA116, density116, companion116.b());
                Updater.e(composerA116, layoutDirection116, companion116.c());
                Updater.e(composerA116, viewConfiguration116, companion116.f());
                composer2.o();
                qVarC116.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance116 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB117 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE117 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH117 = BoxKt.h(alignmentE117, false, composer2, 6);
                composer2.G(-1323940314);
                Density density117 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection117 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration117 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                aVarA = companion117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierB117);
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
                Composer composerA117 = Updater.a(composer2);
                Updater.e(composerA117, measurePolicyH117, companion117.d());
                Updater.e(composerA117, density117, companion117.b());
                Updater.e(composerA117, layoutDirection117, companion117.c());
                Updater.e(composerA117, viewConfiguration117, companion117.f());
                composer2.o();
                qVarC117.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance117 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i11 & 32) != 0) {
            if ((458752 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 131072;
                } else {
                    i17 = 65536;
                }
            }
            i18 = i12;
            if ((i18 & 374491) == 74898) {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB118 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE118 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH118 = BoxKt.h(alignmentE118, false, composer2, 6);
                composer2.G(-1323940314);
                Density density118 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection118 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration118 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                aVarA = companion118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierB118);
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
                Composer composerA118 = Updater.a(composer2);
                Updater.e(composerA118, measurePolicyH118, companion118.d());
                Updater.e(composerA118, density118, companion118.b());
                Updater.e(composerA118, layoutDirection118, companion118.c());
                Updater.e(composerA118, viewConfiguration118, companion118.f());
                composer2.o();
                qVarC118.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance118 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i19 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    z12 = true;
                } else {
                    z12 = z11;
                }
                if (i15 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource3 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource3 = mutableInteractionSource2;
                }
                composer2 = composerS;
                Modifier modifierB119 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
                Alignment alignmentE119 = Alignment.Companion.e();
                composer2.G(733328855);
                MeasurePolicy measurePolicyH119 = BoxKt.h(alignmentE119, false, composer2, 6);
                composer2.G(-1323940314);
                Density density119 = (Density) composer2.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection119 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration119 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                aVarA = companion119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierB119);
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
                Composer composerA119 = Updater.a(composer2);
                Updater.e(composerA119, measurePolicyH119, companion119.d());
                Updater.e(composerA119, density119, companion119.b());
                Updater.e(composerA119, layoutDirection119, companion119.c());
                Updater.e(composerA119, viewConfiguration119, companion119.f());
                composer2.o();
                qVarC119.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
                composer2.G(2058660585);
                composer2.G(-2137368960);
                BoxScopeInstance boxScopeInstance119 = BoxScopeInstance.INSTANCE;
                composer2.G(-430124743);
                if (z12) {
                    composer2.G(-1866758102);
                    fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
                } else {
                    composer2.G(-1866758076);
                    fB = ContentAlpha.INSTANCE.b(composer2, 6);
                }
                composer2.Q();
                CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
                composer2.Q();
                composer2.Q();
                composer2.Q();
                composer2.d();
                composer2.Q();
                composer2.Q();
                modifier4 = modifier3;
                z11 = z12;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
        }
        i17 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i17;
        i18 = i12;
        if ((i18 & 374491) == 74898) {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                z12 = true;
            } else {
                z12 = z11;
            }
            if (i15 != 0) {
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource3 = (MutableInteractionSource) objH;
            } else {
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            composer2 = composerS;
            Modifier modifierB1110 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
            Alignment alignmentE1110 = Alignment.Companion.e();
            composer2.G(733328855);
            MeasurePolicy measurePolicyH1110 = BoxKt.h(alignmentE1110, false, composer2, 6);
            composer2.G(-1323940314);
            Density density1110 = (Density) composer2.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1110 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
            aVarA = companion1110.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierB1110);
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
            Composer composerA1110 = Updater.a(composer2);
            Updater.e(composerA1110, measurePolicyH1110, companion1110.d());
            Updater.e(composerA1110, density1110, companion1110.b());
            Updater.e(composerA1110, layoutDirection1110, companion1110.c());
            Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
            composer2.o();
            qVarC1110.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
            composer2.G(2058660585);
            composer2.G(-2137368960);
            BoxScopeInstance boxScopeInstance1110 = BoxScopeInstance.INSTANCE;
            composer2.G(-430124743);
            if (z12) {
                composer2.G(-1866758102);
                fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
            } else {
                composer2.G(-1866758076);
                fB = ContentAlpha.INSTANCE.b(composer2, 6);
            }
            composer2.Q();
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
            composer2.Q();
            composer2.Q();
            composer2.Q();
            composer2.d();
            composer2.Q();
            composer2.Q();
            modifier4 = modifier3;
            z11 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
        } else {
            if (i19 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            if (i13 != 0) {
                z12 = true;
            } else {
                z12 = z11;
            }
            if (i15 != 0) {
                composerS.G(-492369756);
                objH = composerS.H();
                if (objH == Composer.Companion.a()) {
                    objH = InteractionSourceKt.a();
                    composerS.z(objH);
                }
                composerS.Q();
                mutableInteractionSource3 = (MutableInteractionSource) objH;
            } else {
                mutableInteractionSource3 = mutableInteractionSource2;
            }
            composer2 = composerS;
            Modifier modifierB1111 = ToggleableKt.b(TouchTargetKt.b(modifier3), z6, mutableInteractionSource3, RippleKt.e(false, RippleRadius, 0L, composerS, 54, 4), z12, Role.g(Role.Companion.b()), onCheckedChange);
            Alignment alignmentE1111 = Alignment.Companion.e();
            composer2.G(733328855);
            MeasurePolicy measurePolicyH1111 = BoxKt.h(alignmentE1111, false, composer2, 6);
            composer2.G(-1323940314);
            Density density1111 = (Density) composer2.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111 = (LayoutDirection) composer2.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composer2.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
            aVarA = companion1111.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierB1111);
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
            Composer composerA1111 = Updater.a(composer2);
            Updater.e(composerA1111, measurePolicyH1111, companion1111.d());
            Updater.e(composerA1111, density1111, companion1111.b());
            Updater.e(composerA1111, layoutDirection1111, companion1111.c());
            Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
            composer2.o();
            qVarC1111.invoke(SkippableUpdater.a(SkippableUpdater.b(composer2)), composer2, 0);
            composer2.G(2058660585);
            composer2.G(-2137368960);
            BoxScopeInstance boxScopeInstance1111 = BoxScopeInstance.INSTANCE;
            composer2.G(-430124743);
            if (z12) {
                composer2.G(-1866758102);
                fB = ((Number) composer2.x(ContentAlphaKt.a())).floatValue();
            } else {
                composer2.G(-1866758076);
                fB = ContentAlpha.INSTANCE.b(composer2, 6);
            }
            composer2.Q();
            CompositionLocalKt.b(new ProvidedValue[]{ContentAlphaKt.a().c(Float.valueOf(fB))}, content, composer2, ((i18 >> 12) & 112) | 8);
            composer2.Q();
            composer2.Q();
            composer2.Q();
            composer2.d();
            composer2.Q();
            composer2.Q();
            modifier4 = modifier3;
            z11 = z12;
            mutableInteractionSource4 = mutableInteractionSource3;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new IconButtonKt$IconToggleButton$3(z6, onCheckedChange, modifier4, z11, mutableInteractionSource4, content, i10, i11));
    }
}
