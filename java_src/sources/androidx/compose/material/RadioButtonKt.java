package androidx.compose.material;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.selection.SelectableKt;
import androidx.compose.material.ripple.RippleKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Dp;
import e8.a;
import e8.l;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class RadioButtonKt {
    private static final int RadioAnimationDuration = 100;
    private static final float RadioButtonDotSize;
    private static final float RadioButtonPadding;
    private static final float RadioButtonRippleRadius = Dp.f(24);
    private static final float RadioButtonSize;
    private static final float RadioRadius;
    private static final float RadioStrokeWidth;

    static {
        float f = 2;
        RadioButtonPadding = Dp.f(f);
        float f6 = Dp.f(20);
        RadioButtonSize = f6;
        RadioRadius = Dp.f(f6 / f);
        RadioButtonDotSize = Dp.f(12);
        RadioStrokeWidth = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x013d  */
    /* JADX WARN: Code duplicated, block: B:101:0x0146  */
    /* JADX WARN: Code duplicated, block: B:104:0x0177  */
    /* JADX WARN: Code duplicated, block: B:105:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:108:0x01c3  */
    /* JADX WARN: Code duplicated, block: B:111:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:113:0x0206  */
    /* JADX WARN: Code duplicated, block: B:118:0x0224  */
    /* JADX WARN: Code duplicated, block: B:120:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x005d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0062  */
    /* JADX WARN: Code duplicated, block: B:40:0x0066  */
    /* JADX WARN: Code duplicated, block: B:42:0x006e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0071  */
    /* JADX WARN: Code duplicated, block: B:47:0x0078  */
    /* JADX WARN: Code duplicated, block: B:49:0x007d  */
    /* JADX WARN: Code duplicated, block: B:51:0x0083  */
    /* JADX WARN: Code duplicated, block: B:53:0x008b  */
    /* JADX WARN: Code duplicated, block: B:54:0x008e  */
    /* JADX WARN: Code duplicated, block: B:58:0x0096  */
    /* JADX WARN: Code duplicated, block: B:60:0x009a  */
    /* JADX WARN: Code duplicated, block: B:62:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:63:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:69:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:73:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e6 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:83:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:84:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:86:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:89:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:91:0x0105  */
    /* JADX WARN: Code duplicated, block: B:93:0x0112  */
    /* JADX WARN: Code duplicated, block: B:96:0x0117  */
    /* JADX WARN: Code duplicated, block: B:97:0x0132  */
    /* JADX WARN: Type inference failed for: r12v10 */
    /* JADX WARN: Type inference failed for: r12v11, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r12v13 */
    @Composable
    @ComposableInferredTarget
    public static final void a(boolean z6, @Nullable a<l0> aVar, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable RadioButtonColors radioButtonColors, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        boolean z11;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        RadioButtonColors radioButtonColorsA;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource3;
        int i17;
        Modifier modifier4;
        boolean z13;
        MutableInteractionSource mutableInteractionSource4;
        Object objH;
        float f;
        State<Dp> stateC;
        State<Color> stateA;
        ?? r12;
        boolean z14;
        Modifier modifierA;
        Modifier modifierB;
        boolean zK;
        Object objH2;
        MutableInteractionSource mutableInteractionSource5;
        boolean z15;
        RadioButtonColors radioButtonColors2;
        ScopeUpdateScope scopeUpdateScopeU;
        Composer composerS = composer.s(1314435585);
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
            i12 |= composerS.k(aVar) ? 32 : 16;
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
                    if ((458752 & i10) == 0) {
                        if ((i11 & 32) == 0) {
                            radioButtonColorsA = radioButtonColors;
                            int i19 = composerS.k(radioButtonColorsA) ? 131072 : 65536;
                            i12 |= i19;
                        } else {
                            radioButtonColorsA = radioButtonColors;
                        }
                        i12 |= i19;
                    } else {
                        radioButtonColorsA = radioButtonColors;
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
                                i17 = i12 & (-458753);
                                modifier4 = modifier3;
                                z13 = z12;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                            } else {
                                i17 = i12;
                                modifier4 = modifier3;
                                z13 = z12;
                                mutableInteractionSource4 = mutableInteractionSource3;
                            }
                        } else {
                            composerS.g();
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                            }
                            i17 = i12;
                            modifier4 = modifier2;
                            z13 = z11;
                            mutableInteractionSource4 = mutableInteractionSource2;
                        }
                        composerS.A();
                        if (z6) {
                            f = Dp.f(RadioButtonDotSize / 2);
                        } else {
                            f = Dp.f(0);
                        }
                        stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                        int i20 = i17 >> 9;
                        stateA = radioButtonColorsA.a(z13, z6, composerS, (i20 & 896) | (i20 & 14) | ((i17 << 3) & 112));
                        composerS.G(1941632354);
                        if (aVar != null) {
                            z14 = z13;
                            r12 = 0;
                            modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                        } else {
                            r12 = 0;
                            z14 = z13;
                            modifierA = Modifier.Companion;
                        }
                        composerS.Q();
                        modifierB = Modifier.Companion;
                        if (aVar != null) {
                            modifierB = TouchTargetKt.b(modifierB);
                        }
                        Modifier modifier5 = modifier4;
                        Modifier modifierT = SizeKt.t(PaddingKt.i(SizeKt.H(modifier5.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                        composerS.G(511388516);
                        zK = composerS.k(stateA) | composerS.k(stateC);
                        objH2 = composerS.H();
                        if (zK || objH2 == Composer.Companion.a()) {
                            objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        CanvasKt.a(modifierT, (l) objH2, composerS, r12);
                        modifier2 = modifier5;
                        mutableInteractionSource5 = mutableInteractionSource4;
                        z15 = z14;
                        radioButtonColors2 = radioButtonColorsA;
                    } else {
                        composerS.g();
                        z15 = z11;
                        mutableInteractionSource5 = mutableInteractionSource2;
                        radioButtonColors2 = radioButtonColorsA;
                        composerS = composerS;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        radioButtonColorsA = radioButtonColors;
                        if (composerS.k(radioButtonColorsA)) {
                        }
                        i12 |= i19;
                    } else {
                        radioButtonColorsA = radioButtonColors;
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i21 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i21 & 896) | (i21 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier6 = modifier4;
                    Modifier modifierT2 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier6.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT2, (l) objH2, composerS, r12);
                    modifier2 = modifier6;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i22 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i22 & 896) | (i22 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier7 = modifier4;
                    Modifier modifierT3 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier7.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT3, (l) objH2, composerS, r12);
                    modifier2 = modifier7;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
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
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        radioButtonColorsA = radioButtonColors;
                        if (composerS.k(radioButtonColorsA)) {
                        }
                        i12 |= i19;
                    } else {
                        radioButtonColorsA = radioButtonColors;
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i23 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i23 & 896) | (i23 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier8 = modifier4;
                    Modifier modifierT4 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier8.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT4, (l) objH2, composerS, r12);
                    modifier2 = modifier8;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i24 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i24 & 896) | (i24 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier9 = modifier4;
                    Modifier modifierT5 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier9.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT5, (l) objH2, composerS, r12);
                    modifier2 = modifier9;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    radioButtonColorsA = radioButtonColors;
                    if (composerS.k(radioButtonColorsA)) {
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
                }
                i12 |= i19;
            } else {
                radioButtonColorsA = radioButtonColors;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i25 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i25 & 896) | (i25 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier10 = modifier4;
                Modifier modifierT6 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier10.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT6, (l) objH2, composerS, r12);
                modifier2 = modifier10;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i26 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i26 & 896) | (i26 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier11 = modifier4;
                Modifier modifierT7 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier11.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT7, (l) objH2, composerS, r12);
                modifier2 = modifier11;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
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
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        radioButtonColorsA = radioButtonColors;
                        if (composerS.k(radioButtonColorsA)) {
                        }
                        i12 |= i19;
                    } else {
                        radioButtonColorsA = radioButtonColors;
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i27 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i27 & 896) | (i27 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier12 = modifier4;
                    Modifier modifierT8 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier12.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT8, (l) objH2, composerS, r12);
                    modifier2 = modifier12;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
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
                            i17 = i12 & (-458753);
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                        } else {
                            i17 = i12;
                            modifier4 = modifier3;
                            z13 = z12;
                            mutableInteractionSource4 = mutableInteractionSource3;
                        }
                    }
                    composerS.A();
                    if (z6) {
                        f = Dp.f(RadioButtonDotSize / 2);
                    } else {
                        f = Dp.f(0);
                    }
                    stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                    int i28 = i17 >> 9;
                    stateA = radioButtonColorsA.a(z13, z6, composerS, (i28 & 896) | (i28 & 14) | ((i17 << 3) & 112));
                    composerS.G(1941632354);
                    if (aVar != null) {
                        z14 = z13;
                        r12 = 0;
                        modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                    } else {
                        r12 = 0;
                        z14 = z13;
                        modifierA = Modifier.Companion;
                    }
                    composerS.Q();
                    modifierB = Modifier.Companion;
                    if (aVar != null) {
                        modifierB = TouchTargetKt.b(modifierB);
                    }
                    Modifier modifier13 = modifier4;
                    Modifier modifierT9 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier13.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                    composerS.G(511388516);
                    zK = composerS.k(stateA) | composerS.k(stateC);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    } else {
                        objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    CanvasKt.a(modifierT9, (l) objH2, composerS, r12);
                    modifier2 = modifier13;
                    mutableInteractionSource5 = mutableInteractionSource4;
                    z15 = z14;
                    radioButtonColors2 = radioButtonColorsA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    radioButtonColorsA = radioButtonColors;
                    if (composerS.k(radioButtonColorsA)) {
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
                }
                i12 |= i19;
            } else {
                radioButtonColorsA = radioButtonColors;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i29 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i29 & 896) | (i29 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier14 = modifier4;
                Modifier modifierT10 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier14.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT10, (l) objH2, composerS, r12);
                modifier2 = modifier14;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i210 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i210 & 896) | (i210 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier15 = modifier4;
                Modifier modifierT11 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier15.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT11, (l) objH2, composerS, r12);
                modifier2 = modifier15;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
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
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    radioButtonColorsA = radioButtonColors;
                    if (composerS.k(radioButtonColorsA)) {
                    }
                    i12 |= i19;
                } else {
                    radioButtonColorsA = radioButtonColors;
                }
                i12 |= i19;
            } else {
                radioButtonColorsA = radioButtonColors;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i211 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i211 & 896) | (i211 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier16 = modifier4;
                Modifier modifierT12 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier16.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT12, (l) objH2, composerS, r12);
                modifier2 = modifier16;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
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
                        i17 = i12 & (-458753);
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                    } else {
                        i17 = i12;
                        modifier4 = modifier3;
                        z13 = z12;
                        mutableInteractionSource4 = mutableInteractionSource3;
                    }
                }
                composerS.A();
                if (z6) {
                    f = Dp.f(RadioButtonDotSize / 2);
                } else {
                    f = Dp.f(0);
                }
                stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
                int i212 = i17 >> 9;
                stateA = radioButtonColorsA.a(z13, z6, composerS, (i212 & 896) | (i212 & 14) | ((i17 << 3) & 112));
                composerS.G(1941632354);
                if (aVar != null) {
                    z14 = z13;
                    r12 = 0;
                    modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
                } else {
                    r12 = 0;
                    z14 = z13;
                    modifierA = Modifier.Companion;
                }
                composerS.Q();
                modifierB = Modifier.Companion;
                if (aVar != null) {
                    modifierB = TouchTargetKt.b(modifierB);
                }
                Modifier modifier17 = modifier4;
                Modifier modifierT13 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier17.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
                composerS.G(511388516);
                zK = composerS.k(stateA) | composerS.k(stateC);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                } else {
                    objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                    composerS.z(objH2);
                }
                composerS.Q();
                CanvasKt.a(modifierT13, (l) objH2, composerS, r12);
                modifier2 = modifier17;
                mutableInteractionSource5 = mutableInteractionSource4;
                z15 = z14;
                radioButtonColors2 = radioButtonColorsA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((458752 & i10) == 0) {
            if ((i11 & 32) == 0) {
                radioButtonColorsA = radioButtonColors;
                if (composerS.k(radioButtonColorsA)) {
                }
                i12 |= i19;
            } else {
                radioButtonColorsA = radioButtonColors;
            }
            i12 |= i19;
        } else {
            radioButtonColorsA = radioButtonColors;
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
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
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
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
            }
            composerS.A();
            if (z6) {
                f = Dp.f(RadioButtonDotSize / 2);
            } else {
                f = Dp.f(0);
            }
            stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
            int i213 = i17 >> 9;
            stateA = radioButtonColorsA.a(z13, z6, composerS, (i213 & 896) | (i213 & 14) | ((i17 << 3) & 112));
            composerS.G(1941632354);
            if (aVar != null) {
                z14 = z13;
                r12 = 0;
                modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
            } else {
                r12 = 0;
                z14 = z13;
                modifierA = Modifier.Companion;
            }
            composerS.Q();
            modifierB = Modifier.Companion;
            if (aVar != null) {
                modifierB = TouchTargetKt.b(modifierB);
            }
            Modifier modifier18 = modifier4;
            Modifier modifierT14 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier18.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
            composerS.G(511388516);
            zK = composerS.k(stateA) | composerS.k(stateC);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                composerS.z(objH2);
            } else {
                objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                composerS.z(objH2);
            }
            composerS.Q();
            CanvasKt.a(modifierT14, (l) objH2, composerS, r12);
            modifier2 = modifier18;
            mutableInteractionSource5 = mutableInteractionSource4;
            z15 = z14;
            radioButtonColors2 = radioButtonColorsA;
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
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
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
                    i17 = i12 & (-458753);
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    radioButtonColorsA = RadioButtonDefaults.INSTANCE.a(0L, 0L, 0L, composerS, 3072, 7);
                } else {
                    i17 = i12;
                    modifier4 = modifier3;
                    z13 = z12;
                    mutableInteractionSource4 = mutableInteractionSource3;
                }
            }
            composerS.A();
            if (z6) {
                f = Dp.f(RadioButtonDotSize / 2);
            } else {
                f = Dp.f(0);
            }
            stateC = AnimateAsStateKt.c(f, AnimationSpecKt.k(100, 0, null, 6, null), null, composerS, 48, 4);
            int i214 = i17 >> 9;
            stateA = radioButtonColorsA.a(z13, z6, composerS, (i214 & 896) | (i214 & 14) | ((i17 << 3) & 112));
            composerS.G(1941632354);
            if (aVar != null) {
                z14 = z13;
                r12 = 0;
                modifierA = SelectableKt.a(Modifier.Companion, z6, mutableInteractionSource4, RippleKt.e(false, RadioButtonRippleRadius, 0L, composerS, 54, 4), z14, Role.g(Role.Companion.d()), aVar);
            } else {
                r12 = 0;
                z14 = z13;
                modifierA = Modifier.Companion;
            }
            composerS.Q();
            modifierB = Modifier.Companion;
            if (aVar != null) {
                modifierB = TouchTargetKt.b(modifierB);
            }
            Modifier modifier19 = modifier4;
            Modifier modifierT15 = SizeKt.t(PaddingKt.i(SizeKt.H(modifier19.B(modifierB).B(modifierA), Alignment.Companion.e(), r12, 2, null), RadioButtonPadding), RadioButtonSize);
            composerS.G(511388516);
            zK = composerS.k(stateA) | composerS.k(stateC);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                composerS.z(objH2);
            } else {
                objH2 = new RadioButtonKt$RadioButton$2$1(stateA, stateC);
                composerS.z(objH2);
            }
            composerS.Q();
            CanvasKt.a(modifierT15, (l) objH2, composerS, r12);
            modifier2 = modifier19;
            mutableInteractionSource5 = mutableInteractionSource4;
            z15 = z14;
            radioButtonColors2 = radioButtonColorsA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new RadioButtonKt$RadioButton$3(z6, aVar, modifier2, z15, mutableInteractionSource5, radioButtonColors2, i10, i11));
    }
}
