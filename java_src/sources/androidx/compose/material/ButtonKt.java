package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public final class ButtonKt {
    /* JADX WARN: Code duplicated, block: B:101:0x011f  */
    /* JADX WARN: Code duplicated, block: B:102:0x0122  */
    /* JADX WARN: Code duplicated, block: B:104:0x0127  */
    /* JADX WARN: Code duplicated, block: B:106:0x012d  */
    /* JADX WARN: Code duplicated, block: B:107:0x0130  */
    /* JADX WARN: Code duplicated, block: B:111:0x013c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0153  */
    /* JADX WARN: Code duplicated, block: B:117:0x0166  */
    /* JADX WARN: Code duplicated, block: B:130:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0195  */
    /* JADX WARN: Code duplicated, block: B:132:0x019a  */
    /* JADX WARN: Code duplicated, block: B:134:0x019e  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:141:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:144:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:145:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:150:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:151:0x0202  */
    /* JADX WARN: Code duplicated, block: B:154:0x0208  */
    /* JADX WARN: Code duplicated, block: B:155:0x021f  */
    /* JADX WARN: Code duplicated, block: B:157:0x0223  */
    /* JADX WARN: Code duplicated, block: B:158:0x0235  */
    /* JADX WARN: Code duplicated, block: B:162:0x0283  */
    /* JADX WARN: Code duplicated, block: B:164:0x028f  */
    /* JADX WARN: Code duplicated, block: B:166:0x029c  */
    /* JADX WARN: Code duplicated, block: B:171:0x0307  */
    /* JADX WARN: Code duplicated, block: B:173:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:28:0x0056  */
    /* JADX WARN: Code duplicated, block: B:30:0x005a  */
    /* JADX WARN: Code duplicated, block: B:32:0x0062  */
    /* JADX WARN: Code duplicated, block: B:33:0x0065  */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:79:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:87:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:90:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:92:0x0104  */
    /* JADX WARN: Code duplicated, block: B:94:0x0108  */
    /* JADX WARN: Code duplicated, block: B:96:0x0112  */
    /* JADX WARN: Code duplicated, block: B:97:0x0115  */
    /* JADX WARN: Instruction removed from duplicated block: B:115:0x0153, please report this as an issue */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable ButtonElevation buttonElevation, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ButtonColors buttonColors, @Nullable PaddingValues paddingValues, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        MutableInteractionSource mutableInteractionSource2;
        int i16;
        ButtonElevation buttonElevationB;
        Shape shapeC;
        int i17;
        int i18;
        ButtonColors buttonColors2;
        int i19;
        PaddingValues paddingValues2;
        int i20;
        int i21;
        Modifier modifier2;
        boolean z10;
        MutableInteractionSource mutableInteractionSource3;
        BorderStroke borderStroke2;
        ButtonColors buttonColorsA;
        BorderStroke borderStroke3;
        ButtonColors buttonColors3;
        ButtonElevation buttonElevation2;
        Shape shape2;
        boolean z11;
        MutableInteractionSource mutableInteractionSource4;
        PaddingValues paddingValuesC;
        Object objH;
        State<Dp> stateA;
        float f;
        Composer composer2;
        Shape shape3;
        BorderStroke borderStroke4;
        ButtonElevation buttonElevation3;
        Modifier modifier3;
        boolean z12;
        MutableInteractionSource mutableInteractionSource5;
        ScopeUpdateScope scopeUpdateScopeU;
        int i22;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(-2116133464);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onClick) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i23 = i11 & 2;
        if (i23 == 0) {
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
                    if ((57344 & i10) == 0) {
                        if ((i11 & 16) == 0) {
                            buttonElevationB = buttonElevation;
                            int i24 = composerS.k(buttonElevationB) ? 16384 : 8192;
                            i12 |= i24;
                        } else {
                            buttonElevationB = buttonElevation;
                        }
                        i12 |= i24;
                    } else {
                        buttonElevationB = buttonElevation;
                    }
                    if ((458752 & i10) == 0) {
                        shapeC = shape;
                        if ((i11 & 32) == 0 || !composerS.k(shapeC)) {
                            i22 = 65536;
                        } else {
                            i22 = 131072;
                        }
                        i12 |= i22;
                    } else {
                        shapeC = shape;
                    }
                    i17 = i11 & 64;
                    if (i17 != 0) {
                        i12 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.k(borderStroke)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                    if ((29360128 & i10) == 0) {
                        if ((i11 & 128) == 0) {
                            buttonColors2 = buttonColors;
                            int i25 = composerS.k(buttonColors2) ? 8388608 : 4194304;
                            i12 |= i25;
                        } else {
                            buttonColors2 = buttonColors;
                        }
                        i12 |= i25;
                    } else {
                        buttonColors2 = buttonColors;
                    }
                    i19 = i11 & 256;
                    if (i19 != 0) {
                        if ((i10 & 234881024) == 0) {
                            paddingValues2 = paddingValues;
                            if (composerS.k(paddingValues2)) {
                                i20 = 67108864;
                            } else {
                                i20 = 33554432;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 512) != 0) {
                            i12 |= 805306368;
                        } else if ((1879048192 & i10) == 0) {
                            if (composerS.k(content)) {
                                i21 = 536870912;
                            } else {
                                i21 = 268435456;
                            }
                            i12 |= i21;
                        }
                        if ((1533916891 & i12) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i13 != 0) {
                                    z10 = true;
                                } else {
                                    z10 = z6;
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
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
                                    buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                                }
                                if ((i11 & 32) != 0) {
                                    i12 &= -458753;
                                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                } else {
                                    borderStroke2 = borderStroke;
                                }
                                if ((i11 & 128) != 0) {
                                    buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                    i12 &= -29360129;
                                } else {
                                    buttonColorsA = buttonColors;
                                }
                                if (i19 != 0) {
                                    borderStroke3 = borderStroke2;
                                    buttonColors3 = buttonColorsA;
                                    buttonElevation2 = buttonElevationB;
                                    shape2 = shapeC;
                                    z11 = z10;
                                    mutableInteractionSource4 = mutableInteractionSource3;
                                    paddingValuesC = ButtonDefaults.INSTANCE.c();
                                } else {
                                    borderStroke3 = borderStroke2;
                                    buttonColors3 = buttonColorsA;
                                    buttonElevation2 = buttonElevationB;
                                    shape2 = shapeC;
                                    z11 = z10;
                                    mutableInteractionSource4 = mutableInteractionSource3;
                                    paddingValuesC = paddingValues;
                                }
                            } else {
                                composerS.g();
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
                                }
                                if ((i11 & 32) != 0) {
                                    i12 &= -458753;
                                }
                                if ((i11 & 128) != 0) {
                                    i12 &= -29360129;
                                }
                                modifier2 = modifier;
                                borderStroke3 = borderStroke;
                                shape2 = shapeC;
                                z11 = z6;
                                PaddingValues paddingValues3 = paddingValues2;
                                mutableInteractionSource4 = mutableInteractionSource2;
                                buttonColors3 = buttonColors2;
                                buttonElevation2 = buttonElevationB;
                                paddingValuesC = paddingValues3;
                            }
                            composerS.A();
                            int i26 = i12 >> 6;
                            int i27 = i26 & 14;
                            int i28 = ((i12 >> 18) & 112) | i27;
                            State<Color> stateB = buttonColors3.b(z11, composerS, i28);
                            long jV = buttonColors3.a(z11, composerS, i28).getValue().v();
                            long jL = Color.l(b(stateB), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                            stateA = buttonElevation2 != null ? buttonElevation2.a(z11, mutableInteractionSource4, composerS, i27 | (i26 & 112) | (i26 & 896)) : null;
                            if (stateA != null) {
                                f = stateA.getValue().l();
                            } else {
                                f = Dp.f(0);
                            }
                            ButtonColors buttonColors4 = buttonColors3;
                            PaddingValues paddingValues4 = paddingValuesC;
                            ButtonElevation buttonElevation4 = buttonElevation2;
                            MutableInteractionSource mutableInteractionSource6 = mutableInteractionSource4;
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z11, shape2, jV, jL, borderStroke3, f, mutableInteractionSource6, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB, paddingValuesC, content, i12)), composer2, (i26 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                            shape3 = shape2;
                            borderStroke4 = borderStroke3;
                            buttonColors2 = buttonColors4;
                            paddingValues2 = paddingValues4;
                            buttonElevation3 = buttonElevation4;
                            modifier3 = modifier2;
                            z12 = z11;
                            mutableInteractionSource5 = mutableInteractionSource6;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            z12 = z6;
                            mutableInteractionSource5 = mutableInteractionSource2;
                            buttonElevation3 = buttonElevationB;
                            shape3 = shapeC;
                            composer2 = composerS;
                            borderStroke4 = borderStroke;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
                    }
                    i12 |= 100663296;
                    paddingValues2 = paddingValues;
                    if ((i11 & 512) != 0) {
                        i12 |= 805306368;
                    } else if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                        i12 |= i21;
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i29 = i12 >> 6;
                        int i210 = i29 & 14;
                        int i211 = ((i12 >> 18) & 112) | i210;
                        State<Color> stateB2 = buttonColors3.b(z11, composerS, i211);
                        long jV2 = buttonColors3.a(z11, composerS, i211).getValue().v();
                        long jL2 = Color.l(b(stateB2), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors5 = buttonColors3;
                        PaddingValues paddingValues5 = paddingValuesC;
                        ButtonElevation buttonElevation5 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource7 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV2, jL2, borderStroke3, f, mutableInteractionSource7, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB2, paddingValuesC, content, i12)), composer2, (i29 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors5;
                        paddingValues2 = paddingValues5;
                        buttonElevation3 = buttonElevation5;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource7;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i212 = i12 >> 6;
                        int i213 = i212 & 14;
                        int i214 = ((i12 >> 18) & 112) | i213;
                        State<Color> stateB3 = buttonColors3.b(z11, composerS, i214);
                        long jV3 = buttonColors3.a(z11, composerS, i214).getValue().v();
                        long jL3 = Color.l(b(stateB3), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors6 = buttonColors3;
                        PaddingValues paddingValues6 = paddingValuesC;
                        ButtonElevation buttonElevation6 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource8 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV3, jL3, borderStroke3, f, mutableInteractionSource8, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB3, paddingValuesC, content, i12)), composer2, (i212 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors6;
                        paddingValues2 = paddingValues6;
                        buttonElevation3 = buttonElevation6;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource8;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
                }
                i12 |= 3072;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        buttonElevationB = buttonElevation;
                        if (composerS.k(buttonElevationB)) {
                        }
                        i12 |= i24;
                    } else {
                        buttonElevationB = buttonElevation;
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                if ((458752 & i10) == 0) {
                    shapeC = shape;
                    if ((i11 & 32) == 0) {
                        i22 = 65536;
                    } else {
                        i22 = 65536;
                    }
                    i12 |= i22;
                } else {
                    shapeC = shape;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(borderStroke)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((29360128 & i10) == 0) {
                    if ((i11 & 128) == 0) {
                        buttonColors2 = buttonColors;
                        if (composerS.k(buttonColors2)) {
                        }
                        i12 |= i25;
                    } else {
                        buttonColors2 = buttonColors;
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    if ((i10 & 234881024) == 0) {
                        paddingValues2 = paddingValues;
                        if (composerS.k(paddingValues2)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 512) != 0) {
                        i12 |= 805306368;
                    } else if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                        i12 |= i21;
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i215 = i12 >> 6;
                        int i216 = i215 & 14;
                        int i217 = ((i12 >> 18) & 112) | i216;
                        State<Color> stateB4 = buttonColors3.b(z11, composerS, i217);
                        long jV4 = buttonColors3.a(z11, composerS, i217).getValue().v();
                        long jL4 = Color.l(b(stateB4), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors7 = buttonColors3;
                        PaddingValues paddingValues7 = paddingValuesC;
                        ButtonElevation buttonElevation7 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource9 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV4, jL4, borderStroke3, f, mutableInteractionSource9, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB4, paddingValuesC, content, i12)), composer2, (i215 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors7;
                        paddingValues2 = paddingValues7;
                        buttonElevation3 = buttonElevation7;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource9;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i218 = i12 >> 6;
                        int i219 = i218 & 14;
                        int i2110 = ((i12 >> 18) & 112) | i219;
                        State<Color> stateB5 = buttonColors3.b(z11, composerS, i2110);
                        long jV5 = buttonColors3.a(z11, composerS, i2110).getValue().v();
                        long jL5 = Color.l(b(stateB5), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors8 = buttonColors3;
                        PaddingValues paddingValues8 = paddingValuesC;
                        ButtonElevation buttonElevation8 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource10 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV5, jL5, borderStroke3, f, mutableInteractionSource10, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB5, paddingValuesC, content, i12)), composer2, (i218 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors8;
                        paddingValues2 = paddingValues8;
                        buttonElevation3 = buttonElevation8;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource10;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
                }
                i12 |= 100663296;
                paddingValues2 = paddingValues;
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i2111 = i12 >> 6;
                    int i2112 = i2111 & 14;
                    int i2113 = ((i12 >> 18) & 112) | i2112;
                    State<Color> stateB6 = buttonColors3.b(z11, composerS, i2113);
                    long jV6 = buttonColors3.a(z11, composerS, i2113).getValue().v();
                    long jL6 = Color.l(b(stateB6), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors9 = buttonColors3;
                    PaddingValues paddingValues9 = paddingValuesC;
                    ButtonElevation buttonElevation9 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource11 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV6, jL6, borderStroke3, f, mutableInteractionSource11, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB6, paddingValuesC, content, i12)), composer2, (i2111 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors9;
                    paddingValues2 = paddingValues9;
                    buttonElevation3 = buttonElevation9;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource11;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i2114 = i12 >> 6;
                    int i2115 = i2114 & 14;
                    int i2116 = ((i12 >> 18) & 112) | i2115;
                    State<Color> stateB7 = buttonColors3.b(z11, composerS, i2116);
                    long jV7 = buttonColors3.a(z11, composerS, i2116).getValue().v();
                    long jL7 = Color.l(b(stateB7), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors10 = buttonColors3;
                    PaddingValues paddingValues10 = paddingValuesC;
                    ButtonElevation buttonElevation10 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource12 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV7, jL7, borderStroke3, f, mutableInteractionSource12, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB7, paddingValuesC, content, i12)), composer2, (i2114 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors10;
                    paddingValues2 = paddingValues10;
                    buttonElevation3 = buttonElevation10;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource12;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 384;
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
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        buttonElevationB = buttonElevation;
                        if (composerS.k(buttonElevationB)) {
                        }
                        i12 |= i24;
                    } else {
                        buttonElevationB = buttonElevation;
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                if ((458752 & i10) == 0) {
                    shapeC = shape;
                    if ((i11 & 32) == 0) {
                        i22 = 65536;
                    } else {
                        i22 = 65536;
                    }
                    i12 |= i22;
                } else {
                    shapeC = shape;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(borderStroke)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((29360128 & i10) == 0) {
                    if ((i11 & 128) == 0) {
                        buttonColors2 = buttonColors;
                        if (composerS.k(buttonColors2)) {
                        }
                        i12 |= i25;
                    } else {
                        buttonColors2 = buttonColors;
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    if ((i10 & 234881024) == 0) {
                        paddingValues2 = paddingValues;
                        if (composerS.k(paddingValues2)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 512) != 0) {
                        i12 |= 805306368;
                    } else if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                        i12 |= i21;
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i2117 = i12 >> 6;
                        int i2118 = i2117 & 14;
                        int i2119 = ((i12 >> 18) & 112) | i2118;
                        State<Color> stateB8 = buttonColors3.b(z11, composerS, i2119);
                        long jV8 = buttonColors3.a(z11, composerS, i2119).getValue().v();
                        long jL8 = Color.l(b(stateB8), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors11 = buttonColors3;
                        PaddingValues paddingValues11 = paddingValuesC;
                        ButtonElevation buttonElevation11 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource13 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV8, jL8, borderStroke3, f, mutableInteractionSource13, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB8, paddingValuesC, content, i12)), composer2, (i2117 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors11;
                        paddingValues2 = paddingValues11;
                        buttonElevation3 = buttonElevation11;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i21110 = i12 >> 6;
                        int i21111 = i21110 & 14;
                        int i21112 = ((i12 >> 18) & 112) | i21111;
                        State<Color> stateB9 = buttonColors3.b(z11, composerS, i21112);
                        long jV9 = buttonColors3.a(z11, composerS, i21112).getValue().v();
                        long jL9 = Color.l(b(stateB9), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors12 = buttonColors3;
                        PaddingValues paddingValues12 = paddingValuesC;
                        ButtonElevation buttonElevation12 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource14 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV9, jL9, borderStroke3, f, mutableInteractionSource14, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB9, paddingValuesC, content, i12)), composer2, (i21110 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors12;
                        paddingValues2 = paddingValues12;
                        buttonElevation3 = buttonElevation12;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource14;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
                }
                i12 |= 100663296;
                paddingValues2 = paddingValues;
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21113 = i12 >> 6;
                    int i21114 = i21113 & 14;
                    int i21115 = ((i12 >> 18) & 112) | i21114;
                    State<Color> stateB10 = buttonColors3.b(z11, composerS, i21115);
                    long jV10 = buttonColors3.a(z11, composerS, i21115).getValue().v();
                    long jL10 = Color.l(b(stateB10), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors13 = buttonColors3;
                    PaddingValues paddingValues13 = paddingValuesC;
                    ButtonElevation buttonElevation13 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource15 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV10, jL10, borderStroke3, f, mutableInteractionSource15, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB10, paddingValuesC, content, i12)), composer2, (i21113 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors13;
                    paddingValues2 = paddingValues13;
                    buttonElevation3 = buttonElevation13;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource15;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21116 = i12 >> 6;
                    int i21117 = i21116 & 14;
                    int i21118 = ((i12 >> 18) & 112) | i21117;
                    State<Color> stateB11 = buttonColors3.b(z11, composerS, i21118);
                    long jV11 = buttonColors3.a(z11, composerS, i21118).getValue().v();
                    long jL11 = Color.l(b(stateB11), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors14 = buttonColors3;
                    PaddingValues paddingValues14 = paddingValuesC;
                    ButtonElevation buttonElevation14 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource16 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV11, jL11, borderStroke3, f, mutableInteractionSource16, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB11, paddingValuesC, content, i12)), composer2, (i21116 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors14;
                    paddingValues2 = paddingValues14;
                    buttonElevation3 = buttonElevation14;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource16;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 3072;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    buttonElevationB = buttonElevation;
                    if (composerS.k(buttonElevationB)) {
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                i12 |= i24;
            } else {
                buttonElevationB = buttonElevation;
            }
            if ((458752 & i10) == 0) {
                shapeC = shape;
                if ((i11 & 32) == 0) {
                    i22 = 65536;
                } else {
                    i22 = 65536;
                }
                i12 |= i22;
            } else {
                shapeC = shape;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(borderStroke)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((29360128 & i10) == 0) {
                if ((i11 & 128) == 0) {
                    buttonColors2 = buttonColors;
                    if (composerS.k(buttonColors2)) {
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i12 |= i25;
            } else {
                buttonColors2 = buttonColors;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                if ((i10 & 234881024) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21119 = i12 >> 6;
                    int i211110 = i21119 & 14;
                    int i211111 = ((i12 >> 18) & 112) | i211110;
                    State<Color> stateB12 = buttonColors3.b(z11, composerS, i211111);
                    long jV12 = buttonColors3.a(z11, composerS, i211111).getValue().v();
                    long jL12 = Color.l(b(stateB12), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors15 = buttonColors3;
                    PaddingValues paddingValues15 = paddingValuesC;
                    ButtonElevation buttonElevation15 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource17 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV12, jL12, borderStroke3, f, mutableInteractionSource17, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB12, paddingValuesC, content, i12)), composer2, (i21119 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors15;
                    paddingValues2 = paddingValues15;
                    buttonElevation3 = buttonElevation15;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource17;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i211112 = i12 >> 6;
                    int i211113 = i211112 & 14;
                    int i211114 = ((i12 >> 18) & 112) | i211113;
                    State<Color> stateB13 = buttonColors3.b(z11, composerS, i211114);
                    long jV13 = buttonColors3.a(z11, composerS, i211114).getValue().v();
                    long jL13 = Color.l(b(stateB13), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors16 = buttonColors3;
                    PaddingValues paddingValues16 = paddingValuesC;
                    ButtonElevation buttonElevation16 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource18 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV13, jL13, borderStroke3, f, mutableInteractionSource18, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB13, paddingValuesC, content, i12)), composer2, (i211112 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors16;
                    paddingValues2 = paddingValues16;
                    buttonElevation3 = buttonElevation16;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource18;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 100663296;
            paddingValues2 = paddingValues;
            if ((i11 & 512) != 0) {
                i12 |= 805306368;
            } else if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i12 |= i21;
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i211115 = i12 >> 6;
                int i211116 = i211115 & 14;
                int i211117 = ((i12 >> 18) & 112) | i211116;
                State<Color> stateB14 = buttonColors3.b(z11, composerS, i211117);
                long jV14 = buttonColors3.a(z11, composerS, i211117).getValue().v();
                long jL14 = Color.l(b(stateB14), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors17 = buttonColors3;
                PaddingValues paddingValues17 = paddingValuesC;
                ButtonElevation buttonElevation17 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource19 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV14, jL14, borderStroke3, f, mutableInteractionSource19, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB14, paddingValuesC, content, i12)), composer2, (i211115 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors17;
                paddingValues2 = paddingValues17;
                buttonElevation3 = buttonElevation17;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource19;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i211118 = i12 >> 6;
                int i211119 = i211118 & 14;
                int i2111110 = ((i12 >> 18) & 112) | i211119;
                State<Color> stateB15 = buttonColors3.b(z11, composerS, i2111110);
                long jV15 = buttonColors3.a(z11, composerS, i2111110).getValue().v();
                long jL15 = Color.l(b(stateB15), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors18 = buttonColors3;
                PaddingValues paddingValues18 = paddingValuesC;
                ButtonElevation buttonElevation18 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource110 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV15, jL15, borderStroke3, f, mutableInteractionSource110, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB15, paddingValuesC, content, i12)), composer2, (i211118 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors18;
                paddingValues2 = paddingValues18;
                buttonElevation3 = buttonElevation18;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource110;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
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
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        buttonElevationB = buttonElevation;
                        if (composerS.k(buttonElevationB)) {
                        }
                        i12 |= i24;
                    } else {
                        buttonElevationB = buttonElevation;
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                if ((458752 & i10) == 0) {
                    shapeC = shape;
                    if ((i11 & 32) == 0) {
                        i22 = 65536;
                    } else {
                        i22 = 65536;
                    }
                    i12 |= i22;
                } else {
                    shapeC = shape;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(borderStroke)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
                if ((29360128 & i10) == 0) {
                    if ((i11 & 128) == 0) {
                        buttonColors2 = buttonColors;
                        if (composerS.k(buttonColors2)) {
                        }
                        i12 |= i25;
                    } else {
                        buttonColors2 = buttonColors;
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    if ((i10 & 234881024) == 0) {
                        paddingValues2 = paddingValues;
                        if (composerS.k(paddingValues2)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 512) != 0) {
                        i12 |= 805306368;
                    } else if ((1879048192 & i10) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                        i12 |= i21;
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i2111111 = i12 >> 6;
                        int i2111112 = i2111111 & 14;
                        int i2111113 = ((i12 >> 18) & 112) | i2111112;
                        State<Color> stateB16 = buttonColors3.b(z11, composerS, i2111113);
                        long jV16 = buttonColors3.a(z11, composerS, i2111113).getValue().v();
                        long jL16 = Color.l(b(stateB16), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors19 = buttonColors3;
                        PaddingValues paddingValues19 = paddingValuesC;
                        ButtonElevation buttonElevation19 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource111 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV16, jL16, borderStroke3, f, mutableInteractionSource111, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB16, paddingValuesC, content, i12)), composer2, (i2111111 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors19;
                        paddingValues2 = paddingValues19;
                        buttonElevation3 = buttonElevation19;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource111;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i13 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
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
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                                buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                            }
                            if ((i11 & 32) != 0) {
                                i12 &= -458753;
                                shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i11 & 128) != 0) {
                                buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                                i12 &= -29360129;
                            } else {
                                buttonColorsA = buttonColors;
                            }
                            if (i19 != 0) {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = ButtonDefaults.INSTANCE.c();
                            } else {
                                borderStroke3 = borderStroke2;
                                buttonColors3 = buttonColorsA;
                                buttonElevation2 = buttonElevationB;
                                shape2 = shapeC;
                                z11 = z10;
                                mutableInteractionSource4 = mutableInteractionSource3;
                                paddingValuesC = paddingValues;
                            }
                        }
                        composerS.A();
                        int i2111114 = i12 >> 6;
                        int i2111115 = i2111114 & 14;
                        int i2111116 = ((i12 >> 18) & 112) | i2111115;
                        State<Color> stateB17 = buttonColors3.b(z11, composerS, i2111116);
                        long jV17 = buttonColors3.a(z11, composerS, i2111116).getValue().v();
                        long jL17 = Color.l(b(stateB17), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                        if (buttonElevation2 != null) {
                        }
                        if (stateA != null) {
                            f = stateA.getValue().l();
                        } else {
                            f = Dp.f(0);
                        }
                        ButtonColors buttonColors110 = buttonColors3;
                        PaddingValues paddingValues110 = paddingValuesC;
                        ButtonElevation buttonElevation110 = buttonElevation2;
                        MutableInteractionSource mutableInteractionSource112 = mutableInteractionSource4;
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z11, shape2, jV17, jL17, borderStroke3, f, mutableInteractionSource112, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB17, paddingValuesC, content, i12)), composer2, (i2111114 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                        shape3 = shape2;
                        borderStroke4 = borderStroke3;
                        buttonColors2 = buttonColors110;
                        paddingValues2 = paddingValues110;
                        buttonElevation3 = buttonElevation110;
                        modifier3 = modifier2;
                        z12 = z11;
                        mutableInteractionSource5 = mutableInteractionSource112;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
                }
                i12 |= 100663296;
                paddingValues2 = paddingValues;
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i2111117 = i12 >> 6;
                    int i2111118 = i2111117 & 14;
                    int i2111119 = ((i12 >> 18) & 112) | i2111118;
                    State<Color> stateB18 = buttonColors3.b(z11, composerS, i2111119);
                    long jV18 = buttonColors3.a(z11, composerS, i2111119).getValue().v();
                    long jL18 = Color.l(b(stateB18), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors111 = buttonColors3;
                    PaddingValues paddingValues111 = paddingValuesC;
                    ButtonElevation buttonElevation111 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource113 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV18, jL18, borderStroke3, f, mutableInteractionSource113, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB18, paddingValuesC, content, i12)), composer2, (i2111117 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors111;
                    paddingValues2 = paddingValues111;
                    buttonElevation3 = buttonElevation111;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource113;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21111110 = i12 >> 6;
                    int i21111111 = i21111110 & 14;
                    int i21111112 = ((i12 >> 18) & 112) | i21111111;
                    State<Color> stateB19 = buttonColors3.b(z11, composerS, i21111112);
                    long jV19 = buttonColors3.a(z11, composerS, i21111112).getValue().v();
                    long jL19 = Color.l(b(stateB19), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors112 = buttonColors3;
                    PaddingValues paddingValues112 = paddingValuesC;
                    ButtonElevation buttonElevation112 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource114 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV19, jL19, borderStroke3, f, mutableInteractionSource114, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB19, paddingValuesC, content, i12)), composer2, (i21111110 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors112;
                    paddingValues2 = paddingValues112;
                    buttonElevation3 = buttonElevation112;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource114;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 3072;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    buttonElevationB = buttonElevation;
                    if (composerS.k(buttonElevationB)) {
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                i12 |= i24;
            } else {
                buttonElevationB = buttonElevation;
            }
            if ((458752 & i10) == 0) {
                shapeC = shape;
                if ((i11 & 32) == 0) {
                    i22 = 65536;
                } else {
                    i22 = 65536;
                }
                i12 |= i22;
            } else {
                shapeC = shape;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(borderStroke)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((29360128 & i10) == 0) {
                if ((i11 & 128) == 0) {
                    buttonColors2 = buttonColors;
                    if (composerS.k(buttonColors2)) {
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i12 |= i25;
            } else {
                buttonColors2 = buttonColors;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                if ((i10 & 234881024) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21111113 = i12 >> 6;
                    int i21111114 = i21111113 & 14;
                    int i21111115 = ((i12 >> 18) & 112) | i21111114;
                    State<Color> stateB110 = buttonColors3.b(z11, composerS, i21111115);
                    long jV110 = buttonColors3.a(z11, composerS, i21111115).getValue().v();
                    long jL110 = Color.l(b(stateB110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors113 = buttonColors3;
                    PaddingValues paddingValues113 = paddingValuesC;
                    ButtonElevation buttonElevation113 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource115 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV110, jL110, borderStroke3, f, mutableInteractionSource115, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB110, paddingValuesC, content, i12)), composer2, (i21111113 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors113;
                    paddingValues2 = paddingValues113;
                    buttonElevation3 = buttonElevation113;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource115;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i21111116 = i12 >> 6;
                    int i21111117 = i21111116 & 14;
                    int i21111118 = ((i12 >> 18) & 112) | i21111117;
                    State<Color> stateB111 = buttonColors3.b(z11, composerS, i21111118);
                    long jV111 = buttonColors3.a(z11, composerS, i21111118).getValue().v();
                    long jL111 = Color.l(b(stateB111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors114 = buttonColors3;
                    PaddingValues paddingValues114 = paddingValuesC;
                    ButtonElevation buttonElevation114 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource116 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV111, jL111, borderStroke3, f, mutableInteractionSource116, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB111, paddingValuesC, content, i12)), composer2, (i21111116 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors114;
                    paddingValues2 = paddingValues114;
                    buttonElevation3 = buttonElevation114;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource116;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 100663296;
            paddingValues2 = paddingValues;
            if ((i11 & 512) != 0) {
                i12 |= 805306368;
            } else if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i12 |= i21;
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i21111119 = i12 >> 6;
                int i211111110 = i21111119 & 14;
                int i211111111 = ((i12 >> 18) & 112) | i211111110;
                State<Color> stateB112 = buttonColors3.b(z11, composerS, i211111111);
                long jV112 = buttonColors3.a(z11, composerS, i211111111).getValue().v();
                long jL112 = Color.l(b(stateB112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors115 = buttonColors3;
                PaddingValues paddingValues115 = paddingValuesC;
                ButtonElevation buttonElevation115 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource117 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV112, jL112, borderStroke3, f, mutableInteractionSource117, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB112, paddingValuesC, content, i12)), composer2, (i21111119 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors115;
                paddingValues2 = paddingValues115;
                buttonElevation3 = buttonElevation115;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource117;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i211111112 = i12 >> 6;
                int i211111113 = i211111112 & 14;
                int i211111114 = ((i12 >> 18) & 112) | i211111113;
                State<Color> stateB113 = buttonColors3.b(z11, composerS, i211111114);
                long jV113 = buttonColors3.a(z11, composerS, i211111114).getValue().v();
                long jL113 = Color.l(b(stateB113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors116 = buttonColors3;
                PaddingValues paddingValues116 = paddingValuesC;
                ButtonElevation buttonElevation116 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource118 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV113, jL113, borderStroke3, f, mutableInteractionSource118, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB113, paddingValuesC, content, i12)), composer2, (i211111112 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors116;
                paddingValues2 = paddingValues116;
                buttonElevation3 = buttonElevation116;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource118;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
        }
        i12 |= 384;
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
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    buttonElevationB = buttonElevation;
                    if (composerS.k(buttonElevationB)) {
                    }
                    i12 |= i24;
                } else {
                    buttonElevationB = buttonElevation;
                }
                i12 |= i24;
            } else {
                buttonElevationB = buttonElevation;
            }
            if ((458752 & i10) == 0) {
                shapeC = shape;
                if ((i11 & 32) == 0) {
                    i22 = 65536;
                } else {
                    i22 = 65536;
                }
                i12 |= i22;
            } else {
                shapeC = shape;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(borderStroke)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
            if ((29360128 & i10) == 0) {
                if ((i11 & 128) == 0) {
                    buttonColors2 = buttonColors;
                    if (composerS.k(buttonColors2)) {
                    }
                    i12 |= i25;
                } else {
                    buttonColors2 = buttonColors;
                }
                i12 |= i25;
            } else {
                buttonColors2 = buttonColors;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                if ((i10 & 234881024) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    i12 |= 805306368;
                } else if ((1879048192 & i10) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i12 |= i21;
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i211111115 = i12 >> 6;
                    int i211111116 = i211111115 & 14;
                    int i211111117 = ((i12 >> 18) & 112) | i211111116;
                    State<Color> stateB114 = buttonColors3.b(z11, composerS, i211111117);
                    long jV114 = buttonColors3.a(z11, composerS, i211111117).getValue().v();
                    long jL114 = Color.l(b(stateB114), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors117 = buttonColors3;
                    PaddingValues paddingValues117 = paddingValuesC;
                    ButtonElevation buttonElevation117 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource119 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV114, jL114, borderStroke3, f, mutableInteractionSource119, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB114, paddingValuesC, content, i12)), composer2, (i211111115 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors117;
                    paddingValues2 = paddingValues117;
                    buttonElevation3 = buttonElevation117;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource119;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i13 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
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
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                            buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                        }
                        if ((i11 & 32) != 0) {
                            i12 &= -458753;
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i11 & 128) != 0) {
                            buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                            i12 &= -29360129;
                        } else {
                            buttonColorsA = buttonColors;
                        }
                        if (i19 != 0) {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = ButtonDefaults.INSTANCE.c();
                        } else {
                            borderStroke3 = borderStroke2;
                            buttonColors3 = buttonColorsA;
                            buttonElevation2 = buttonElevationB;
                            shape2 = shapeC;
                            z11 = z10;
                            mutableInteractionSource4 = mutableInteractionSource3;
                            paddingValuesC = paddingValues;
                        }
                    }
                    composerS.A();
                    int i211111118 = i12 >> 6;
                    int i211111119 = i211111118 & 14;
                    int i2111111110 = ((i12 >> 18) & 112) | i211111119;
                    State<Color> stateB115 = buttonColors3.b(z11, composerS, i2111111110);
                    long jV115 = buttonColors3.a(z11, composerS, i2111111110).getValue().v();
                    long jL115 = Color.l(b(stateB115), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                    if (buttonElevation2 != null) {
                    }
                    if (stateA != null) {
                        f = stateA.getValue().l();
                    } else {
                        f = Dp.f(0);
                    }
                    ButtonColors buttonColors118 = buttonColors3;
                    PaddingValues paddingValues118 = paddingValuesC;
                    ButtonElevation buttonElevation118 = buttonElevation2;
                    MutableInteractionSource mutableInteractionSource1110 = mutableInteractionSource4;
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z11, shape2, jV115, jL115, borderStroke3, f, mutableInteractionSource1110, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB115, paddingValuesC, content, i12)), composer2, (i211111118 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                    shape3 = shape2;
                    borderStroke4 = borderStroke3;
                    buttonColors2 = buttonColors118;
                    paddingValues2 = paddingValues118;
                    buttonElevation3 = buttonElevation118;
                    modifier3 = modifier2;
                    z12 = z11;
                    mutableInteractionSource5 = mutableInteractionSource1110;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
            }
            i12 |= 100663296;
            paddingValues2 = paddingValues;
            if ((i11 & 512) != 0) {
                i12 |= 805306368;
            } else if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i12 |= i21;
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i2111111111 = i12 >> 6;
                int i2111111112 = i2111111111 & 14;
                int i2111111113 = ((i12 >> 18) & 112) | i2111111112;
                State<Color> stateB116 = buttonColors3.b(z11, composerS, i2111111113);
                long jV116 = buttonColors3.a(z11, composerS, i2111111113).getValue().v();
                long jL116 = Color.l(b(stateB116), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors119 = buttonColors3;
                PaddingValues paddingValues119 = paddingValuesC;
                ButtonElevation buttonElevation119 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource1111 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV116, jL116, borderStroke3, f, mutableInteractionSource1111, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB116, paddingValuesC, content, i12)), composer2, (i2111111111 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors119;
                paddingValues2 = paddingValues119;
                buttonElevation3 = buttonElevation119;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource1111;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i2111111114 = i12 >> 6;
                int i2111111115 = i2111111114 & 14;
                int i2111111116 = ((i12 >> 18) & 112) | i2111111115;
                State<Color> stateB117 = buttonColors3.b(z11, composerS, i2111111116);
                long jV117 = buttonColors3.a(z11, composerS, i2111111116).getValue().v();
                long jL117 = Color.l(b(stateB117), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors1110 = buttonColors3;
                PaddingValues paddingValues1110 = paddingValuesC;
                ButtonElevation buttonElevation1110 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource1112 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV117, jL117, borderStroke3, f, mutableInteractionSource1112, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB117, paddingValuesC, content, i12)), composer2, (i2111111114 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors1110;
                paddingValues2 = paddingValues1110;
                buttonElevation3 = buttonElevation1110;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource1112;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
        }
        i12 |= 3072;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                buttonElevationB = buttonElevation;
                if (composerS.k(buttonElevationB)) {
                }
                i12 |= i24;
            } else {
                buttonElevationB = buttonElevation;
            }
            i12 |= i24;
        } else {
            buttonElevationB = buttonElevation;
        }
        if ((458752 & i10) == 0) {
            shapeC = shape;
            if ((i11 & 32) == 0) {
                i22 = 65536;
            } else {
                i22 = 65536;
            }
            i12 |= i22;
        } else {
            shapeC = shape;
        }
        i17 = i11 & 64;
        if (i17 != 0) {
            i12 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.k(borderStroke)) {
                i18 = 1048576;
            } else {
                i18 = 524288;
            }
            i12 |= i18;
        }
        if ((29360128 & i10) == 0) {
            if ((i11 & 128) == 0) {
                buttonColors2 = buttonColors;
                if (composerS.k(buttonColors2)) {
                }
                i12 |= i25;
            } else {
                buttonColors2 = buttonColors;
            }
            i12 |= i25;
        } else {
            buttonColors2 = buttonColors;
        }
        i19 = i11 & 256;
        if (i19 != 0) {
            if ((i10 & 234881024) == 0) {
                paddingValues2 = paddingValues;
                if (composerS.k(paddingValues2)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                i12 |= 805306368;
            } else if ((1879048192 & i10) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i12 |= i21;
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i2111111117 = i12 >> 6;
                int i2111111118 = i2111111117 & 14;
                int i2111111119 = ((i12 >> 18) & 112) | i2111111118;
                State<Color> stateB118 = buttonColors3.b(z11, composerS, i2111111119);
                long jV118 = buttonColors3.a(z11, composerS, i2111111119).getValue().v();
                long jL118 = Color.l(b(stateB118), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors1111 = buttonColors3;
                PaddingValues paddingValues1111 = paddingValuesC;
                ButtonElevation buttonElevation1111 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource1113 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV118, jL118, borderStroke3, f, mutableInteractionSource1113, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB118, paddingValuesC, content, i12)), composer2, (i2111111117 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors1111;
                paddingValues2 = paddingValues1111;
                buttonElevation3 = buttonElevation1111;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource1113;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i13 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
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
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                        buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i11 & 128) != 0) {
                        buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                        i12 &= -29360129;
                    } else {
                        buttonColorsA = buttonColors;
                    }
                    if (i19 != 0) {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = ButtonDefaults.INSTANCE.c();
                    } else {
                        borderStroke3 = borderStroke2;
                        buttonColors3 = buttonColorsA;
                        buttonElevation2 = buttonElevationB;
                        shape2 = shapeC;
                        z11 = z10;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        paddingValuesC = paddingValues;
                    }
                }
                composerS.A();
                int i21111111110 = i12 >> 6;
                int i21111111111 = i21111111110 & 14;
                int i21111111112 = ((i12 >> 18) & 112) | i21111111111;
                State<Color> stateB119 = buttonColors3.b(z11, composerS, i21111111112);
                long jV119 = buttonColors3.a(z11, composerS, i21111111112).getValue().v();
                long jL119 = Color.l(b(stateB119), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
                if (buttonElevation2 != null) {
                }
                if (stateA != null) {
                    f = stateA.getValue().l();
                } else {
                    f = Dp.f(0);
                }
                ButtonColors buttonColors1112 = buttonColors3;
                PaddingValues paddingValues1112 = paddingValuesC;
                ButtonElevation buttonElevation1112 = buttonElevation2;
                MutableInteractionSource mutableInteractionSource1114 = mutableInteractionSource4;
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z11, shape2, jV119, jL119, borderStroke3, f, mutableInteractionSource1114, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB119, paddingValuesC, content, i12)), composer2, (i21111111110 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
                shape3 = shape2;
                borderStroke4 = borderStroke3;
                buttonColors2 = buttonColors1112;
                paddingValues2 = paddingValues1112;
                buttonElevation3 = buttonElevation1112;
                modifier3 = modifier2;
                z12 = z11;
                mutableInteractionSource5 = mutableInteractionSource1114;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
        }
        i12 |= 100663296;
        paddingValues2 = paddingValues;
        if ((i11 & 512) != 0) {
            i12 |= 805306368;
        } else if ((1879048192 & i10) == 0) {
            if (composerS.k(content)) {
                i21 = 536870912;
            } else {
                i21 = 268435456;
            }
            i12 |= i21;
        }
        if ((1533916891 & i12) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
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
                if ((i11 & 16) != 0) {
                    i12 &= -57345;
                    buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                }
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i11 & 128) != 0) {
                    buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -29360129;
                } else {
                    buttonColorsA = buttonColors;
                }
                if (i19 != 0) {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = ButtonDefaults.INSTANCE.c();
                } else {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = paddingValues;
                }
            } else {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
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
                if ((i11 & 16) != 0) {
                    i12 &= -57345;
                    buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                }
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i11 & 128) != 0) {
                    buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -29360129;
                } else {
                    buttonColorsA = buttonColors;
                }
                if (i19 != 0) {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = ButtonDefaults.INSTANCE.c();
                } else {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = paddingValues;
                }
            }
            composerS.A();
            int i21111111113 = i12 >> 6;
            int i21111111114 = i21111111113 & 14;
            int i21111111115 = ((i12 >> 18) & 112) | i21111111114;
            State<Color> stateB1110 = buttonColors3.b(z11, composerS, i21111111115);
            long jV1110 = buttonColors3.a(z11, composerS, i21111111115).getValue().v();
            long jL1110 = Color.l(b(stateB1110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
            if (buttonElevation2 != null) {
            }
            if (stateA != null) {
                f = stateA.getValue().l();
            } else {
                f = Dp.f(0);
            }
            ButtonColors buttonColors1113 = buttonColors3;
            PaddingValues paddingValues1113 = paddingValuesC;
            ButtonElevation buttonElevation1113 = buttonElevation2;
            MutableInteractionSource mutableInteractionSource1115 = mutableInteractionSource4;
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier2, z11, shape2, jV1110, jL1110, borderStroke3, f, mutableInteractionSource1115, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB1110, paddingValuesC, content, i12)), composer2, (i21111111113 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
            shape3 = shape2;
            borderStroke4 = borderStroke3;
            buttonColors2 = buttonColors1113;
            paddingValues2 = paddingValues1113;
            buttonElevation3 = buttonElevation1113;
            modifier3 = modifier2;
            z12 = z11;
            mutableInteractionSource5 = mutableInteractionSource1115;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
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
                if ((i11 & 16) != 0) {
                    i12 &= -57345;
                    buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                }
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i11 & 128) != 0) {
                    buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -29360129;
                } else {
                    buttonColorsA = buttonColors;
                }
                if (i19 != 0) {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = ButtonDefaults.INSTANCE.c();
                } else {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = paddingValues;
                }
            } else {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i13 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
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
                if ((i11 & 16) != 0) {
                    i12 &= -57345;
                    buttonElevationB = ButtonDefaults.INSTANCE.b(0.0f, 0.0f, 0.0f, 0.0f, 0.0f, composerS, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE, 31);
                }
                if ((i11 & 32) != 0) {
                    i12 &= -458753;
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i11 & 128) != 0) {
                    buttonColorsA = ButtonDefaults.INSTANCE.a(0L, 0L, 0L, 0L, composerS, CpioConstants.C_ISBLK, 15);
                    i12 &= -29360129;
                } else {
                    buttonColorsA = buttonColors;
                }
                if (i19 != 0) {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = ButtonDefaults.INSTANCE.c();
                } else {
                    borderStroke3 = borderStroke2;
                    buttonColors3 = buttonColorsA;
                    buttonElevation2 = buttonElevationB;
                    shape2 = shapeC;
                    z11 = z10;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    paddingValuesC = paddingValues;
                }
            }
            composerS.A();
            int i21111111116 = i12 >> 6;
            int i21111111117 = i21111111116 & 14;
            int i21111111118 = ((i12 >> 18) & 112) | i21111111117;
            State<Color> stateB1111 = buttonColors3.b(z11, composerS, i21111111118);
            long jV1111 = buttonColors3.a(z11, composerS, i21111111118).getValue().v();
            long jL1111 = Color.l(b(stateB1111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null);
            if (buttonElevation2 != null) {
            }
            if (stateA != null) {
                f = stateA.getValue().l();
            } else {
                f = Dp.f(0);
            }
            ButtonColors buttonColors1114 = buttonColors3;
            PaddingValues paddingValues1114 = paddingValuesC;
            ButtonElevation buttonElevation1114 = buttonElevation2;
            MutableInteractionSource mutableInteractionSource1116 = mutableInteractionSource4;
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier2, z11, shape2, jV1111, jL1111, borderStroke3, f, mutableInteractionSource1116, ComposableLambdaKt.b(composerS, 7524271, true, new ButtonKt$Button$2(stateB1111, paddingValuesC, content, i12)), composer2, (i21111111116 & 7168) | (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | (i12 & 3670016) | ((i12 << 15) & 234881024), 0);
            shape3 = shape2;
            borderStroke4 = borderStroke3;
            buttonColors2 = buttonColors1114;
            paddingValues2 = paddingValues1114;
            buttonElevation3 = buttonElevation1114;
            modifier3 = modifier2;
            z12 = z11;
            mutableInteractionSource5 = mutableInteractionSource1116;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ButtonKt$Button$3(onClick, modifier3, z12, mutableInteractionSource5, buttonElevation3, shape3, borderStroke4, buttonColors2, paddingValues2, content, i10, i11));
    }

    @Composable
    @ComposableInferredTarget
    public static final void c(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable ButtonElevation buttonElevation, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ButtonColors buttonColors, @Nullable PaddingValues paddingValues, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        MutableInteractionSource mutableInteractionSource2;
        t.j(onClick, "onClick");
        t.j(content, "content");
        composer.G(-1776134358);
        Modifier modifier2 = (i11 & 2) != 0 ? Modifier.Companion : modifier;
        boolean z10 = (i11 & 4) != 0 ? true : z6;
        if ((i11 & 8) != 0) {
            composer.G(-492369756);
            Object objH = composer.H();
            if (objH == Composer.Companion.a()) {
                objH = InteractionSourceKt.a();
                composer.z(objH);
            }
            composer.Q();
            mutableInteractionSource2 = (MutableInteractionSource) objH;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        a(onClick, modifier2, z10, mutableInteractionSource2, (i11 & 16) != 0 ? null : buttonElevation, (i11 & 32) != 0 ? MaterialTheme.INSTANCE.b(composer, 6).c() : shape, (i11 & 64) != 0 ? ButtonDefaults.INSTANCE.f(composer, 6) : borderStroke, (i11 & 128) != 0 ? ButtonDefaults.INSTANCE.h(0L, 0L, 0L, composer, 3072, 7) : buttonColors, (i11 & 256) != 0 ? ButtonDefaults.INSTANCE.c() : paddingValues, content, composer, (i10 & 14) | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (3670016 & i10) | (29360128 & i10) | (234881024 & i10) | (1879048192 & i10), 0);
        composer.Q();
    }

    @Composable
    @ComposableInferredTarget
    public static final void d(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable ButtonElevation buttonElevation, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ButtonColors buttonColors, @Nullable PaddingValues paddingValues, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        MutableInteractionSource mutableInteractionSource2;
        t.j(onClick, "onClick");
        t.j(content, "content");
        composer.G(288797557);
        Modifier modifier2 = (i11 & 2) != 0 ? Modifier.Companion : modifier;
        boolean z10 = (i11 & 4) != 0 ? true : z6;
        if ((i11 & 8) != 0) {
            composer.G(-492369756);
            Object objH = composer.H();
            if (objH == Composer.Companion.a()) {
                objH = InteractionSourceKt.a();
                composer.z(objH);
            }
            composer.Q();
            mutableInteractionSource2 = (MutableInteractionSource) objH;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        a(onClick, modifier2, z10, mutableInteractionSource2, (i11 & 16) != 0 ? null : buttonElevation, (i11 & 32) != 0 ? MaterialTheme.INSTANCE.b(composer, 6).c() : shape, (i11 & 64) != 0 ? null : borderStroke, (i11 & 128) != 0 ? ButtonDefaults.INSTANCE.i(0L, 0L, 0L, composer, 3072, 7) : buttonColors, (i11 & 256) != 0 ? ButtonDefaults.INSTANCE.g() : paddingValues, content, composer, (i10 & 14) | (i10 & 112) | (i10 & 896) | (i10 & 7168) | (57344 & i10) | (458752 & i10) | (3670016 & i10) | (29360128 & i10) | (234881024 & i10) | (1879048192 & i10), 0);
        composer.Q();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long b(State<Color> state) {
        return state.getValue().v();
    }
}
