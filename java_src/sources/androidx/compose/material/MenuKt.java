package androidx.compose.material;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.TransformOriginKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.q;
import kotlin.jvm.internal.m;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class MenuKt {
    private static final float DropdownMenuItemDefaultMinHeight;
    private static final float DropdownMenuVerticalPadding;
    public static final int InTransitionDuration = 120;
    private static final float MenuElevation;
    private static final float MenuVerticalMargin;
    public static final int OutTransitionDuration = 75;
    private static final float DropdownMenuItemHorizontalPadding = Dp.f(16);
    private static final float DropdownMenuItemDefaultMinWidth = Dp.f(112);
    private static final float DropdownMenuItemDefaultMaxWidth = Dp.f(280);

    public static final float i() {
        return DropdownMenuVerticalPadding;
    }

    public static final float j() {
        return MenuVerticalMargin;
    }

    static {
        float f = 8;
        MenuElevation = Dp.f(f);
        float f6 = 48;
        MenuVerticalMargin = Dp.f(f6);
        DropdownMenuVerticalPadding = Dp.f(f);
        DropdownMenuItemDefaultMinHeight = Dp.f(f6);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0070  */
    /* JADX WARN: Code duplicated, block: B:39:0x0074  */
    /* JADX WARN: Code duplicated, block: B:41:0x007a  */
    /* JADX WARN: Code duplicated, block: B:42:0x007d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0093 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:51:0x0095  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    /* JADX WARN: Code duplicated, block: B:55:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:56:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:62:0x0140  */
    /* JADX WARN: Code duplicated, block: B:63:0x0143  */
    /* JADX WARN: Code duplicated, block: B:67:0x015b  */
    /* JADX WARN: Code duplicated, block: B:70:0x01a0  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:77:0x01df  */
    /* JADX WARN: Code duplicated, block: B:79:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull MutableTransitionState<Boolean> expandedStates, @NotNull MutableState<TransformOrigin> transformOriginState, @Nullable Modifier modifier, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        Modifier modifier3;
        boolean zBooleanValue;
        float f;
        State stateC;
        boolean zBooleanValue2;
        float f6;
        State stateC2;
        boolean zK;
        Object objH;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(expandedStates, "expandedStates");
        t.j(transformOriginState, "transformOriginState");
        t.j(content, "content");
        Composer composerS = composer.s(1164283597);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(expandedStates) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i11 & 2) != 0) {
            i12 |= 48;
        } else if ((i10 & 112) == 0) {
            i12 |= composerS.k(transformOriginState) ? 32 : 16;
        }
        int i14 = i11 & 4;
        if (i14 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            if ((i11 & 8) != 0) {
                i12 |= 3072;
            } else if ((i10 & 7168) == 0) {
                if (composerS.k(content)) {
                    i13 = 2048;
                } else {
                    i13 = 1024;
                }
                i12 |= i13;
            }
            if ((i12 & 5851) == 1170 || !composerS.b()) {
                if (i14 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                Transition transitionD = TransitionKt.d(expandedStates, "DropDownMenu", composerS, MutableTransitionState.$stable | 48 | (i12 & 14), 0);
                MenuKt$DropdownMenuContent$scale$2 menuKt$DropdownMenuContent$scale$2 = MenuKt$DropdownMenuContent$scale$2.INSTANCE;
                composerS.G(1399891485);
                m mVar = m.INSTANCE;
                TwoWayConverter<Float, AnimationVector1D> twoWayConverterI = VectorConvertersKt.i(mVar);
                composerS.G(1847725064);
                zBooleanValue = ((Boolean) transitionD.g()).booleanValue();
                composerS.G(-1958825495);
                if (zBooleanValue) {
                    f = 1.0f;
                } else {
                    f = 0.8f;
                }
                composerS.Q();
                Float fValueOf = Float.valueOf(f);
                boolean zBooleanValue3 = ((Boolean) transitionD.m()).booleanValue();
                composerS.G(-1958825495);
                float f7 = zBooleanValue3 ? 1.0f : 0.8f;
                composerS.Q();
                stateC = TransitionKt.c(transitionD, fValueOf, Float.valueOf(f7), menuKt$DropdownMenuContent$scale$2.invoke(transitionD.k(), composerS, 0), twoWayConverterI, "FloatAnimation", composerS, 0);
                composerS.Q();
                composerS.Q();
                MenuKt$DropdownMenuContent$alpha$2 menuKt$DropdownMenuContent$alpha$2 = MenuKt$DropdownMenuContent$alpha$2.INSTANCE;
                composerS.G(1399891485);
                TwoWayConverter<Float, AnimationVector1D> twoWayConverterI2 = VectorConvertersKt.i(mVar);
                composerS.G(1847725064);
                zBooleanValue2 = ((Boolean) transitionD.g()).booleanValue();
                composerS.G(-1541356035);
                if (zBooleanValue2) {
                    f6 = 1.0f;
                } else {
                    f6 = 0.0f;
                }
                composerS.Q();
                Float fValueOf2 = Float.valueOf(f6);
                boolean zBooleanValue4 = ((Boolean) transitionD.m()).booleanValue();
                composerS.G(-1541356035);
                float f10 = zBooleanValue4 ? 1.0f : 0.0f;
                composerS.Q();
                stateC2 = TransitionKt.c(transitionD, fValueOf2, Float.valueOf(f10), menuKt$DropdownMenuContent$alpha$2.invoke(transitionD.k(), composerS, 0), twoWayConverterI2, "FloatAnimation", composerS, 0);
                composerS.Q();
                composerS.Q();
                Modifier.Companion companion = Modifier.Companion;
                composerS.G(1618982084);
                zK = composerS.k(stateC) | composerS.k(stateC2) | composerS.k(transformOriginState);
                objH = composerS.H();
                if (zK || objH == Composer.Companion.a()) {
                    objH = new MenuKt$DropdownMenuContent$1$1(transformOriginState, stateC, stateC2);
                    composerS.z(objH);
                }
                composerS.Q();
                Modifier modifierA = GraphicsLayerModifierKt.a(companion, (l) objH);
                float f11 = MenuElevation;
                ComposableLambda composableLambdaB = ComposableLambdaKt.b(composerS, -242468534, true, new MenuKt$DropdownMenuContent$2(modifier3, content, i12));
                modifier4 = modifier3;
                CardKt.a(modifierA, null, 0L, 0L, null, f11, composableLambdaB, composerS, 1769472, 30);
            } else {
                composerS.g();
                modifier4 = modifier2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuContent$3(expandedStates, transformOriginState, modifier4, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            if (composerS.k(content)) {
                i13 = 2048;
            } else {
                i13 = 1024;
            }
            i12 |= i13;
        }
        if ((i12 & 5851) == 1170) {
            if (i14 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            Transition transitionD2 = TransitionKt.d(expandedStates, "DropDownMenu", composerS, MutableTransitionState.$stable | 48 | (i12 & 14), 0);
            MenuKt$DropdownMenuContent$scale$2 menuKt$DropdownMenuContent$scale$3 = MenuKt$DropdownMenuContent$scale$2.INSTANCE;
            composerS.G(1399891485);
            m mVar2 = m.INSTANCE;
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI3 = VectorConvertersKt.i(mVar2);
            composerS.G(1847725064);
            zBooleanValue = ((Boolean) transitionD2.g()).booleanValue();
            composerS.G(-1958825495);
            if (zBooleanValue) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            composerS.Q();
            Float fValueOf3 = Float.valueOf(f);
            boolean zBooleanValue5 = ((Boolean) transitionD2.m()).booleanValue();
            composerS.G(-1958825495);
            if (zBooleanValue5) {
            }
            composerS.Q();
            stateC = TransitionKt.c(transitionD2, fValueOf3, Float.valueOf(f7), menuKt$DropdownMenuContent$scale$3.invoke(transitionD2.k(), composerS, 0), twoWayConverterI3, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            MenuKt$DropdownMenuContent$alpha$2 menuKt$DropdownMenuContent$alpha$3 = MenuKt$DropdownMenuContent$alpha$2.INSTANCE;
            composerS.G(1399891485);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI4 = VectorConvertersKt.i(mVar2);
            composerS.G(1847725064);
            zBooleanValue2 = ((Boolean) transitionD2.g()).booleanValue();
            composerS.G(-1541356035);
            if (zBooleanValue2) {
                f6 = 1.0f;
            } else {
                f6 = 0.0f;
            }
            composerS.Q();
            Float fValueOf4 = Float.valueOf(f6);
            boolean zBooleanValue6 = ((Boolean) transitionD2.m()).booleanValue();
            composerS.G(-1541356035);
            if (zBooleanValue6) {
            }
            composerS.Q();
            stateC2 = TransitionKt.c(transitionD2, fValueOf4, Float.valueOf(f10), menuKt$DropdownMenuContent$alpha$3.invoke(transitionD2.k(), composerS, 0), twoWayConverterI4, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            Modifier.Companion companion2 = Modifier.Companion;
            composerS.G(1618982084);
            zK = composerS.k(stateC) | composerS.k(stateC2) | composerS.k(transformOriginState);
            objH = composerS.H();
            if (zK) {
                objH = new MenuKt$DropdownMenuContent$1$1(transformOriginState, stateC, stateC2);
                composerS.z(objH);
            } else {
                objH = new MenuKt$DropdownMenuContent$1$1(transformOriginState, stateC, stateC2);
                composerS.z(objH);
            }
            composerS.Q();
            Modifier modifierA2 = GraphicsLayerModifierKt.a(companion2, (l) objH);
            float f12 = MenuElevation;
            ComposableLambda composableLambdaB2 = ComposableLambdaKt.b(composerS, -242468534, true, new MenuKt$DropdownMenuContent$2(modifier3, content, i12));
            modifier4 = modifier3;
            CardKt.a(modifierA2, null, 0L, 0L, null, f12, composableLambdaB2, composerS, 1769472, 30);
        } else {
            if (i14 != 0) {
                modifier3 = Modifier.Companion;
            } else {
                modifier3 = modifier2;
            }
            Transition transitionD3 = TransitionKt.d(expandedStates, "DropDownMenu", composerS, MutableTransitionState.$stable | 48 | (i12 & 14), 0);
            MenuKt$DropdownMenuContent$scale$2 menuKt$DropdownMenuContent$scale$4 = MenuKt$DropdownMenuContent$scale$2.INSTANCE;
            composerS.G(1399891485);
            m mVar3 = m.INSTANCE;
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI5 = VectorConvertersKt.i(mVar3);
            composerS.G(1847725064);
            zBooleanValue = ((Boolean) transitionD3.g()).booleanValue();
            composerS.G(-1958825495);
            if (zBooleanValue) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            composerS.Q();
            Float fValueOf5 = Float.valueOf(f);
            boolean zBooleanValue7 = ((Boolean) transitionD3.m()).booleanValue();
            composerS.G(-1958825495);
            if (zBooleanValue7) {
            }
            composerS.Q();
            stateC = TransitionKt.c(transitionD3, fValueOf5, Float.valueOf(f7), menuKt$DropdownMenuContent$scale$4.invoke(transitionD3.k(), composerS, 0), twoWayConverterI5, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            MenuKt$DropdownMenuContent$alpha$2 menuKt$DropdownMenuContent$alpha$4 = MenuKt$DropdownMenuContent$alpha$2.INSTANCE;
            composerS.G(1399891485);
            TwoWayConverter<Float, AnimationVector1D> twoWayConverterI6 = VectorConvertersKt.i(mVar3);
            composerS.G(1847725064);
            zBooleanValue2 = ((Boolean) transitionD3.g()).booleanValue();
            composerS.G(-1541356035);
            if (zBooleanValue2) {
                f6 = 1.0f;
            } else {
                f6 = 0.0f;
            }
            composerS.Q();
            Float fValueOf6 = Float.valueOf(f6);
            boolean zBooleanValue8 = ((Boolean) transitionD3.m()).booleanValue();
            composerS.G(-1541356035);
            if (zBooleanValue8) {
            }
            composerS.Q();
            stateC2 = TransitionKt.c(transitionD3, fValueOf6, Float.valueOf(f10), menuKt$DropdownMenuContent$alpha$4.invoke(transitionD3.k(), composerS, 0), twoWayConverterI6, "FloatAnimation", composerS, 0);
            composerS.Q();
            composerS.Q();
            Modifier.Companion companion3 = Modifier.Companion;
            composerS.G(1618982084);
            zK = composerS.k(stateC) | composerS.k(stateC2) | composerS.k(transformOriginState);
            objH = composerS.H();
            if (zK) {
                objH = new MenuKt$DropdownMenuContent$1$1(transformOriginState, stateC, stateC2);
                composerS.z(objH);
            } else {
                objH = new MenuKt$DropdownMenuContent$1$1(transformOriginState, stateC, stateC2);
                composerS.z(objH);
            }
            composerS.Q();
            Modifier modifierA3 = GraphicsLayerModifierKt.a(companion3, (l) objH);
            float f13 = MenuElevation;
            ComposableLambda composableLambdaB3 = ComposableLambdaKt.b(composerS, -242468534, true, new MenuKt$DropdownMenuContent$2(modifier3, content, i12));
            modifier4 = modifier3;
            CardKt.a(modifierA3, null, 0L, 0L, null, f13, composableLambdaB3, composerS, 1769472, 30);
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new MenuKt$DropdownMenuContent$3(expandedStates, transformOriginState, modifier4, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0235  */
    /* JADX WARN: Code duplicated, block: B:103:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:50:0x008a  */
    /* JADX WARN: Code duplicated, block: B:52:0x0090  */
    /* JADX WARN: Code duplicated, block: B:54:0x0098  */
    /* JADX WARN: Code duplicated, block: B:55:0x009b  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:67:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:79:0x00da  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:85:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:87:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:89:0x010c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0196  */
    /* JADX WARN: Code duplicated, block: B:95:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:96:0x01a6  */
    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable PaddingValues paddingValues, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z10;
        int i14;
        int i15;
        PaddingValues paddingValues2;
        int i16;
        int i17;
        MutableInteractionSource mutableInteractionSource2;
        int i18;
        int i19;
        int i20;
        Modifier modifier3;
        boolean z11;
        PaddingValues paddingValuesA;
        MutableInteractionSource mutableInteractionSource3;
        a<ComposeUiNode> aVarA;
        PaddingValues paddingValues3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource4;
        Object objH;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(87134531);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onClick) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i21 = i11 & 2;
        if (i21 == 0) {
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
                        paddingValues2 = paddingValues;
                        if (composerS.k(paddingValues2)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    i17 = i11 & 16;
                    if (i17 != 0) {
                        if ((57344 & i10) == 0) {
                            mutableInteractionSource2 = mutableInteractionSource;
                            if (composerS.k(mutableInteractionSource2)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((458752 & i10) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 131072;
                                } else {
                                    i19 = 65536;
                                }
                            }
                            i20 = i12;
                            if ((374491 & i20) == 74898 || !composerS.b()) {
                                if (i21 != 0) {
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
                                    paddingValuesA = MenuDefaults.INSTANCE.a();
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i17 != 0) {
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
                                PaddingValues paddingValues4 = paddingValuesA;
                                Modifier modifierH = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues4);
                                Alignment.Vertical verticalI = Alignment.Companion.i();
                                composerS.G(693286680);
                                MeasurePolicy measurePolicyA = RowKt.a(Arrangement.INSTANCE.e(), verticalI, composerS, 48);
                                composerS.G(-1323940314);
                                Density density = (Density) composerS.x(CompositionLocalsKt.e());
                                LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                                ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                                ComposeUiNode.Companion companion = ComposeUiNode.Companion;
                                aVarA = companion.a();
                                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifierH);
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
                                RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
                                composerS.G(1664959143);
                                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance, 6, i20)), composerS, 48);
                                composerS.Q();
                                composerS.Q();
                                composerS.Q();
                                composerS.d();
                                composerS.Q();
                                composerS.Q();
                                paddingValues3 = paddingValues4;
                                modifier2 = modifier3;
                                z12 = z11;
                                mutableInteractionSource4 = mutableInteractionSource3;
                            } else {
                                composerS.g();
                                z12 = z10;
                                paddingValues3 = paddingValues2;
                                mutableInteractionSource4 = mutableInteractionSource2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                        }
                        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i12 |= i19;
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues5 = paddingValuesA;
                            Modifier modifierH2 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues5);
                            Alignment.Vertical verticalI2 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA2 = RowKt.a(Arrangement.INSTANCE.e(), verticalI2, composerS, 48);
                            composerS.G(-1323940314);
                            Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion2 = ComposeUiNode.Companion;
                            aVarA = companion2.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierH2);
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
                            RowScopeInstance rowScopeInstance2 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance2, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues5;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues6 = paddingValuesA;
                            Modifier modifierH3 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues6);
                            Alignment.Vertical verticalI3 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA3 = RowKt.a(Arrangement.INSTANCE.e(), verticalI3, composerS, 48);
                            composerS.G(-1323940314);
                            Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion3 = ComposeUiNode.Companion;
                            aVarA = companion3.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierH3);
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
                            RowScopeInstance rowScopeInstance3 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance3, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues6;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i11 & 32) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues7 = paddingValuesA;
                            Modifier modifierH4 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues7);
                            Alignment.Vertical verticalI4 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA4 = RowKt.a(Arrangement.INSTANCE.e(), verticalI4, composerS, 48);
                            composerS.G(-1323940314);
                            Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion4 = ComposeUiNode.Companion;
                            aVarA = companion4.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierH4);
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
                            Updater.e(composerA4, measurePolicyA4, companion4.d());
                            Updater.e(composerA4, density4, companion4.b());
                            Updater.e(composerA4, layoutDirection4, companion4.c());
                            Updater.e(composerA4, viewConfiguration4, companion4.f());
                            composerS.o();
                            qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance4 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance4, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues7;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues8 = paddingValuesA;
                            Modifier modifierH5 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues8);
                            Alignment.Vertical verticalI5 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA5 = RowKt.a(Arrangement.INSTANCE.e(), verticalI5, composerS, 48);
                            composerS.G(-1323940314);
                            Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion5 = ComposeUiNode.Companion;
                            aVarA = companion5.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierH5);
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
                            Updater.e(composerA5, measurePolicyA5, companion5.d());
                            Updater.e(composerA5, density5, companion5.b());
                            Updater.e(composerA5, layoutDirection5, companion5.c());
                            Updater.e(composerA5, viewConfiguration5, companion5.f());
                            composerS.o();
                            qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance5 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance5, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues8;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues9 = paddingValuesA;
                        Modifier modifierH6 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues9);
                        Alignment.Vertical verticalI6 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA6 = RowKt.a(Arrangement.INSTANCE.e(), verticalI6, composerS, 48);
                        composerS.G(-1323940314);
                        Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration6 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion6 = ComposeUiNode.Companion;
                        aVarA = companion6.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC6 = LayoutKt.c(modifierH6);
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
                        Updater.e(composerA6, measurePolicyA6, companion6.d());
                        Updater.e(composerA6, density6, companion6.b());
                        Updater.e(composerA6, layoutDirection6, companion6.c());
                        Updater.e(composerA6, viewConfiguration6, companion6.f());
                        composerS.o();
                        qVarC6.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance6 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance6, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues9;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues10 = paddingValuesA;
                        Modifier modifierH7 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues10);
                        Alignment.Vertical verticalI7 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA7 = RowKt.a(Arrangement.INSTANCE.e(), verticalI7, composerS, 48);
                        composerS.G(-1323940314);
                        Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection7 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration7 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion7 = ComposeUiNode.Companion;
                        aVarA = companion7.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC7 = LayoutKt.c(modifierH7);
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
                        Updater.e(composerA7, measurePolicyA7, companion7.d());
                        Updater.e(composerA7, density7, companion7.b());
                        Updater.e(composerA7, layoutDirection7, companion7.c());
                        Updater.e(composerA7, viewConfiguration7, companion7.f());
                        composerS.o();
                        qVarC7.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance7 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance7, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues10;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= 3072;
                paddingValues2 = paddingValues;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues11 = paddingValuesA;
                            Modifier modifierH8 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11);
                            Alignment.Vertical verticalI8 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA8 = RowKt.a(Arrangement.INSTANCE.e(), verticalI8, composerS, 48);
                            composerS.G(-1323940314);
                            Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection8 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration8 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion8 = ComposeUiNode.Companion;
                            aVarA = companion8.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC8 = LayoutKt.c(modifierH8);
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
                            Updater.e(composerA8, measurePolicyA8, companion8.d());
                            Updater.e(composerA8, density8, companion8.b());
                            Updater.e(composerA8, layoutDirection8, companion8.c());
                            Updater.e(composerA8, viewConfiguration8, companion8.f());
                            composerS.o();
                            qVarC8.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance8 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance8, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues11;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues12 = paddingValuesA;
                            Modifier modifierH9 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues12);
                            Alignment.Vertical verticalI9 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA9 = RowKt.a(Arrangement.INSTANCE.e(), verticalI9, composerS, 48);
                            composerS.G(-1323940314);
                            Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection9 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration9 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion9 = ComposeUiNode.Companion;
                            aVarA = companion9.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC9 = LayoutKt.c(modifierH9);
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
                            Updater.e(composerA9, measurePolicyA9, companion9.d());
                            Updater.e(composerA9, density9, companion9.b());
                            Updater.e(composerA9, layoutDirection9, companion9.c());
                            Updater.e(composerA9, viewConfiguration9, companion9.f());
                            composerS.o();
                            qVarC9.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance9 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance9, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues12;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues13 = paddingValuesA;
                        Modifier modifierH10 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues13);
                        Alignment.Vertical verticalI10 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA10 = RowKt.a(Arrangement.INSTANCE.e(), verticalI10, composerS, 48);
                        composerS.G(-1323940314);
                        Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection10 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration10 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion10 = ComposeUiNode.Companion;
                        aVarA = companion10.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC10 = LayoutKt.c(modifierH10);
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
                        Updater.e(composerA10, measurePolicyA10, companion10.d());
                        Updater.e(composerA10, density10, companion10.b());
                        Updater.e(composerA10, layoutDirection10, companion10.c());
                        Updater.e(composerA10, viewConfiguration10, companion10.f());
                        composerS.o();
                        qVarC10.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance10 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance10, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues13;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues14 = paddingValuesA;
                        Modifier modifierH11 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues14);
                        Alignment.Vertical verticalI11 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA11 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11, composerS, 48);
                        composerS.G(-1323940314);
                        Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11 = ComposeUiNode.Companion;
                        aVarA = companion11.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11 = LayoutKt.c(modifierH11);
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
                        Updater.e(composerA11, measurePolicyA11, companion11.d());
                        Updater.e(composerA11, density11, companion11.b());
                        Updater.e(composerA11, layoutDirection11, companion11.c());
                        Updater.e(composerA11, viewConfiguration11, companion11.f());
                        composerS.o();
                        qVarC11.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance11 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues14;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues15 = paddingValuesA;
                        Modifier modifierH12 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues15);
                        Alignment.Vertical verticalI12 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA12 = RowKt.a(Arrangement.INSTANCE.e(), verticalI12, composerS, 48);
                        composerS.G(-1323940314);
                        Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection12 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration12 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion12 = ComposeUiNode.Companion;
                        aVarA = companion12.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC12 = LayoutKt.c(modifierH12);
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
                        Updater.e(composerA12, measurePolicyA12, companion12.d());
                        Updater.e(composerA12, density12, companion12.b());
                        Updater.e(composerA12, layoutDirection12, companion12.c());
                        Updater.e(composerA12, viewConfiguration12, companion12.f());
                        composerS.o();
                        qVarC12.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance12 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance12, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues15;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues16 = paddingValuesA;
                        Modifier modifierH13 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues16);
                        Alignment.Vertical verticalI13 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA13 = RowKt.a(Arrangement.INSTANCE.e(), verticalI13, composerS, 48);
                        composerS.G(-1323940314);
                        Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection13 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration13 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion13 = ComposeUiNode.Companion;
                        aVarA = companion13.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC13 = LayoutKt.c(modifierH13);
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
                        Updater.e(composerA13, measurePolicyA13, companion13.d());
                        Updater.e(composerA13, density13, companion13.b());
                        Updater.e(composerA13, layoutDirection13, companion13.c());
                        Updater.e(composerA13, viewConfiguration13, companion13.f());
                        composerS.o();
                        qVarC13.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance13 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance13, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues16;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues17 = paddingValuesA;
                    Modifier modifierH14 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues17);
                    Alignment.Vertical verticalI14 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA14 = RowKt.a(Arrangement.INSTANCE.e(), verticalI14, composerS, 48);
                    composerS.G(-1323940314);
                    Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection14 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration14 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion14 = ComposeUiNode.Companion;
                    aVarA = companion14.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC14 = LayoutKt.c(modifierH14);
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
                    Updater.e(composerA14, measurePolicyA14, companion14.d());
                    Updater.e(composerA14, density14, companion14.b());
                    Updater.e(composerA14, layoutDirection14, companion14.c());
                    Updater.e(composerA14, viewConfiguration14, companion14.f());
                    composerS.o();
                    qVarC14.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance14 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance14, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues17;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues18 = paddingValuesA;
                    Modifier modifierH15 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues18);
                    Alignment.Vertical verticalI15 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA15 = RowKt.a(Arrangement.INSTANCE.e(), verticalI15, composerS, 48);
                    composerS.G(-1323940314);
                    Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection15 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration15 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion15 = ComposeUiNode.Companion;
                    aVarA = companion15.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC15 = LayoutKt.c(modifierH15);
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
                    Updater.e(composerA15, measurePolicyA15, companion15.d());
                    Updater.e(composerA15, density15, companion15.b());
                    Updater.e(composerA15, layoutDirection15, companion15.c());
                    Updater.e(composerA15, viewConfiguration15, companion15.f());
                    composerS.o();
                    qVarC15.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance15 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance15, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues18;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 384;
            z10 = z6;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues19 = paddingValuesA;
                            Modifier modifierH16 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues19);
                            Alignment.Vertical verticalI16 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA16 = RowKt.a(Arrangement.INSTANCE.e(), verticalI16, composerS, 48);
                            composerS.G(-1323940314);
                            Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection16 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration16 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion16 = ComposeUiNode.Companion;
                            aVarA = companion16.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC16 = LayoutKt.c(modifierH16);
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
                            Updater.e(composerA16, measurePolicyA16, companion16.d());
                            Updater.e(composerA16, density16, companion16.b());
                            Updater.e(composerA16, layoutDirection16, companion16.c());
                            Updater.e(composerA16, viewConfiguration16, companion16.f());
                            composerS.o();
                            qVarC16.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance16 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance16, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues19;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues110 = paddingValuesA;
                            Modifier modifierH17 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues110);
                            Alignment.Vertical verticalI17 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA17 = RowKt.a(Arrangement.INSTANCE.e(), verticalI17, composerS, 48);
                            composerS.G(-1323940314);
                            Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection17 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration17 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion17 = ComposeUiNode.Companion;
                            aVarA = companion17.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC17 = LayoutKt.c(modifierH17);
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
                            Composer composerA17 = Updater.a(composerS);
                            Updater.e(composerA17, measurePolicyA17, companion17.d());
                            Updater.e(composerA17, density17, companion17.b());
                            Updater.e(composerA17, layoutDirection17, companion17.c());
                            Updater.e(composerA17, viewConfiguration17, companion17.f());
                            composerS.o();
                            qVarC17.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance17 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance17, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues110;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues111 = paddingValuesA;
                        Modifier modifierH18 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111);
                        Alignment.Vertical verticalI18 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA18 = RowKt.a(Arrangement.INSTANCE.e(), verticalI18, composerS, 48);
                        composerS.G(-1323940314);
                        Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection18 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration18 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion18 = ComposeUiNode.Companion;
                        aVarA = companion18.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC18 = LayoutKt.c(modifierH18);
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
                        Composer composerA18 = Updater.a(composerS);
                        Updater.e(composerA18, measurePolicyA18, companion18.d());
                        Updater.e(composerA18, density18, companion18.b());
                        Updater.e(composerA18, layoutDirection18, companion18.c());
                        Updater.e(composerA18, viewConfiguration18, companion18.f());
                        composerS.o();
                        qVarC18.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance18 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance18, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues111;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues112 = paddingValuesA;
                        Modifier modifierH19 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues112);
                        Alignment.Vertical verticalI19 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA19 = RowKt.a(Arrangement.INSTANCE.e(), verticalI19, composerS, 48);
                        composerS.G(-1323940314);
                        Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection19 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration19 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion19 = ComposeUiNode.Companion;
                        aVarA = companion19.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC19 = LayoutKt.c(modifierH19);
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
                        Composer composerA19 = Updater.a(composerS);
                        Updater.e(composerA19, measurePolicyA19, companion19.d());
                        Updater.e(composerA19, density19, companion19.b());
                        Updater.e(composerA19, layoutDirection19, companion19.c());
                        Updater.e(composerA19, viewConfiguration19, companion19.f());
                        composerS.o();
                        qVarC19.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance19 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance19, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues112;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues113 = paddingValuesA;
                        Modifier modifierH110 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues113);
                        Alignment.Vertical verticalI110 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA110 = RowKt.a(Arrangement.INSTANCE.e(), verticalI110, composerS, 48);
                        composerS.G(-1323940314);
                        Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion110 = ComposeUiNode.Companion;
                        aVarA = companion110.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC110 = LayoutKt.c(modifierH110);
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
                        Composer composerA110 = Updater.a(composerS);
                        Updater.e(composerA110, measurePolicyA110, companion110.d());
                        Updater.e(composerA110, density110, companion110.b());
                        Updater.e(composerA110, layoutDirection110, companion110.c());
                        Updater.e(composerA110, viewConfiguration110, companion110.f());
                        composerS.o();
                        qVarC110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance110 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance110, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues113;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues114 = paddingValuesA;
                        Modifier modifierH111 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues114);
                        Alignment.Vertical verticalI111 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA111 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111, composerS, 48);
                        composerS.G(-1323940314);
                        Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion111 = ComposeUiNode.Companion;
                        aVarA = companion111.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111 = LayoutKt.c(modifierH111);
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
                        Composer composerA111 = Updater.a(composerS);
                        Updater.e(composerA111, measurePolicyA111, companion111.d());
                        Updater.e(composerA111, density111, companion111.b());
                        Updater.e(composerA111, layoutDirection111, companion111.c());
                        Updater.e(composerA111, viewConfiguration111, companion111.f());
                        composerS.o();
                        qVarC111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance111 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues114;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues115 = paddingValuesA;
                    Modifier modifierH112 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues115);
                    Alignment.Vertical verticalI112 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA112 = RowKt.a(Arrangement.INSTANCE.e(), verticalI112, composerS, 48);
                    composerS.G(-1323940314);
                    Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion112 = ComposeUiNode.Companion;
                    aVarA = companion112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC112 = LayoutKt.c(modifierH112);
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
                    Composer composerA112 = Updater.a(composerS);
                    Updater.e(composerA112, measurePolicyA112, companion112.d());
                    Updater.e(composerA112, density112, companion112.b());
                    Updater.e(composerA112, layoutDirection112, companion112.c());
                    Updater.e(composerA112, viewConfiguration112, companion112.f());
                    composerS.o();
                    qVarC112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance112 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance112, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues115;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues116 = paddingValuesA;
                    Modifier modifierH113 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues116);
                    Alignment.Vertical verticalI113 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA113 = RowKt.a(Arrangement.INSTANCE.e(), verticalI113, composerS, 48);
                    composerS.G(-1323940314);
                    Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion113 = ComposeUiNode.Companion;
                    aVarA = companion113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC113 = LayoutKt.c(modifierH113);
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
                    Composer composerA113 = Updater.a(composerS);
                    Updater.e(composerA113, measurePolicyA113, companion113.d());
                    Updater.e(composerA113, density113, companion113.b());
                    Updater.e(composerA113, layoutDirection113, companion113.c());
                    Updater.e(composerA113, viewConfiguration113, companion113.f());
                    composerS.o();
                    qVarC113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance113 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance113, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues116;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues117 = paddingValuesA;
                        Modifier modifierH114 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues117);
                        Alignment.Vertical verticalI114 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA114 = RowKt.a(Arrangement.INSTANCE.e(), verticalI114, composerS, 48);
                        composerS.G(-1323940314);
                        Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion114 = ComposeUiNode.Companion;
                        aVarA = companion114.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC114 = LayoutKt.c(modifierH114);
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
                        Composer composerA114 = Updater.a(composerS);
                        Updater.e(composerA114, measurePolicyA114, companion114.d());
                        Updater.e(composerA114, density114, companion114.b());
                        Updater.e(composerA114, layoutDirection114, companion114.c());
                        Updater.e(composerA114, viewConfiguration114, companion114.f());
                        composerS.o();
                        qVarC114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance114 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance114, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues117;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues118 = paddingValuesA;
                        Modifier modifierH115 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues118);
                        Alignment.Vertical verticalI115 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA115 = RowKt.a(Arrangement.INSTANCE.e(), verticalI115, composerS, 48);
                        composerS.G(-1323940314);
                        Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion115 = ComposeUiNode.Companion;
                        aVarA = companion115.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC115 = LayoutKt.c(modifierH115);
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
                        Composer composerA115 = Updater.a(composerS);
                        Updater.e(composerA115, measurePolicyA115, companion115.d());
                        Updater.e(composerA115, density115, companion115.b());
                        Updater.e(composerA115, layoutDirection115, companion115.c());
                        Updater.e(composerA115, viewConfiguration115, companion115.f());
                        composerS.o();
                        qVarC115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance115 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance115, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues118;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues119 = paddingValuesA;
                    Modifier modifierH116 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues119);
                    Alignment.Vertical verticalI116 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA116 = RowKt.a(Arrangement.INSTANCE.e(), verticalI116, composerS, 48);
                    composerS.G(-1323940314);
                    Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion116 = ComposeUiNode.Companion;
                    aVarA = companion116.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC116 = LayoutKt.c(modifierH116);
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
                    Composer composerA116 = Updater.a(composerS);
                    Updater.e(composerA116, measurePolicyA116, companion116.d());
                    Updater.e(composerA116, density116, companion116.b());
                    Updater.e(composerA116, layoutDirection116, companion116.c());
                    Updater.e(composerA116, viewConfiguration116, companion116.f());
                    composerS.o();
                    qVarC116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance116 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance116, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues119;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues1110 = paddingValuesA;
                    Modifier modifierH117 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1110);
                    Alignment.Vertical verticalI117 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA117 = RowKt.a(Arrangement.INSTANCE.e(), verticalI117, composerS, 48);
                    composerS.G(-1323940314);
                    Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion117 = ComposeUiNode.Companion;
                    aVarA = companion117.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC117 = LayoutKt.c(modifierH117);
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
                    Composer composerA117 = Updater.a(composerS);
                    Updater.e(composerA117, measurePolicyA117, companion117.d());
                    Updater.e(composerA117, density117, companion117.b());
                    Updater.e(composerA117, layoutDirection117, companion117.c());
                    Updater.e(composerA117, viewConfiguration117, companion117.f());
                    composerS.o();
                    qVarC117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance117 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance117, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues1110;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues1111 = paddingValuesA;
                    Modifier modifierH118 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111);
                    Alignment.Vertical verticalI118 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA118 = RowKt.a(Arrangement.INSTANCE.e(), verticalI118, composerS, 48);
                    composerS.G(-1323940314);
                    Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion118 = ComposeUiNode.Companion;
                    aVarA = companion118.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC118 = LayoutKt.c(modifierH118);
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
                    Composer composerA118 = Updater.a(composerS);
                    Updater.e(composerA118, measurePolicyA118, companion118.d());
                    Updater.e(composerA118, density118, companion118.b());
                    Updater.e(composerA118, layoutDirection118, companion118.c());
                    Updater.e(composerA118, viewConfiguration118, companion118.f());
                    composerS.o();
                    qVarC118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance118 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance118, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues1111;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues1112 = paddingValuesA;
                    Modifier modifierH119 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1112);
                    Alignment.Vertical verticalI119 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA119 = RowKt.a(Arrangement.INSTANCE.e(), verticalI119, composerS, 48);
                    composerS.G(-1323940314);
                    Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion119 = ComposeUiNode.Companion;
                    aVarA = companion119.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC119 = LayoutKt.c(modifierH119);
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
                    Composer composerA119 = Updater.a(composerS);
                    Updater.e(composerA119, measurePolicyA119, companion119.d());
                    Updater.e(composerA119, density119, companion119.b());
                    Updater.e(composerA119, layoutDirection119, companion119.c());
                    Updater.e(composerA119, viewConfiguration119, companion119.f());
                    composerS.o();
                    qVarC119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance119 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance119, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues1112;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1113 = paddingValuesA;
                Modifier modifierH1110 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1113);
                Alignment.Vertical verticalI1110 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA1110 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1110, composerS, 48);
                composerS.G(-1323940314);
                Density density1110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1110 = ComposeUiNode.Companion;
                aVarA = companion1110.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1110 = LayoutKt.c(modifierH1110);
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
                Composer composerA1110 = Updater.a(composerS);
                Updater.e(composerA1110, measurePolicyA1110, companion1110.d());
                Updater.e(composerA1110, density1110, companion1110.b());
                Updater.e(composerA1110, layoutDirection1110, companion1110.c());
                Updater.e(composerA1110, viewConfiguration1110, companion1110.f());
                composerS.o();
                qVarC1110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance1110 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1110, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1113;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1114 = paddingValuesA;
                Modifier modifierH1111 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1114);
                Alignment.Vertical verticalI1111 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA1111 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1111, composerS, 48);
                composerS.G(-1323940314);
                Density density1111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111 = ComposeUiNode.Companion;
                aVarA = companion1111.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111 = LayoutKt.c(modifierH1111);
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
                Composer composerA1111 = Updater.a(composerS);
                Updater.e(composerA1111, measurePolicyA1111, companion1111.d());
                Updater.e(composerA1111, density1111, companion1111.b());
                Updater.e(composerA1111, layoutDirection1111, companion1111.c());
                Updater.e(composerA1111, viewConfiguration1111, companion1111.f());
                composerS.o();
                qVarC1111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance1111 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1111, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1114;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
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
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((57344 & i10) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((458752 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        i20 = i12;
                        if ((374491 & i20) == 74898) {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues1115 = paddingValuesA;
                            Modifier modifierH1112 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1115);
                            Alignment.Vertical verticalI1112 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA1112 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1112, composerS, 48);
                            composerS.G(-1323940314);
                            Density density1112 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion1112 = ComposeUiNode.Companion;
                            aVarA = companion1112.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1112 = LayoutKt.c(modifierH1112);
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
                            Composer composerA1112 = Updater.a(composerS);
                            Updater.e(composerA1112, measurePolicyA1112, companion1112.d());
                            Updater.e(composerA1112, density1112, companion1112.b());
                            Updater.e(composerA1112, layoutDirection1112, companion1112.c());
                            Updater.e(composerA1112, viewConfiguration1112, companion1112.f());
                            composerS.o();
                            qVarC1112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance1112 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1112, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues1115;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        } else {
                            if (i21 != 0) {
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
                                paddingValuesA = MenuDefaults.INSTANCE.a();
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i17 != 0) {
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
                            PaddingValues paddingValues1116 = paddingValuesA;
                            Modifier modifierH1113 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1116);
                            Alignment.Vertical verticalI1113 = Alignment.Companion.i();
                            composerS.G(693286680);
                            MeasurePolicy measurePolicyA1113 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1113, composerS, 48);
                            composerS.G(-1323940314);
                            Density density1113 = (Density) composerS.x(CompositionLocalsKt.e());
                            LayoutDirection layoutDirection1113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                            ViewConfiguration viewConfiguration1113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                            ComposeUiNode.Companion companion1113 = ComposeUiNode.Companion;
                            aVarA = companion1113.a();
                            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1113 = LayoutKt.c(modifierH1113);
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
                            Composer composerA1113 = Updater.a(composerS);
                            Updater.e(composerA1113, measurePolicyA1113, companion1113.d());
                            Updater.e(composerA1113, density1113, companion1113.b());
                            Updater.e(composerA1113, layoutDirection1113, companion1113.c());
                            Updater.e(composerA1113, viewConfiguration1113, companion1113.f());
                            composerS.o();
                            qVarC1113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                            composerS.G(2058660585);
                            composerS.G(-678309503);
                            RowScopeInstance rowScopeInstance1113 = RowScopeInstance.INSTANCE;
                            composerS.G(1664959143);
                            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1113, 6, i20)), composerS, 48);
                            composerS.Q();
                            composerS.Q();
                            composerS.Q();
                            composerS.d();
                            composerS.Q();
                            composerS.Q();
                            paddingValues3 = paddingValues1116;
                            modifier2 = modifier3;
                            z12 = z11;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues1117 = paddingValuesA;
                        Modifier modifierH1114 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1117);
                        Alignment.Vertical verticalI1114 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA1114 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1114, composerS, 48);
                        composerS.G(-1323940314);
                        Density density1114 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1114 = ComposeUiNode.Companion;
                        aVarA = companion1114.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1114 = LayoutKt.c(modifierH1114);
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
                        Composer composerA1114 = Updater.a(composerS);
                        Updater.e(composerA1114, measurePolicyA1114, companion1114.d());
                        Updater.e(composerA1114, density1114, companion1114.b());
                        Updater.e(composerA1114, layoutDirection1114, companion1114.c());
                        Updater.e(composerA1114, viewConfiguration1114, companion1114.f());
                        composerS.o();
                        qVarC1114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance1114 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1114, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues1117;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues1118 = paddingValuesA;
                        Modifier modifierH1115 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1118);
                        Alignment.Vertical verticalI1115 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA1115 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1115, composerS, 48);
                        composerS.G(-1323940314);
                        Density density1115 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1115 = ComposeUiNode.Companion;
                        aVarA = companion1115.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1115 = LayoutKt.c(modifierH1115);
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
                        Composer composerA1115 = Updater.a(composerS);
                        Updater.e(composerA1115, measurePolicyA1115, companion1115.d());
                        Updater.e(composerA1115, density1115, companion1115.b());
                        Updater.e(composerA1115, layoutDirection1115, companion1115.c());
                        Updater.e(composerA1115, viewConfiguration1115, companion1115.f());
                        composerS.o();
                        qVarC1115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance1115 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1115, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues1118;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues1119 = paddingValuesA;
                        Modifier modifierH1116 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1119);
                        Alignment.Vertical verticalI1116 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA1116 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1116, composerS, 48);
                        composerS.G(-1323940314);
                        Density density1116 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1116 = ComposeUiNode.Companion;
                        aVarA = companion1116.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1116 = LayoutKt.c(modifierH1116);
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
                        Composer composerA1116 = Updater.a(composerS);
                        Updater.e(composerA1116, measurePolicyA1116, companion1116.d());
                        Updater.e(composerA1116, density1116, companion1116.b());
                        Updater.e(composerA1116, layoutDirection1116, companion1116.c());
                        Updater.e(composerA1116, viewConfiguration1116, companion1116.f());
                        composerS.o();
                        qVarC1116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance1116 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1116, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues1119;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues11110 = paddingValuesA;
                        Modifier modifierH1117 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11110);
                        Alignment.Vertical verticalI1117 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA1117 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1117, composerS, 48);
                        composerS.G(-1323940314);
                        Density density1117 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection1117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration1117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion1117 = ComposeUiNode.Companion;
                        aVarA = companion1117.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1117 = LayoutKt.c(modifierH1117);
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
                        Composer composerA1117 = Updater.a(composerS);
                        Updater.e(composerA1117, measurePolicyA1117, companion1117.d());
                        Updater.e(composerA1117, density1117, companion1117.b());
                        Updater.e(composerA1117, layoutDirection1117, companion1117.c());
                        Updater.e(composerA1117, viewConfiguration1117, companion1117.f());
                        composerS.o();
                        qVarC1117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance1117 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1117, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues11110;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11111 = paddingValuesA;
                    Modifier modifierH1118 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11111);
                    Alignment.Vertical verticalI1118 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA1118 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1118, composerS, 48);
                    composerS.G(-1323940314);
                    Density density1118 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion1118 = ComposeUiNode.Companion;
                    aVarA = companion1118.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1118 = LayoutKt.c(modifierH1118);
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
                    Composer composerA1118 = Updater.a(composerS);
                    Updater.e(composerA1118, measurePolicyA1118, companion1118.d());
                    Updater.e(composerA1118, density1118, companion1118.b());
                    Updater.e(composerA1118, layoutDirection1118, companion1118.c());
                    Updater.e(composerA1118, viewConfiguration1118, companion1118.f());
                    composerS.o();
                    qVarC1118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance1118 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1118, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11111;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11112 = paddingValuesA;
                    Modifier modifierH1119 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11112);
                    Alignment.Vertical verticalI1119 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA1119 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1119, composerS, 48);
                    composerS.G(-1323940314);
                    Density density1119 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection1119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration1119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion1119 = ComposeUiNode.Companion;
                    aVarA = companion1119.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1119 = LayoutKt.c(modifierH1119);
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
                    Composer composerA1119 = Updater.a(composerS);
                    Updater.e(composerA1119, measurePolicyA1119, companion1119.d());
                    Updater.e(composerA1119, density1119, companion1119.b());
                    Updater.e(composerA1119, layoutDirection1119, companion1119.c());
                    Updater.e(composerA1119, viewConfiguration1119, companion1119.f());
                    composerS.o();
                    qVarC1119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance1119 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1119, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11112;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues11113 = paddingValuesA;
                        Modifier modifierH11110 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11113);
                        Alignment.Vertical verticalI11110 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA11110 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11110, composerS, 48);
                        composerS.G(-1323940314);
                        Density density11110 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11110 = ComposeUiNode.Companion;
                        aVarA = companion11110.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11110 = LayoutKt.c(modifierH11110);
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
                        Composer composerA11110 = Updater.a(composerS);
                        Updater.e(composerA11110, measurePolicyA11110, companion11110.d());
                        Updater.e(composerA11110, density11110, companion11110.b());
                        Updater.e(composerA11110, layoutDirection11110, companion11110.c());
                        Updater.e(composerA11110, viewConfiguration11110, companion11110.f());
                        composerS.o();
                        qVarC11110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance11110 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11110, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues11113;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues11114 = paddingValuesA;
                        Modifier modifierH11111 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11114);
                        Alignment.Vertical verticalI11111 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA11111 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11111, composerS, 48);
                        composerS.G(-1323940314);
                        Density density11111 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11111 = ComposeUiNode.Companion;
                        aVarA = companion11111.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11111 = LayoutKt.c(modifierH11111);
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
                        Composer composerA11111 = Updater.a(composerS);
                        Updater.e(composerA11111, measurePolicyA11111, companion11111.d());
                        Updater.e(composerA11111, density11111, companion11111.b());
                        Updater.e(composerA11111, layoutDirection11111, companion11111.c());
                        Updater.e(composerA11111, viewConfiguration11111, companion11111.f());
                        composerS.o();
                        qVarC11111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance11111 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11111, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues11114;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11115 = paddingValuesA;
                    Modifier modifierH11112 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11115);
                    Alignment.Vertical verticalI11112 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA11112 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11112, composerS, 48);
                    composerS.G(-1323940314);
                    Density density11112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11112 = ComposeUiNode.Companion;
                    aVarA = companion11112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11112 = LayoutKt.c(modifierH11112);
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
                    Composer composerA11112 = Updater.a(composerS);
                    Updater.e(composerA11112, measurePolicyA11112, companion11112.d());
                    Updater.e(composerA11112, density11112, companion11112.b());
                    Updater.e(composerA11112, layoutDirection11112, companion11112.c());
                    Updater.e(composerA11112, viewConfiguration11112, companion11112.f());
                    composerS.o();
                    qVarC11112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance11112 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11112, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11115;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11116 = paddingValuesA;
                    Modifier modifierH11113 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11116);
                    Alignment.Vertical verticalI11113 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA11113 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11113, composerS, 48);
                    composerS.G(-1323940314);
                    Density density11113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11113 = ComposeUiNode.Companion;
                    aVarA = companion11113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11113 = LayoutKt.c(modifierH11113);
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
                    Composer composerA11113 = Updater.a(composerS);
                    Updater.e(composerA11113, measurePolicyA11113, companion11113.d());
                    Updater.e(composerA11113, density11113, companion11113.b());
                    Updater.e(composerA11113, layoutDirection11113, companion11113.c());
                    Updater.e(composerA11113, viewConfiguration11113, companion11113.f());
                    composerS.o();
                    qVarC11113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance11113 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11113, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11116;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11117 = paddingValuesA;
                    Modifier modifierH11114 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11117);
                    Alignment.Vertical verticalI11114 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA11114 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11114, composerS, 48);
                    composerS.G(-1323940314);
                    Density density11114 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11114 = ComposeUiNode.Companion;
                    aVarA = companion11114.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11114 = LayoutKt.c(modifierH11114);
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
                    Composer composerA11114 = Updater.a(composerS);
                    Updater.e(composerA11114, measurePolicyA11114, companion11114.d());
                    Updater.e(composerA11114, density11114, companion11114.b());
                    Updater.e(composerA11114, layoutDirection11114, companion11114.c());
                    Updater.e(composerA11114, viewConfiguration11114, companion11114.f());
                    composerS.o();
                    qVarC11114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance11114 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11114, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11117;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues11118 = paddingValuesA;
                    Modifier modifierH11115 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11118);
                    Alignment.Vertical verticalI11115 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA11115 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11115, composerS, 48);
                    composerS.G(-1323940314);
                    Density density11115 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection11115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration11115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion11115 = ComposeUiNode.Companion;
                    aVarA = companion11115.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11115 = LayoutKt.c(modifierH11115);
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
                    Composer composerA11115 = Updater.a(composerS);
                    Updater.e(composerA11115, measurePolicyA11115, companion11115.d());
                    Updater.e(composerA11115, density11115, companion11115.b());
                    Updater.e(composerA11115, layoutDirection11115, companion11115.c());
                    Updater.e(composerA11115, viewConfiguration11115, companion11115.f());
                    composerS.o();
                    qVarC11115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance11115 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11115, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues11118;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues11119 = paddingValuesA;
                Modifier modifierH11116 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues11119);
                Alignment.Vertical verticalI11116 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA11116 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11116, composerS, 48);
                composerS.G(-1323940314);
                Density density11116 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion11116 = ComposeUiNode.Companion;
                aVarA = companion11116.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11116 = LayoutKt.c(modifierH11116);
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
                Composer composerA11116 = Updater.a(composerS);
                Updater.e(composerA11116, measurePolicyA11116, companion11116.d());
                Updater.e(composerA11116, density11116, companion11116.b());
                Updater.e(composerA11116, layoutDirection11116, companion11116.c());
                Updater.e(composerA11116, viewConfiguration11116, companion11116.f());
                composerS.o();
                qVarC11116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance11116 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11116, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues11119;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues111110 = paddingValuesA;
                Modifier modifierH11117 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111110);
                Alignment.Vertical verticalI11117 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA11117 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11117, composerS, 48);
                composerS.G(-1323940314);
                Density density11117 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection11117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration11117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion11117 = ComposeUiNode.Companion;
                aVarA = companion11117.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11117 = LayoutKt.c(modifierH11117);
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
                Composer composerA11117 = Updater.a(composerS);
                Updater.e(composerA11117, measurePolicyA11117, companion11117.d());
                Updater.e(composerA11117, density11117, companion11117.b());
                Updater.e(composerA11117, layoutDirection11117, companion11117.c());
                Updater.e(composerA11117, viewConfiguration11117, companion11117.f());
                composerS.o();
                qVarC11117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance11117 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11117, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues111110;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 384;
        z10 = z6;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                paddingValues2 = paddingValues;
                if (composerS.k(paddingValues2)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((57344 & i10) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    i20 = i12;
                    if ((374491 & i20) == 74898) {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues111111 = paddingValuesA;
                        Modifier modifierH11118 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111111);
                        Alignment.Vertical verticalI11118 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA11118 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11118, composerS, 48);
                        composerS.G(-1323940314);
                        Density density11118 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11118 = ComposeUiNode.Companion;
                        aVarA = companion11118.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11118 = LayoutKt.c(modifierH11118);
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
                        Composer composerA11118 = Updater.a(composerS);
                        Updater.e(composerA11118, measurePolicyA11118, companion11118.d());
                        Updater.e(composerA11118, density11118, companion11118.b());
                        Updater.e(composerA11118, layoutDirection11118, companion11118.c());
                        Updater.e(composerA11118, viewConfiguration11118, companion11118.f());
                        composerS.o();
                        qVarC11118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance11118 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11118, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues111111;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    } else {
                        if (i21 != 0) {
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
                            paddingValuesA = MenuDefaults.INSTANCE.a();
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i17 != 0) {
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
                        PaddingValues paddingValues111112 = paddingValuesA;
                        Modifier modifierH11119 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111112);
                        Alignment.Vertical verticalI11119 = Alignment.Companion.i();
                        composerS.G(693286680);
                        MeasurePolicy measurePolicyA11119 = RowKt.a(Arrangement.INSTANCE.e(), verticalI11119, composerS, 48);
                        composerS.G(-1323940314);
                        Density density11119 = (Density) composerS.x(CompositionLocalsKt.e());
                        LayoutDirection layoutDirection11119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                        ViewConfiguration viewConfiguration11119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                        ComposeUiNode.Companion companion11119 = ComposeUiNode.Companion;
                        aVarA = companion11119.a();
                        q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC11119 = LayoutKt.c(modifierH11119);
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
                        Composer composerA11119 = Updater.a(composerS);
                        Updater.e(composerA11119, measurePolicyA11119, companion11119.d());
                        Updater.e(composerA11119, density11119, companion11119.b());
                        Updater.e(composerA11119, layoutDirection11119, companion11119.c());
                        Updater.e(composerA11119, viewConfiguration11119, companion11119.f());
                        composerS.o();
                        qVarC11119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                        composerS.G(2058660585);
                        composerS.G(-678309503);
                        RowScopeInstance rowScopeInstance11119 = RowScopeInstance.INSTANCE;
                        composerS.G(1664959143);
                        TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance11119, 6, i20)), composerS, 48);
                        composerS.Q();
                        composerS.Q();
                        composerS.Q();
                        composerS.d();
                        composerS.Q();
                        composerS.Q();
                        paddingValues3 = paddingValues111112;
                        modifier2 = modifier3;
                        z12 = z11;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues111113 = paddingValuesA;
                    Modifier modifierH111110 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111113);
                    Alignment.Vertical verticalI111110 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111110 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111110, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111110 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111110 = ComposeUiNode.Companion;
                    aVarA = companion111110.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111110 = LayoutKt.c(modifierH111110);
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
                    Composer composerA111110 = Updater.a(composerS);
                    Updater.e(composerA111110, measurePolicyA111110, companion111110.d());
                    Updater.e(composerA111110, density111110, companion111110.b());
                    Updater.e(composerA111110, layoutDirection111110, companion111110.c());
                    Updater.e(composerA111110, viewConfiguration111110, companion111110.f());
                    composerS.o();
                    qVarC111110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111110 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111110, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues111113;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues111114 = paddingValuesA;
                    Modifier modifierH111111 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111114);
                    Alignment.Vertical verticalI111111 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111111 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111111, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111111 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111111 = ComposeUiNode.Companion;
                    aVarA = companion111111.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111111 = LayoutKt.c(modifierH111111);
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
                    Composer composerA111111 = Updater.a(composerS);
                    Updater.e(composerA111111, measurePolicyA111111, companion111111.d());
                    Updater.e(composerA111111, density111111, companion111111.b());
                    Updater.e(composerA111111, layoutDirection111111, companion111111.c());
                    Updater.e(composerA111111, viewConfiguration111111, companion111111.f());
                    composerS.o();
                    qVarC111111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111111 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111111, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues111114;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues111115 = paddingValuesA;
                    Modifier modifierH111112 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111115);
                    Alignment.Vertical verticalI111112 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111112 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111112, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111112 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111112 = ComposeUiNode.Companion;
                    aVarA = companion111112.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111112 = LayoutKt.c(modifierH111112);
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
                    Composer composerA111112 = Updater.a(composerS);
                    Updater.e(composerA111112, measurePolicyA111112, companion111112.d());
                    Updater.e(composerA111112, density111112, companion111112.b());
                    Updater.e(composerA111112, layoutDirection111112, companion111112.c());
                    Updater.e(composerA111112, viewConfiguration111112, companion111112.f());
                    composerS.o();
                    qVarC111112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111112 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111112, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues111115;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues111116 = paddingValuesA;
                    Modifier modifierH111113 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111116);
                    Alignment.Vertical verticalI111113 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111113 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111113, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111113 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111113 = ComposeUiNode.Companion;
                    aVarA = companion111113.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111113 = LayoutKt.c(modifierH111113);
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
                    Composer composerA111113 = Updater.a(composerS);
                    Updater.e(composerA111113, measurePolicyA111113, companion111113.d());
                    Updater.e(composerA111113, density111113, companion111113.b());
                    Updater.e(composerA111113, layoutDirection111113, companion111113.c());
                    Updater.e(composerA111113, viewConfiguration111113, companion111113.f());
                    composerS.o();
                    qVarC111113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111113 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111113, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues111116;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues111117 = paddingValuesA;
                Modifier modifierH111114 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111117);
                Alignment.Vertical verticalI111114 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA111114 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111114, composerS, 48);
                composerS.G(-1323940314);
                Density density111114 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111114 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111114 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111114 = ComposeUiNode.Companion;
                aVarA = companion111114.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111114 = LayoutKt.c(modifierH111114);
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
                Composer composerA111114 = Updater.a(composerS);
                Updater.e(composerA111114, measurePolicyA111114, companion111114.d());
                Updater.e(composerA111114, density111114, companion111114.b());
                Updater.e(composerA111114, layoutDirection111114, companion111114.c());
                Updater.e(composerA111114, viewConfiguration111114, companion111114.f());
                composerS.o();
                qVarC111114.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance111114 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111114, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues111117;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues111118 = paddingValuesA;
                Modifier modifierH111115 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111118);
                Alignment.Vertical verticalI111115 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA111115 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111115, composerS, 48);
                composerS.G(-1323940314);
                Density density111115 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111115 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111115 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111115 = ComposeUiNode.Companion;
                aVarA = companion111115.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111115 = LayoutKt.c(modifierH111115);
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
                Composer composerA111115 = Updater.a(composerS);
                Updater.e(composerA111115, measurePolicyA111115, companion111115.d());
                Updater.e(composerA111115, density111115, companion111115.b());
                Updater.e(composerA111115, layoutDirection111115, companion111115.c());
                Updater.e(composerA111115, viewConfiguration111115, companion111115.f());
                composerS.o();
                qVarC111115.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance111115 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111115, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues111118;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= 3072;
        paddingValues2 = paddingValues;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((57344 & i10) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                i20 = i12;
                if ((374491 & i20) == 74898) {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues111119 = paddingValuesA;
                    Modifier modifierH111116 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues111119);
                    Alignment.Vertical verticalI111116 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111116 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111116, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111116 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111116 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111116 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111116 = ComposeUiNode.Companion;
                    aVarA = companion111116.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111116 = LayoutKt.c(modifierH111116);
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
                    Composer composerA111116 = Updater.a(composerS);
                    Updater.e(composerA111116, measurePolicyA111116, companion111116.d());
                    Updater.e(composerA111116, density111116, companion111116.b());
                    Updater.e(composerA111116, layoutDirection111116, companion111116.c());
                    Updater.e(composerA111116, viewConfiguration111116, companion111116.f());
                    composerS.o();
                    qVarC111116.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111116 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111116, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues111119;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                } else {
                    if (i21 != 0) {
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
                        paddingValuesA = MenuDefaults.INSTANCE.a();
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i17 != 0) {
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
                    PaddingValues paddingValues1111110 = paddingValuesA;
                    Modifier modifierH111117 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111110);
                    Alignment.Vertical verticalI111117 = Alignment.Companion.i();
                    composerS.G(693286680);
                    MeasurePolicy measurePolicyA111117 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111117, composerS, 48);
                    composerS.G(-1323940314);
                    Density density111117 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection111117 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration111117 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    ComposeUiNode.Companion companion111117 = ComposeUiNode.Companion;
                    aVarA = companion111117.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111117 = LayoutKt.c(modifierH111117);
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
                    Composer composerA111117 = Updater.a(composerS);
                    Updater.e(composerA111117, measurePolicyA111117, companion111117.d());
                    Updater.e(composerA111117, density111117, companion111117.b());
                    Updater.e(composerA111117, layoutDirection111117, companion111117.c());
                    Updater.e(composerA111117, viewConfiguration111117, companion111117.f());
                    composerS.o();
                    qVarC111117.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-678309503);
                    RowScopeInstance rowScopeInstance111117 = RowScopeInstance.INSTANCE;
                    composerS.G(1664959143);
                    TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111117, 6, i20)), composerS, 48);
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                    paddingValues3 = paddingValues1111110;
                    modifier2 = modifier3;
                    z12 = z11;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1111111 = paddingValuesA;
                Modifier modifierH111118 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111111);
                Alignment.Vertical verticalI111118 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA111118 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111118, composerS, 48);
                composerS.G(-1323940314);
                Density density111118 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111118 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111118 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111118 = ComposeUiNode.Companion;
                aVarA = companion111118.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111118 = LayoutKt.c(modifierH111118);
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
                Composer composerA111118 = Updater.a(composerS);
                Updater.e(composerA111118, measurePolicyA111118, companion111118.d());
                Updater.e(composerA111118, density111118, companion111118.b());
                Updater.e(composerA111118, layoutDirection111118, companion111118.c());
                Updater.e(composerA111118, viewConfiguration111118, companion111118.f());
                composerS.o();
                qVarC111118.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance111118 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111118, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1111111;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1111112 = paddingValuesA;
                Modifier modifierH111119 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111112);
                Alignment.Vertical verticalI111119 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA111119 = RowKt.a(Arrangement.INSTANCE.e(), verticalI111119, composerS, 48);
                composerS.G(-1323940314);
                Density density111119 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection111119 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration111119 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion111119 = ComposeUiNode.Companion;
                aVarA = companion111119.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC111119 = LayoutKt.c(modifierH111119);
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
                Composer composerA111119 = Updater.a(composerS);
                Updater.e(composerA111119, measurePolicyA111119, companion111119.d());
                Updater.e(composerA111119, density111119, companion111119.b());
                Updater.e(composerA111119, layoutDirection111119, companion111119.c());
                Updater.e(composerA111119, viewConfiguration111119, companion111119.f());
                composerS.o();
                qVarC111119.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance111119 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance111119, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1111112;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i11 & 32) != 0) {
            if ((458752 & i10) == 0) {
                if (composerS.k(content)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
            }
            i20 = i12;
            if ((374491 & i20) == 74898) {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1111113 = paddingValuesA;
                Modifier modifierH1111110 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111113);
                Alignment.Vertical verticalI1111110 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA1111110 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1111110, composerS, 48);
                composerS.G(-1323940314);
                Density density1111110 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111110 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111110 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111110 = ComposeUiNode.Companion;
                aVarA = companion1111110.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111110 = LayoutKt.c(modifierH1111110);
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
                Composer composerA1111110 = Updater.a(composerS);
                Updater.e(composerA1111110, measurePolicyA1111110, companion1111110.d());
                Updater.e(composerA1111110, density1111110, companion1111110.b());
                Updater.e(composerA1111110, layoutDirection1111110, companion1111110.c());
                Updater.e(composerA1111110, viewConfiguration1111110, companion1111110.f());
                composerS.o();
                qVarC1111110.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance1111110 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1111110, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1111113;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            } else {
                if (i21 != 0) {
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
                    paddingValuesA = MenuDefaults.INSTANCE.a();
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i17 != 0) {
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
                PaddingValues paddingValues1111114 = paddingValuesA;
                Modifier modifierH1111111 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111114);
                Alignment.Vertical verticalI1111111 = Alignment.Companion.i();
                composerS.G(693286680);
                MeasurePolicy measurePolicyA1111111 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1111111, composerS, 48);
                composerS.G(-1323940314);
                Density density1111111 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection1111111 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration1111111 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                ComposeUiNode.Companion companion1111111 = ComposeUiNode.Companion;
                aVarA = companion1111111.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111111 = LayoutKt.c(modifierH1111111);
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
                Composer composerA1111111 = Updater.a(composerS);
                Updater.e(composerA1111111, measurePolicyA1111111, companion1111111.d());
                Updater.e(composerA1111111, density1111111, companion1111111.b());
                Updater.e(composerA1111111, layoutDirection1111111, companion1111111.c());
                Updater.e(composerA1111111, viewConfiguration1111111, companion1111111.f());
                composerS.o();
                qVarC1111111.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-678309503);
                RowScopeInstance rowScopeInstance1111111 = RowScopeInstance.INSTANCE;
                composerS.G(1664959143);
                TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1111111, 6, i20)), composerS, 48);
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                paddingValues3 = paddingValues1111114;
                modifier2 = modifier3;
                z12 = z11;
                mutableInteractionSource4 = mutableInteractionSource3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
        }
        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i19;
        i20 = i12;
        if ((374491 & i20) == 74898) {
            if (i21 != 0) {
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
                paddingValuesA = MenuDefaults.INSTANCE.a();
            } else {
                paddingValuesA = paddingValues2;
            }
            if (i17 != 0) {
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
            PaddingValues paddingValues1111115 = paddingValuesA;
            Modifier modifierH1111112 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111115);
            Alignment.Vertical verticalI1111112 = Alignment.Companion.i();
            composerS.G(693286680);
            MeasurePolicy measurePolicyA1111112 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1111112, composerS, 48);
            composerS.G(-1323940314);
            Density density1111112 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111112 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111112 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111112 = ComposeUiNode.Companion;
            aVarA = companion1111112.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111112 = LayoutKt.c(modifierH1111112);
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
            Composer composerA1111112 = Updater.a(composerS);
            Updater.e(composerA1111112, measurePolicyA1111112, companion1111112.d());
            Updater.e(composerA1111112, density1111112, companion1111112.b());
            Updater.e(composerA1111112, layoutDirection1111112, companion1111112.c());
            Updater.e(composerA1111112, viewConfiguration1111112, companion1111112.f());
            composerS.o();
            qVarC1111112.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            RowScopeInstance rowScopeInstance1111112 = RowScopeInstance.INSTANCE;
            composerS.G(1664959143);
            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1111112, 6, i20)), composerS, 48);
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            paddingValues3 = paddingValues1111115;
            modifier2 = modifier3;
            z12 = z11;
            mutableInteractionSource4 = mutableInteractionSource3;
        } else {
            if (i21 != 0) {
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
                paddingValuesA = MenuDefaults.INSTANCE.a();
            } else {
                paddingValuesA = paddingValues2;
            }
            if (i17 != 0) {
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
            PaddingValues paddingValues1111116 = paddingValuesA;
            Modifier modifierH1111113 = PaddingKt.h(SizeKt.C(SizeKt.n(ClickableKt.c(modifier3, mutableInteractionSource3, RippleKt.e(true, 0.0f, 0L, composerS, 6, 6), z11, null, null, onClick, 24, null), 0.0f, 1, null), DropdownMenuItemDefaultMinWidth, DropdownMenuItemDefaultMinHeight, DropdownMenuItemDefaultMaxWidth, 0.0f, 8, null), paddingValues1111116);
            Alignment.Vertical verticalI1111113 = Alignment.Companion.i();
            composerS.G(693286680);
            MeasurePolicy measurePolicyA1111113 = RowKt.a(Arrangement.INSTANCE.e(), verticalI1111113, composerS, 48);
            composerS.G(-1323940314);
            Density density1111113 = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection1111113 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration1111113 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion1111113 = ComposeUiNode.Companion;
            aVarA = companion1111113.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC1111113 = LayoutKt.c(modifierH1111113);
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
            Composer composerA1111113 = Updater.a(composerS);
            Updater.e(composerA1111113, measurePolicyA1111113, companion1111113.d());
            Updater.e(composerA1111113, density1111113, companion1111113.b());
            Updater.e(composerA1111113, layoutDirection1111113, companion1111113.c());
            Updater.e(composerA1111113, viewConfiguration1111113, companion1111113.f());
            composerS.o();
            qVarC1111113.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
            composerS.G(2058660585);
            composerS.G(-678309503);
            RowScopeInstance rowScopeInstance1111113 = RowScopeInstance.INSTANCE;
            composerS.G(1664959143);
            TextKt.a(MaterialTheme.INSTANCE.c(composerS, 6).g(), ComposableLambdaKt.b(composerS, 1190489496, true, new MenuKt$DropdownMenuItemContent$2$1(z11, content, rowScopeInstance1111113, 6, i20)), composerS, 48);
            composerS.Q();
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
            composerS.Q();
            paddingValues3 = paddingValues1111116;
            modifier2 = modifier3;
            z12 = z11;
            mutableInteractionSource4 = mutableInteractionSource3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new MenuKt$DropdownMenuItemContent$3(onClick, modifier2, z12, paddingValues3, mutableInteractionSource4, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x005d  */
    /* JADX WARN: Code duplicated, block: B:4:0x0017  */
    public static final long h(@NotNull IntRect parentBounds, @NotNull IntRect menuBounds) {
        float fMax;
        t.j(parentBounds, "parentBounds");
        t.j(menuBounds, "menuBounds");
        float fMax2 = 1.0f;
        if (menuBounds.c() >= parentBounds.d()) {
            fMax = 0.0f;
        } else if (menuBounds.d() <= parentBounds.c()) {
            fMax = 1.0f;
        } else if (menuBounds.f() == 0) {
            fMax = 0.0f;
        } else {
            fMax = (((Math.max(parentBounds.c(), menuBounds.c()) + Math.min(parentBounds.d(), menuBounds.d())) / 2) - menuBounds.c()) / menuBounds.f();
        }
        if (menuBounds.e() >= parentBounds.a()) {
            fMax2 = 0.0f;
        } else if (menuBounds.a() > parentBounds.e()) {
            if (menuBounds.b() == 0) {
                fMax2 = 0.0f;
            } else {
                fMax2 = (((Math.max(parentBounds.e(), menuBounds.e()) + Math.min(parentBounds.a(), menuBounds.a())) / 2) - menuBounds.e()) / menuBounds.b();
            }
        }
        return TransformOriginKt.a(fMax, fMax2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float b(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float c(State<Float> state) {
        return state.getValue().floatValue();
    }
}
