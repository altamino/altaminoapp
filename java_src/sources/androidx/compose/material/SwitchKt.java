package androidx.compose.material;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.a;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import e8.l;
import e8.p;
import e8.q;
import java.util.Map;
import kotlin.collections.s0;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class SwitchKt {

    @NotNull
    private static final TweenSpec<Float> AnimationSpec;
    private static final float DefaultSwitchPadding;
    private static final float SwitchHeight;
    private static final float SwitchWidth;
    private static final float ThumbDefaultElevation;
    private static final float ThumbDiameter;
    private static final float ThumbPathLength;
    private static final float ThumbPressedElevation;
    private static final float ThumbRippleRadius;
    private static final float TrackStrokeWidth;
    private static final float TrackWidth;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(DrawScope drawScope, long j6, float f, float f6) {
        float f7 = f6 / 2;
        a.i(drawScope, j6, OffsetKt.a(f7, Offset.n(drawScope.W())), OffsetKt.a(f - f7, Offset.n(drawScope.W())), f6, StrokeCap.Companion.b(), null, 0.0f, null, 0, 480, null);
    }

    public static final float i() {
        return TrackStrokeWidth;
    }

    public static final float j() {
        return TrackWidth;
    }

    static {
        float f = Dp.f(34);
        TrackWidth = f;
        TrackStrokeWidth = Dp.f(14);
        float f6 = Dp.f(20);
        ThumbDiameter = f6;
        ThumbRippleRadius = Dp.f(24);
        DefaultSwitchPadding = Dp.f(2);
        SwitchWidth = f;
        SwitchHeight = f6;
        ThumbPathLength = Dp.f(f - f6);
        AnimationSpec = new TweenSpec<>(100, 0, null, 6, null);
        ThumbDefaultElevation = Dp.f(1);
        ThumbPressedElevation = Dp.f(6);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x016c  */
    /* JADX WARN: Code duplicated, block: B:102:0x016f  */
    /* JADX WARN: Code duplicated, block: B:105:0x018c  */
    /* JADX WARN: Code duplicated, block: B:106:0x018f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0193  */
    /* JADX WARN: Code duplicated, block: B:109:0x01af  */
    /* JADX WARN: Code duplicated, block: B:112:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:115:0x01e5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:117:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:120:0x025b  */
    /* JADX WARN: Code duplicated, block: B:123:0x0267  */
    /* JADX WARN: Code duplicated, block: B:124:0x026b  */
    /* JADX WARN: Code duplicated, block: B:129:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:131:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0064  */
    /* JADX WARN: Code duplicated, block: B:40:0x0068  */
    /* JADX WARN: Code duplicated, block: B:42:0x0070  */
    /* JADX WARN: Code duplicated, block: B:43:0x0073  */
    /* JADX WARN: Code duplicated, block: B:47:0x007a  */
    /* JADX WARN: Code duplicated, block: B:49:0x007f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0085  */
    /* JADX WARN: Code duplicated, block: B:53:0x008d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0090  */
    /* JADX WARN: Code duplicated, block: B:58:0x0099  */
    /* JADX WARN: Code duplicated, block: B:60:0x009d  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ee A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:84:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:88:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:92:0x010e  */
    /* JADX WARN: Code duplicated, block: B:94:0x011b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0120  */
    /* JADX WARN: Code duplicated, block: B:98:0x014b  */
    @ComposableTarget
    @Composable
    public static final void a(boolean z6, @Nullable l<? super Boolean, l0> lVar, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable SwitchColors switchColors, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z11;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        SwitchColors switchColors2;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource3;
        int i17;
        Modifier modifier4;
        boolean z13;
        MutableInteractionSource mutableInteractionSource4;
        SwitchColors switchColorsA;
        Object objH;
        l<? super Boolean, l0> lVar2;
        boolean z14;
        Modifier modifierB;
        Modifier modifierB2;
        boolean z15;
        e8.a<ComposeUiNode> aVarA;
        boolean z16;
        MutableInteractionSource mutableInteractionSource5;
        SwitchColors switchColors3;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(25866825);
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
            i12 |= composerS.k(lVar) ? 32 : 16;
        }
        int i18 = i11 & 4;
        if (i18 == 0) {
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
                    if ((i10 & 458752) == 0) {
                        if ((i11 & 32) == 0) {
                            switchColors2 = switchColors;
                            int i19 = composerS.k(switchColors2) ? 131072 : 65536;
                            i12 |= i19;
                        } else {
                            switchColors2 = switchColors;
                        }
                        i12 |= i19;
                    } else {
                        switchColors2 = switchColors;
                    }
                    if ((374491 & i12) == 74898 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i18 != 0) {
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
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                modifier4 = modifier3;
                                z13 = z12;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            } else {
                                i17 = i12;
                                modifier4 = modifier3;
                                z13 = z12;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                switchColorsA = switchColors2;
                            }
                            composerS.A();
                            float fH0 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                            Boolean boolValueOf = Boolean.valueOf(z6);
                            if (lVar == null) {
                                lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            SwipeableState swipeableStateG = SwipeableKt.g(boolValueOf, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                            if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z14 = true;
                            } else {
                                z14 = false;
                            }
                            if (lVar != null) {
                                modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                            } else {
                                modifierB = Modifier.Companion;
                            }
                            modifierB2 = Modifier.Companion;
                            if (lVar != null) {
                                modifierB2 = TouchTargetKt.b(modifierB2);
                            }
                            Modifier modifierB3 = modifier4.B(modifierB2).B(modifierB);
                            Map mapL = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH0), Boolean.TRUE));
                            Orientation orientation = Orientation.Horizontal;
                            if (z13 || lVar == null) {
                                z15 = false;
                            } else {
                                z15 = true;
                            }
                            Modifier modifierH = SwipeableKt.h(modifierB3, swipeableStateG, mapL, orientation, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                            Alignment.Companion companion = Alignment.Companion;
                            Modifier modifierU = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH, companion.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                            composerS.G(733328855);
                            MeasurePolicy measurePolicyH = BoxKt.h(companion.o(), false, composerS, 0);
                            composerS.G(-1323940314);
                            Density density = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            aVarA = companion2.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierU);
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
                            Updater.e(composerA, measurePolicyH, companion2.d());
                            Updater.e(composerA, density, companion2.b());
                            Updater.e(composerA, layoutDirection, companion2.c());
                            Updater.e(composerA, viewConfiguration, companion2.f());
                            composerS.o();
                            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-2137368960);
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            composerS.G(1571176015);
                            int i20 = i17 << 3;
                            composerS = composerS;
                            b(boxScopeInstance, z6, z13, switchColorsA, swipeableStateG.t(), mutableInteractionSource4, composerS, (i20 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i20 & 458752));
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            modifier2 = modifier4;
                            z16 = z13;
                            mutableInteractionSource5 = mutableInteractionSource4;
                            switchColors3 = switchColorsA;
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            modifier4 = modifier2;
                            z13 = z11;
                            mutableInteractionSource4 = mutableInteractionSource2;
                            switchColorsA = switchColors2;
                        }
                        i17 = i12;
                        composerS.A();
                        float fH1 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                        Boolean boolValueOf2 = Boolean.valueOf(z6);
                        if (lVar == null) {
                            lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        SwipeableState swipeableStateG2 = SwipeableKt.g(boolValueOf2, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                        if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if (lVar != null) {
                            modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                        } else {
                            modifierB = Modifier.Companion;
                        }
                        modifierB2 = Modifier.Companion;
                        if (lVar != null) {
                            modifierB2 = TouchTargetKt.b(modifierB2);
                        }
                        Modifier modifierB4 = modifier4.B(modifierB2).B(modifierB);
                        Map mapL2 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH1), Boolean.TRUE));
                        Orientation orientation2 = Orientation.Horizontal;
                        if (z13) {
                            z15 = false;
                        } else {
                            z15 = false;
                        }
                        Modifier modifierH2 = SwipeableKt.h(modifierB4, swipeableStateG2, mapL2, orientation2, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL2.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                        Alignment.Companion companion3 = Alignment.Companion;
                        Modifier modifierU2 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH2, companion3.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                        composerS.G(733328855);
                        MeasurePolicy measurePolicyH2 = BoxKt.h(companion3.o(), false, composerS, 0);
                        composerS.G(-1323940314);
                        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                        aVarA = companion4.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierU2);
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
                        Updater.e(composerA2, measurePolicyH2, companion4.d());
                        Updater.e(composerA2, density2, companion4.b());
                        Updater.e(composerA2, layoutDirection2, companion4.c());
                        Updater.e(composerA2, viewConfiguration2, companion4.f());
                        composerS.o();
                        qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-2137368960);
                        BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                        composerS.G(1571176015);
                        int i21 = i17 << 3;
                        composerS = composerS;
                        b(boxScopeInstance2, z6, z13, switchColorsA, swipeableStateG2.t(), mutableInteractionSource4, composerS, (i21 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i21 & 458752));
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        modifier2 = modifier4;
                        z16 = z13;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        switchColors3 = switchColorsA;
                    } else {
                        composerS.g();
                        z16 = z11;
                        mutableInteractionSource5 = mutableInteractionSource2;
                        switchColors3 = switchColors2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        switchColors2 = switchColors;
                        if (composerS.k(switchColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        switchColors2 = switchColors;
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH2 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf3 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG3 = SwipeableKt.g(boolValueOf3, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB5 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL3 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH2), Boolean.TRUE));
                    Orientation orientation3 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH3 = SwipeableKt.h(modifierB5, swipeableStateG3, mapL3, orientation3, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL3.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion5 = Alignment.Companion;
                    Modifier modifierU3 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH3, companion5.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH3 = BoxKt.h(companion5.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                    aVarA = companion6.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierU3);
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
                    Updater.e(composerA3, measurePolicyH3, companion6.d());
                    Updater.e(composerA3, density3, companion6.b());
                    Updater.e(composerA3, layoutDirection3, companion6.c());
                    Updater.e(composerA3, viewConfiguration3, companion6.f());
                    composerS.o();
                    qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i22 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance3, z6, z13, switchColorsA, swipeableStateG3.t(), mutableInteractionSource4, composerS, (i22 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i22 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH3 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf4 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG4 = SwipeableKt.g(boolValueOf4, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB6 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL4 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH3), Boolean.TRUE));
                    Orientation orientation4 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH4 = SwipeableKt.h(modifierB6, swipeableStateG4, mapL4, orientation4, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL4.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion7 = Alignment.Companion;
                    Modifier modifierU4 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH4, companion7.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH4 = BoxKt.h(companion7.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                    aVarA = companion8.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierU4);
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
                    Updater.e(composerA4, measurePolicyH4, companion8.d());
                    Updater.e(composerA4, density4, companion8.b());
                    Updater.e(composerA4, layoutDirection4, companion8.c());
                    Updater.e(composerA4, viewConfiguration4, companion8.f());
                    composerS.o();
                    qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance4 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i23 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance4, z6, z13, switchColorsA, swipeableStateG4.t(), mutableInteractionSource4, composerS, (i23 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i23 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
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
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        switchColors2 = switchColors;
                        if (composerS.k(switchColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        switchColors2 = switchColors;
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH4 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf5 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG5 = SwipeableKt.g(boolValueOf5, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB7 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL5 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH4), Boolean.TRUE));
                    Orientation orientation5 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH5 = SwipeableKt.h(modifierB7, swipeableStateG5, mapL5, orientation5, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL5.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion9 = Alignment.Companion;
                    Modifier modifierU5 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH5, companion9.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH5 = BoxKt.h(companion9.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                    aVarA = companion10.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierU5);
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
                    Updater.e(composerA5, measurePolicyH5, companion10.d());
                    Updater.e(composerA5, density5, companion10.b());
                    Updater.e(composerA5, layoutDirection5, companion10.c());
                    Updater.e(composerA5, viewConfiguration5, companion10.f());
                    composerS.o();
                    qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance5 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i24 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance5, z6, z13, switchColorsA, swipeableStateG5.t(), mutableInteractionSource4, composerS, (i24 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i24 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH5 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf6 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG6 = SwipeableKt.g(boolValueOf6, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB8 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL6 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH5), Boolean.TRUE));
                    Orientation orientation6 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH6 = SwipeableKt.h(modifierB8, swipeableStateG6, mapL6, orientation6, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL6.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion11 = Alignment.Companion;
                    Modifier modifierU6 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH6, companion11.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH6 = BoxKt.h(companion11.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                    aVarA = companion12.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierU6);
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
                    Updater.e(composerA6, measurePolicyH6, companion12.d());
                    Updater.e(composerA6, density6, companion12.b());
                    Updater.e(composerA6, layoutDirection6, companion12.c());
                    Updater.e(composerA6, viewConfiguration6, companion12.f());
                    composerS.o();
                    qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance6 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i25 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance6, z6, z13, switchColorsA, swipeableStateG6.t(), mutableInteractionSource4, composerS, (i25 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i25 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    switchColors2 = switchColors;
                    if (composerS.k(switchColors2)) {
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                i12 |= i19;
            } else {
                switchColors2 = switchColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH6 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf7 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG7 = SwipeableKt.g(boolValueOf7, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB9 = modifier4.B(modifierB2).B(modifierB);
                Map mapL7 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH6), Boolean.TRUE));
                Orientation orientation7 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH7 = SwipeableKt.h(modifierB9, swipeableStateG7, mapL7, orientation7, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL7.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion13 = Alignment.Companion;
                Modifier modifierU7 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH7, companion13.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH7 = BoxKt.h(companion13.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                aVarA = companion14.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierU7);
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
                Updater.e(composerA7, measurePolicyH7, companion14.d());
                Updater.e(composerA7, density7, companion14.b());
                Updater.e(composerA7, layoutDirection7, companion14.c());
                Updater.e(composerA7, viewConfiguration7, companion14.f());
                composerS.o();
                qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance7 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i26 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance7, z6, z13, switchColorsA, swipeableStateG7.t(), mutableInteractionSource4, composerS, (i26 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i26 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH7 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf8 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG8 = SwipeableKt.g(boolValueOf8, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB10 = modifier4.B(modifierB2).B(modifierB);
                Map mapL8 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH7), Boolean.TRUE));
                Orientation orientation8 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH8 = SwipeableKt.h(modifierB10, swipeableStateG8, mapL8, orientation8, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL8.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion15 = Alignment.Companion;
                Modifier modifierU8 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH8, companion15.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH8 = BoxKt.h(companion15.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                aVarA = companion16.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierU8);
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
                Updater.e(composerA8, measurePolicyH8, companion16.d());
                Updater.e(composerA8, density8, companion16.b());
                Updater.e(composerA8, layoutDirection8, companion16.c());
                Updater.e(composerA8, viewConfiguration8, companion16.f());
                composerS.o();
                qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance8 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i27 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance8, z6, z13, switchColorsA, swipeableStateG8.t(), mutableInteractionSource4, composerS, (i27 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i27 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
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
                if ((i10 & 458752) == 0) {
                    if ((i11 & 32) == 0) {
                        switchColors2 = switchColors;
                        if (composerS.k(switchColors2)) {
                        }
                        i12 |= i19;
                    } else {
                        switchColors2 = switchColors;
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH8 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf9 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG9 = SwipeableKt.g(boolValueOf9, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB11 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL9 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH8), Boolean.TRUE));
                    Orientation orientation9 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH9 = SwipeableKt.h(modifierB11, swipeableStateG9, mapL9, orientation9, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL9.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion17 = Alignment.Companion;
                    Modifier modifierU9 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH9, companion17.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH9 = BoxKt.h(companion17.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                    aVarA = companion18.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierU9);
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
                    Updater.e(composerA9, measurePolicyH9, companion18.d());
                    Updater.e(composerA9, density9, companion18.b());
                    Updater.e(composerA9, layoutDirection9, companion18.c());
                    Updater.e(composerA9, viewConfiguration9, companion18.f());
                    composerS.o();
                    qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance9 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i28 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance9, z6, z13, switchColorsA, swipeableStateG9.t(), mutableInteractionSource4, composerS, (i28 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i28 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    } else {
                        if (i18 != 0) {
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
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                            i17 = i12;
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            switchColorsA = switchColors2;
                        }
                    }
                    composerS.A();
                    float fH9 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                    Boolean boolValueOf10 = Boolean.valueOf(z6);
                    if (lVar == null) {
                        lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    SwipeableState swipeableStateG10 = SwipeableKt.g(boolValueOf10, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                    if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (lVar != null) {
                        modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                    } else {
                        modifierB = Modifier.Companion;
                    }
                    modifierB2 = Modifier.Companion;
                    if (lVar != null) {
                        modifierB2 = TouchTargetKt.b(modifierB2);
                    }
                    Modifier modifierB12 = modifier4.B(modifierB2).B(modifierB);
                    Map mapL10 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH9), Boolean.TRUE));
                    Orientation orientation10 = Orientation.Horizontal;
                    if (z13) {
                        z15 = false;
                    } else {
                        z15 = false;
                    }
                    Modifier modifierH10 = SwipeableKt.h(modifierB12, swipeableStateG10, mapL10, orientation10, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL10.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                    Alignment.Companion companion19 = Alignment.Companion;
                    Modifier modifierU10 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH10, companion19.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH10 = BoxKt.h(companion19.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                    aVarA = companion110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierU10);
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
                    Updater.e(composerA10, measurePolicyH10, companion110.d());
                    Updater.e(composerA10, density10, companion110.b());
                    Updater.e(composerA10, layoutDirection10, companion110.c());
                    Updater.e(composerA10, viewConfiguration10, companion110.f());
                    composerS.o();
                    qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance10 = BoxScopeInstance.INSTANCE;
                    composerS.G(1571176015);
                    int i29 = i17 << 3;
                    composerS = composerS;
                    b(boxScopeInstance10, z6, z13, switchColorsA, swipeableStateG10.t(), mutableInteractionSource4, composerS, (i29 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i29 & 458752));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    modifier2 = modifier4;
                    z16 = z13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    switchColors3 = switchColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    switchColors2 = switchColors;
                    if (composerS.k(switchColors2)) {
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                i12 |= i19;
            } else {
                switchColors2 = switchColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH10 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf11 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG11 = SwipeableKt.g(boolValueOf11, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB13 = modifier4.B(modifierB2).B(modifierB);
                Map mapL11 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH10), Boolean.TRUE));
                Orientation orientation11 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH11 = SwipeableKt.h(modifierB13, swipeableStateG11, mapL11, orientation11, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL11.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion111 = Alignment.Companion;
                Modifier modifierU11 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH11, companion111.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH11 = BoxKt.h(companion111.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                aVarA = companion112.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierU11);
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
                Updater.e(composerA11, measurePolicyH11, companion112.d());
                Updater.e(composerA11, density11, companion112.b());
                Updater.e(composerA11, layoutDirection11, companion112.c());
                Updater.e(composerA11, viewConfiguration11, companion112.f());
                composerS.o();
                qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance11 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i210 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance11, z6, z13, switchColorsA, swipeableStateG11.t(), mutableInteractionSource4, composerS, (i210 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i210 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH11 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf12 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG12 = SwipeableKt.g(boolValueOf12, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB14 = modifier4.B(modifierB2).B(modifierB);
                Map mapL12 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH11), Boolean.TRUE));
                Orientation orientation12 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH12 = SwipeableKt.h(modifierB14, swipeableStateG12, mapL12, orientation12, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL12.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion113 = Alignment.Companion;
                Modifier modifierU12 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH12, companion113.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH12 = BoxKt.h(companion113.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                aVarA = companion114.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierU12);
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
                Updater.e(composerA12, measurePolicyH12, companion114.d());
                Updater.e(composerA12, density12, companion114.b());
                Updater.e(composerA12, layoutDirection12, companion114.c());
                Updater.e(composerA12, viewConfiguration12, companion114.f());
                composerS.o();
                qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance12 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i211 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance12, z6, z13, switchColorsA, swipeableStateG12.t(), mutableInteractionSource4, composerS, (i211 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i211 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
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
            if ((i10 & 458752) == 0) {
                if ((i11 & 32) == 0) {
                    switchColors2 = switchColors;
                    if (composerS.k(switchColors2)) {
                    }
                    i12 |= i19;
                } else {
                    switchColors2 = switchColors;
                }
                i12 |= i19;
            } else {
                switchColors2 = switchColors;
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH12 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf13 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG13 = SwipeableKt.g(boolValueOf13, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB15 = modifier4.B(modifierB2).B(modifierB);
                Map mapL13 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH12), Boolean.TRUE));
                Orientation orientation13 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH13 = SwipeableKt.h(modifierB15, swipeableStateG13, mapL13, orientation13, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL13.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion115 = Alignment.Companion;
                Modifier modifierU13 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH13, companion115.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH13 = BoxKt.h(companion115.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                aVarA = companion116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierU13);
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
                Updater.e(composerA13, measurePolicyH13, companion116.d());
                Updater.e(composerA13, density13, companion116.b());
                Updater.e(composerA13, layoutDirection13, companion116.c());
                Updater.e(composerA13, viewConfiguration13, companion116.f());
                composerS.o();
                qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance13 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i212 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance13, z6, z13, switchColorsA, swipeableStateG13.t(), mutableInteractionSource4, composerS, (i212 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i212 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                } else {
                    if (i18 != 0) {
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
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                        i17 = i12;
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        switchColorsA = switchColors2;
                    }
                }
                composerS.A();
                float fH13 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
                Boolean boolValueOf14 = Boolean.valueOf(z6);
                if (lVar == null) {
                    lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                SwipeableState swipeableStateG14 = SwipeableKt.g(boolValueOf14, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
                if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (lVar != null) {
                    modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
                } else {
                    modifierB = Modifier.Companion;
                }
                modifierB2 = Modifier.Companion;
                if (lVar != null) {
                    modifierB2 = TouchTargetKt.b(modifierB2);
                }
                Modifier modifierB16 = modifier4.B(modifierB2).B(modifierB);
                Map mapL14 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH13), Boolean.TRUE));
                Orientation orientation14 = Orientation.Horizontal;
                if (z13) {
                    z15 = false;
                } else {
                    z15 = false;
                }
                Modifier modifierH14 = SwipeableKt.h(modifierB16, swipeableStateG14, mapL14, orientation14, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL14.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
                Alignment.Companion companion117 = Alignment.Companion;
                Modifier modifierU14 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH14, companion117.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
                composerS.G(733328855);
                MeasurePolicy measurePolicyH14 = BoxKt.h(companion117.o(), false, composerS, 0);
                composerS.G(-1323940314);
                Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                aVarA = companion118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierU14);
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
                Updater.e(composerA14, measurePolicyH14, companion118.d());
                Updater.e(composerA14, density14, companion118.b());
                Updater.e(composerA14, layoutDirection14, companion118.c());
                Updater.e(composerA14, viewConfiguration14, companion118.f());
                composerS.o();
                qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance14 = BoxScopeInstance.INSTANCE;
                composerS.G(1571176015);
                int i213 = i17 << 3;
                composerS = composerS;
                b(boxScopeInstance14, z6, z13, switchColorsA, swipeableStateG14.t(), mutableInteractionSource4, composerS, (i213 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i213 & 458752));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                modifier2 = modifier4;
                z16 = z13;
                mutableInteractionSource5 = mutableInteractionSource4;
                switchColors3 = switchColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                switchColors2 = switchColors;
                if (composerS.k(switchColors2)) {
                }
                i12 |= i19;
            } else {
                switchColors2 = switchColors;
            }
            i12 |= i19;
        } else {
            switchColors2 = switchColors;
        }
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
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
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    i17 = i12;
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = switchColors2;
                }
            } else {
                if (i18 != 0) {
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
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    i17 = i12;
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = switchColors2;
                }
            }
            composerS.A();
            float fH14 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
            Boolean boolValueOf15 = Boolean.valueOf(z6);
            if (lVar == null) {
                lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
            } else {
                lVar2 = lVar;
            }
            SwipeableState swipeableStateG15 = SwipeableKt.g(boolValueOf15, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
            if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (lVar != null) {
                modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
            } else {
                modifierB = Modifier.Companion;
            }
            modifierB2 = Modifier.Companion;
            if (lVar != null) {
                modifierB2 = TouchTargetKt.b(modifierB2);
            }
            Modifier modifierB17 = modifier4.B(modifierB2).B(modifierB);
            Map mapL15 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH14), Boolean.TRUE));
            Orientation orientation15 = Orientation.Horizontal;
            if (z13) {
                z15 = false;
            } else {
                z15 = false;
            }
            Modifier modifierH15 = SwipeableKt.h(modifierB17, swipeableStateG15, mapL15, orientation15, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL15.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
            Alignment.Companion companion119 = Alignment.Companion;
            Modifier modifierU15 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH15, companion119.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH15 = BoxKt.h(companion119.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
            aVarA = companion1110.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierU15);
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
            Updater.e(composerA15, measurePolicyH15, companion1110.d());
            Updater.e(composerA15, density15, companion1110.b());
            Updater.e(composerA15, layoutDirection15, companion1110.c());
            Updater.e(composerA15, viewConfiguration15, companion1110.f());
            composerS.o();
            qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance15 = BoxScopeInstance.INSTANCE;
            composerS.G(1571176015);
            int i214 = i17 << 3;
            composerS = composerS;
            b(boxScopeInstance15, z6, z13, switchColorsA, swipeableStateG15.t(), mutableInteractionSource4, composerS, (i214 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i214 & 458752));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier2 = modifier4;
            z16 = z13;
            mutableInteractionSource5 = mutableInteractionSource4;
            switchColors3 = switchColorsA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i18 != 0) {
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
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    i17 = i12;
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = switchColors2;
                }
            } else {
                if (i18 != 0) {
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
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = SwitchDefaults.INSTANCE.a(0L, 0L, 0.0f, 0L, 0L, 0.0f, 0L, 0L, 0L, 0L, composerS, 0, 6, 1023);
                    i17 = i12;
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    switchColorsA = switchColors2;
                }
            }
            composerS.A();
            float fH15 = ((Density) composerS.x(CompositionLocalsKt.e())).H0(ThumbPathLength);
            Boolean boolValueOf16 = Boolean.valueOf(z6);
            if (lVar == null) {
                lVar2 = SwitchKt$Switch$swipeableState$1.INSTANCE;
            } else {
                lVar2 = lVar;
            }
            SwipeableState swipeableStateG16 = SwipeableKt.g(boolValueOf16, lVar2, AnimationSpec, composerS, (i17 & 14) | 384, 0);
            if (composerS.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (lVar != null) {
                modifierB = ToggleableKt.b(Modifier.Companion, z6, mutableInteractionSource4, null, z13, Role.g(Role.Companion.e()), lVar);
            } else {
                modifierB = Modifier.Companion;
            }
            modifierB2 = Modifier.Companion;
            if (lVar != null) {
                modifierB2 = TouchTargetKt.b(modifierB2);
            }
            Modifier modifierB18 = modifier4.B(modifierB2).B(modifierB);
            Map mapL16 = s0.l(a0.a(Float.valueOf(0.0f), Boolean.FALSE), a0.a(Float.valueOf(fH15), Boolean.TRUE));
            Orientation orientation16 = Orientation.Horizontal;
            if (z13) {
                z15 = false;
            } else {
                z15 = false;
            }
            Modifier modifierH16 = SwipeableKt.h(modifierB18, swipeableStateG16, mapL16, orientation16, (288 & 8) != 0 ? true : z15, (288 & 16) != 0 ? false : z14, (288 & 32) != 0 ? null : mutableInteractionSource4, (288 & 64) != 0 ? SwipeableKt$swipeable$1.INSTANCE : SwitchKt$Switch$2.INSTANCE, (288 & 128) != 0 ? SwipeableDefaults.d(SwipeableDefaults.INSTANCE, mapL16.keySet(), 0.0f, 0.0f, 6, null) : null, (288 & 256) != 0 ? SwipeableDefaults.INSTANCE.b() : 0.0f);
            Alignment.Companion companion1111 = Alignment.Companion;
            Modifier modifierU16 = SizeKt.u(PaddingKt.i(SizeKt.H(modifierH16, companion1111.e(), false, 2, null), DefaultSwitchPadding), SwitchWidth, SwitchHeight);
            composerS.G(733328855);
            MeasurePolicy measurePolicyH16 = BoxKt.h(companion1111.o(), false, composerS, 0);
            composerS.G(-1323940314);
            Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
            aVarA = companion1112.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierU16);
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
            Composer composerA16 = Updater.a(composerS);
            Updater.e(composerA16, measurePolicyH16, companion1112.d());
            Updater.e(composerA16, density16, companion1112.b());
            Updater.e(composerA16, layoutDirection16, companion1112.c());
            Updater.e(composerA16, viewConfiguration16, companion1112.f());
            composerS.o();
            qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-2137368960);
            BoxScopeInstance boxScopeInstance16 = BoxScopeInstance.INSTANCE;
            composerS.G(1571176015);
            int i215 = i17 << 3;
            composerS = composerS;
            b(boxScopeInstance16, z6, z13, switchColorsA, swipeableStateG16.t(), mutableInteractionSource4, composerS, (i215 & 112) | 6 | ((i17 >> 3) & 896) | ((i17 >> 6) & 7168) | (i215 & 458752));
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            modifier2 = modifier4;
            z16 = z13;
            mutableInteractionSource5 = mutableInteractionSource4;
            switchColors3 = switchColorsA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SwitchKt$Switch$4(z6, lVar, modifier2, z16, mutableInteractionSource5, switchColors3, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ComposableTarget
    @Composable
    public static final void b(BoxScope boxScope, boolean z6, boolean z10, SwitchColors switchColors, State<Float> state, InteractionSource interactionSource, Composer composer, int i10) {
        int i11;
        int i12;
        long jD;
        Composer composerS = composer.s(-1834839253);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(boxScope) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.m(z6) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i11 |= composerS.m(z10) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i11 |= composerS.k(switchColors) ? 2048 : 1024;
        }
        if ((57344 & i10) == 0) {
            i11 |= composerS.k(state) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i11 |= composerS.k(interactionSource) ? 131072 : 65536;
        }
        if ((374491 & i11) == 74898 && composerS.b()) {
            composerS.g();
        } else {
            composerS.G(-492369756);
            Object objH = composerS.H();
            Composer.Companion companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt.d();
                composerS.z(objH);
            }
            composerS.Q();
            SnapshotStateList snapshotStateList = (SnapshotStateList) objH;
            int i13 = (i11 >> 15) & 14;
            composerS.G(511388516);
            boolean zK = composerS.k(interactionSource) | composerS.k(snapshotStateList);
            Object objH2 = composerS.H();
            if (zK || objH2 == companion.a()) {
                objH2 = new SwitchKt$SwitchImpl$1$1(interactionSource, snapshotStateList, null);
                composerS.z(objH2);
            }
            composerS.Q();
            EffectsKt.d(interactionSource, (p) objH2, composerS, i13);
            float f = snapshotStateList.isEmpty() ^ true ? ThumbPressedElevation : ThumbDefaultElevation;
            int i14 = ((i11 >> 3) & 896) | ((i11 >> 6) & 14) | (i11 & 112);
            State<Color> stateA = switchColors.a(z10, z6, composerS, i14);
            Modifier.Companion companion2 = Modifier.Companion;
            Alignment.Companion companion3 = Alignment.Companion;
            Modifier modifierL = SizeKt.l(boxScope.a(companion2, companion3.e()), 0.0f, 1, null);
            composerS.G(1157296644);
            boolean zK2 = composerS.k(stateA);
            Object objH3 = composerS.H();
            if (zK2 || objH3 == companion.a()) {
                objH3 = new SwitchKt$SwitchImpl$2$1(stateA);
                composerS.z(objH3);
            }
            composerS.Q();
            CanvasKt.a(modifierL, (l) objH3, composerS, 0);
            State<Color> stateB = switchColors.b(z10, z6, composerS, i14);
            ElevationOverlay elevationOverlay = (ElevationOverlay) composerS.x(ElevationOverlayKt.d());
            float f6 = Dp.f(((Dp) composerS.x(ElevationOverlayKt.c())).l() + f);
            composerS.G(-539245361);
            if (!Color.n(d(stateB), MaterialTheme.INSTANCE.a(composerS, 6).n()) || elevationOverlay == null) {
                i12 = 1157296644;
                jD = d(stateB);
            } else {
                i12 = 1157296644;
                jD = elevationOverlay.a(d(stateB), f6, composerS, 0);
            }
            long j6 = jD;
            composerS.Q();
            Modifier modifierA = boxScope.a(companion2, companion3.h());
            composerS.G(i12);
            boolean zK3 = composerS.k(state);
            Object objH4 = composerS.H();
            if (zK3 || objH4 == companion.a()) {
                objH4 = new SwitchKt$SwitchImpl$3$1(state);
                composerS.z(objH4);
            }
            composerS.Q();
            SpacerKt.a(BackgroundKt.a(ShadowKt.b(SizeKt.t(IndicationKt.b(androidx.compose.foundation.layout.OffsetKt.a(modifierA, (l) objH4), interactionSource, RippleKt.e(false, ThumbRippleRadius, 0L, composerS, 54, 4)), ThumbDiameter), f, RoundedCornerShapeKt.d(), false, 0L, 0L, 24, null), j6, RoundedCornerShapeKt.d()), composerS, 0);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new SwitchKt$SwitchImpl$4(boxScope, z6, z10, switchColors, state, interactionSource, i10));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long c(State<Color> state) {
        return state.getValue().v();
    }

    private static final long d(State<Color> state) {
        return state.getValue().v();
    }
}
