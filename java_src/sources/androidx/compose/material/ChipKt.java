package androidx.compose.material;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class ChipKt {
    private static final float LeadingIconEndSpacing;
    private static final float SelectedOverlayOpacity = 0.16f;
    private static final float SurfaceOverlayOpacity = 0.12f;
    private static final float TrailingIconSpacing;
    private static final float HorizontalPadding = Dp.f(12);
    private static final float LeadingIconStartSpacing = Dp.f(4);
    private static final float SelectedIconContainerSize = Dp.f(24);

    /* JADX WARN: Code duplicated, block: B:101:0x012d  */
    /* JADX WARN: Code duplicated, block: B:103:0x0133  */
    /* JADX WARN: Code duplicated, block: B:104:0x0136  */
    /* JADX WARN: Code duplicated, block: B:108:0x013e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0143  */
    /* JADX WARN: Code duplicated, block: B:111:0x0149  */
    /* JADX WARN: Code duplicated, block: B:113:0x014f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0152  */
    /* JADX WARN: Code duplicated, block: B:116:0x0157  */
    /* JADX WARN: Code duplicated, block: B:119:0x015d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0162  */
    /* JADX WARN: Code duplicated, block: B:123:0x0166  */
    /* JADX WARN: Code duplicated, block: B:125:0x016c  */
    /* JADX WARN: Code duplicated, block: B:126:0x016f  */
    /* JADX WARN: Code duplicated, block: B:128:0x0174  */
    /* JADX WARN: Code duplicated, block: B:131:0x017f  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:149:0x01da A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:150:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:151:0x01df  */
    /* JADX WARN: Code duplicated, block: B:153:0x01e3  */
    /* JADX WARN: Code duplicated, block: B:155:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:157:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:159:0x0205  */
    /* JADX WARN: Code duplicated, block: B:162:0x020b  */
    /* JADX WARN: Code duplicated, block: B:163:0x0223  */
    /* JADX WARN: Code duplicated, block: B:165:0x0227  */
    /* JADX WARN: Code duplicated, block: B:166:0x0229  */
    /* JADX WARN: Code duplicated, block: B:169:0x022f  */
    /* JADX WARN: Code duplicated, block: B:170:0x0253  */
    /* JADX WARN: Code duplicated, block: B:172:0x0257  */
    /* JADX WARN: Code duplicated, block: B:173:0x0259  */
    /* JADX WARN: Code duplicated, block: B:175:0x025d  */
    /* JADX WARN: Code duplicated, block: B:176:0x025f  */
    /* JADX WARN: Code duplicated, block: B:178:0x0263  */
    /* JADX WARN: Code duplicated, block: B:180:0x0275  */
    /* JADX WARN: Code duplicated, block: B:185:0x034b  */
    /* JADX WARN: Code duplicated, block: B:187:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006a  */
    /* JADX WARN: Code duplicated, block: B:38:0x006f  */
    /* JADX WARN: Code duplicated, block: B:40:0x0073  */
    /* JADX WARN: Code duplicated, block: B:42:0x007b  */
    /* JADX WARN: Code duplicated, block: B:43:0x007e  */
    /* JADX WARN: Code duplicated, block: B:47:0x0088  */
    /* JADX WARN: Code duplicated, block: B:48:0x008d  */
    /* JADX WARN: Code duplicated, block: B:50:0x0093  */
    /* JADX WARN: Code duplicated, block: B:52:0x0099  */
    /* JADX WARN: Code duplicated, block: B:53:0x009c  */
    /* JADX WARN: Code duplicated, block: B:57:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:67:0x00c0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:77:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00f1 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:85:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:88:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:89:0x0105  */
    /* JADX WARN: Code duplicated, block: B:91:0x010d  */
    /* JADX WARN: Code duplicated, block: B:93:0x0113  */
    /* JADX WARN: Code duplicated, block: B:94:0x0116  */
    /* JADX WARN: Code duplicated, block: B:98:0x0120  */
    /* JADX WARN: Code duplicated, block: B:99:0x0127  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void c(boolean z6, @NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable SelectableChipColors selectableChipColors, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        int i14;
        boolean z11;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        Modifier modifier2;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeB;
        BorderStroke borderStroke2;
        SelectableChipColors selectableChipColorsB;
        p<? super Composer, ? super Integer, l0> pVar4;
        p<? super Composer, ? super Integer, l0> pVar5;
        p<? super Composer, ? super Integer, l0> pVar6;
        Modifier modifier3;
        Object objH;
        SelectableChipColors selectableChipColors2;
        Composer composer2;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape2;
        BorderStroke borderStroke3;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        p<? super Composer, ? super Integer, l0> pVar9;
        boolean z12;
        Modifier modifier4;
        ScopeUpdateScope scopeUpdateScopeU;
        int i30;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(-1259208246);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.m(z6) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= composerS.k(onClick) ? 32 : 16;
        }
        int i31 = i12 & 4;
        if (i31 == 0) {
            if ((i10 & 896) == 0) {
                i13 |= composerS.k(modifier) ? 256 : 128;
            }
            i14 = i12 & 8;
            if (i14 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z10;
                    if (composerS.m(z11)) {
                        i15 = 2048;
                    } else {
                        i15 = 1024;
                    }
                    i13 |= i15;
                }
                i16 = i12 & 16;
                if (i16 != 0) {
                    i13 |= CpioConstants.C_ISBLK;
                } else if ((i10 & 57344) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i17 = 16384;
                    } else {
                        i17 = 8192;
                    }
                    i13 |= i17;
                }
                if ((i10 & 458752) != 0) {
                    if ((i12 & 32) == 0 || !composerS.k(shape)) {
                        i30 = 65536;
                    } else {
                        i30 = 131072;
                    }
                    i13 |= i30;
                }
                i18 = i12 & 64;
                if (i18 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.k(borderStroke)) {
                        i19 = 1048576;
                    } else {
                        i19 = 524288;
                    }
                    i13 |= i19;
                }
                if ((i10 & 29360128) != 0) {
                    i13 |= ((i12 & 128) == 0 || !composerS.k(selectableChipColors)) ? 4194304 : 8388608;
                }
                i20 = i12 & 256;
                if (i20 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar)) {
                        i21 = 67108864;
                    } else {
                        i21 = 33554432;
                    }
                    i13 |= i21;
                }
                i22 = i12 & 512;
                if (i22 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar2)) {
                        i23 = 536870912;
                    } else {
                        i23 = 268435456;
                    }
                    i13 |= i23;
                }
                i24 = i12 & 1024;
                if (i24 != 0) {
                    i25 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar3)) {
                        i26 = 4;
                    } else {
                        i26 = 2;
                    }
                    i25 = i11 | i26;
                } else {
                    i25 = i11;
                }
                if ((i12 & 2048) != 0) {
                    if ((i11 & 112) == 0) {
                        if (composerS.k(content)) {
                            i28 = 32;
                        } else {
                            i28 = 16;
                        }
                        i29 = i25 | i28;
                    } else {
                        i27 = i25;
                    }
                    if ((1533916891 & i13) != 306783378 && (i27 & 91) == 18 && composerS.b()) {
                        composerS.g();
                        modifier4 = modifier;
                        mutableInteractionSource3 = mutableInteractionSource;
                        shape2 = shape;
                        borderStroke3 = borderStroke;
                        pVar7 = pVar;
                        pVar8 = pVar2;
                        pVar9 = pVar3;
                        composer2 = composerS;
                        z12 = z11;
                        selectableChipColors2 = selectableChipColors;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i14 != 0) {
                                z11 = true;
                            }
                            if (i16 != 0) {
                                composerS.G(-492369756);
                                objH = composerS.H();
                                if (objH == Composer.Companion.a()) {
                                    objH = InteractionSourceKt.a();
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i12 & 32) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i13 &= -458753;
                            } else {
                                shapeB = shape;
                            }
                            if (i18 != 0) {
                                borderStroke2 = null;
                            } else {
                                borderStroke2 = borderStroke;
                            }
                            if ((i12 & 128) != 0) {
                                selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                                i13 &= -29360129;
                            } else {
                                selectableChipColorsB = selectableChipColors;
                            }
                            if (i20 != 0) {
                                pVar4 = null;
                            } else {
                                pVar4 = pVar;
                            }
                            if (i22 != 0) {
                                pVar5 = null;
                            } else {
                                pVar5 = pVar2;
                            }
                            if (i24 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar3;
                            }
                            modifier3 = modifier2;
                        } else {
                            composerS.g();
                            if ((i12 & 32) != 0) {
                                i13 &= -458753;
                            }
                            if ((i12 & 128) != 0) {
                                i13 &= -29360129;
                            }
                            modifier3 = modifier;
                            mutableInteractionSource2 = mutableInteractionSource;
                            shapeB = shape;
                            borderStroke2 = borderStroke;
                            selectableChipColorsB = selectableChipColors;
                            pVar4 = pVar;
                            pVar5 = pVar2;
                            pVar6 = pVar3;
                            i13 = i13;
                            z11 = z11;
                        }
                        composerS.A();
                        int i32 = i13 << 3;
                        int i33 = ((i13 >> 9) & 14) | (i32 & 112) | ((i13 >> 15) & 896);
                        State<Color> stateC = selectableChipColorsB.c(z11, z6, composerS, i33);
                        boolean z13 = z11;
                        Modifier modifier5 = modifier3;
                        selectableChipColors2 = selectableChipColorsB;
                        composer2 = composerS;
                        SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i33).getValue().v(), Color.l(stateC.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z13, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i32 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape2 = shapeB;
                        borderStroke3 = borderStroke2;
                        pVar7 = pVar4;
                        pVar8 = pVar5;
                        pVar9 = pVar6;
                        z12 = z13;
                        modifier4 = modifier5;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
                }
                i29 = i25 | 48;
                i27 = i29;
                if ((1533916891 & i13) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i34 = i13 << 3;
                    int i35 = ((i13 >> 9) & 14) | (i34 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC2 = selectableChipColorsB.c(z11, z6, composerS, i35);
                    boolean z14 = z11;
                    Modifier modifier6 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i35).getValue().v(), Color.l(stateC2.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC2, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z14, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i34 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z14;
                    modifier4 = modifier6;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i36 = i13 << 3;
                    int i37 = ((i13 >> 9) & 14) | (i36 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC3 = selectableChipColorsB.c(z11, z6, composerS, i37);
                    boolean z15 = z11;
                    Modifier modifier7 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i37).getValue().v(), Color.l(stateC3.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC3, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z15, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i36 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z15;
                    modifier4 = modifier7;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
            }
            i13 |= 3072;
            z11 = z10;
            i16 = i12 & 16;
            if (i16 != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i13 |= i17;
            }
            if ((i10 & 458752) != 0) {
                if ((i12 & 32) == 0) {
                    i30 = 65536;
                } else {
                    i30 = 65536;
                }
                i13 |= i30;
            }
            i18 = i12 & 64;
            if (i18 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(borderStroke)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i13 |= i19;
            }
            if ((i10 & 29360128) != 0) {
                i13 |= ((i12 & 128) == 0 || !composerS.k(selectableChipColors)) ? 4194304 : 8388608;
            }
            i20 = i12 & 256;
            if (i20 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 67108864;
                } else {
                    i21 = 33554432;
                }
                i13 |= i21;
            }
            i22 = i12 & 512;
            if (i22 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 536870912;
                } else {
                    i23 = 268435456;
                }
                i13 |= i23;
            }
            i24 = i12 & 1024;
            if (i24 != 0) {
                i25 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar3)) {
                    i26 = 4;
                } else {
                    i26 = 2;
                }
                i25 = i11 | i26;
            } else {
                i25 = i11;
            }
            if ((i12 & 2048) != 0) {
                if ((i11 & 112) == 0) {
                    if (composerS.k(content)) {
                        i28 = 32;
                    } else {
                        i28 = 16;
                    }
                    i29 = i25 | i28;
                } else {
                    i27 = i25;
                }
                if ((1533916891 & i13) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i38 = i13 << 3;
                    int i39 = ((i13 >> 9) & 14) | (i38 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC4 = selectableChipColorsB.c(z11, z6, composerS, i39);
                    boolean z16 = z11;
                    Modifier modifier8 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i39).getValue().v(), Color.l(stateC4.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC4, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z16, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i38 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z16;
                    modifier4 = modifier8;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i310 = i13 << 3;
                    int i311 = ((i13 >> 9) & 14) | (i310 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC5 = selectableChipColorsB.c(z11, z6, composerS, i311);
                    boolean z17 = z11;
                    Modifier modifier9 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i311).getValue().v(), Color.l(stateC5.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC5, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z17, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i310 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z17;
                    modifier4 = modifier9;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
            }
            i29 = i25 | 48;
            i27 = i29;
            if ((1533916891 & i13) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i312 = i13 << 3;
                int i313 = ((i13 >> 9) & 14) | (i312 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC6 = selectableChipColorsB.c(z11, z6, composerS, i313);
                boolean z18 = z11;
                Modifier modifier10 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i313).getValue().v(), Color.l(stateC6.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC6, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z18, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i312 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z18;
                modifier4 = modifier10;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i314 = i13 << 3;
                int i315 = ((i13 >> 9) & 14) | (i314 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC7 = selectableChipColorsB.c(z11, z6, composerS, i315);
                boolean z19 = z11;
                Modifier modifier11 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i315).getValue().v(), Color.l(stateC7.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC7, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z19, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i314 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z19;
                modifier4 = modifier11;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
        }
        i13 |= 384;
        i14 = i12 & 8;
        if (i14 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z10;
                if (composerS.m(z11)) {
                    i15 = 2048;
                } else {
                    i15 = 1024;
                }
                i13 |= i15;
            }
            i16 = i12 & 16;
            if (i16 != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i17 = 16384;
                } else {
                    i17 = 8192;
                }
                i13 |= i17;
            }
            if ((i10 & 458752) != 0) {
                if ((i12 & 32) == 0) {
                    i30 = 65536;
                } else {
                    i30 = 65536;
                }
                i13 |= i30;
            }
            i18 = i12 & 64;
            if (i18 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.k(borderStroke)) {
                    i19 = 1048576;
                } else {
                    i19 = 524288;
                }
                i13 |= i19;
            }
            if ((i10 & 29360128) != 0) {
                i13 |= ((i12 & 128) == 0 || !composerS.k(selectableChipColors)) ? 4194304 : 8388608;
            }
            i20 = i12 & 256;
            if (i20 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 67108864;
                } else {
                    i21 = 33554432;
                }
                i13 |= i21;
            }
            i22 = i12 & 512;
            if (i22 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 536870912;
                } else {
                    i23 = 268435456;
                }
                i13 |= i23;
            }
            i24 = i12 & 1024;
            if (i24 != 0) {
                i25 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar3)) {
                    i26 = 4;
                } else {
                    i26 = 2;
                }
                i25 = i11 | i26;
            } else {
                i25 = i11;
            }
            if ((i12 & 2048) != 0) {
                if ((i11 & 112) == 0) {
                    if (composerS.k(content)) {
                        i28 = 32;
                    } else {
                        i28 = 16;
                    }
                    i29 = i25 | i28;
                } else {
                    i27 = i25;
                }
                if ((1533916891 & i13) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i316 = i13 << 3;
                    int i317 = ((i13 >> 9) & 14) | (i316 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC8 = selectableChipColorsB.c(z11, z6, composerS, i317);
                    boolean z110 = z11;
                    Modifier modifier12 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i317).getValue().v(), Color.l(stateC8.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC8, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z110, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i316 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z110;
                    modifier4 = modifier12;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i14 != 0) {
                            z11 = true;
                        }
                        if (i16 != 0) {
                            composerS.G(-492369756);
                            objH = composerS.H();
                            if (objH == Composer.Companion.a()) {
                                objH = InteractionSourceKt.a();
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i12 & 32) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i13 &= -458753;
                        } else {
                            shapeB = shape;
                        }
                        if (i18 != 0) {
                            borderStroke2 = null;
                        } else {
                            borderStroke2 = borderStroke;
                        }
                        if ((i12 & 128) != 0) {
                            selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                            i13 &= -29360129;
                        } else {
                            selectableChipColorsB = selectableChipColors;
                        }
                        if (i20 != 0) {
                            pVar4 = null;
                        } else {
                            pVar4 = pVar;
                        }
                        if (i22 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar3;
                        }
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    int i318 = i13 << 3;
                    int i319 = ((i13 >> 9) & 14) | (i318 & 112) | ((i13 >> 15) & 896);
                    State<Color> stateC9 = selectableChipColorsB.c(z11, z6, composerS, i319);
                    boolean z111 = z11;
                    Modifier modifier13 = modifier3;
                    selectableChipColors2 = selectableChipColorsB;
                    composer2 = composerS;
                    SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i319).getValue().v(), Color.l(stateC9.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC9, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z111, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i318 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeB;
                    borderStroke3 = borderStroke2;
                    pVar7 = pVar4;
                    pVar8 = pVar5;
                    pVar9 = pVar6;
                    z12 = z111;
                    modifier4 = modifier13;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
            }
            i29 = i25 | 48;
            i27 = i29;
            if ((1533916891 & i13) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i3110 = i13 << 3;
                int i3111 = ((i13 >> 9) & 14) | (i3110 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC10 = selectableChipColorsB.c(z11, z6, composerS, i3111);
                boolean z112 = z11;
                Modifier modifier14 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i3111).getValue().v(), Color.l(stateC10.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC10, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z112, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i3110 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z112;
                modifier4 = modifier14;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i3112 = i13 << 3;
                int i3113 = ((i13 >> 9) & 14) | (i3112 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC11 = selectableChipColorsB.c(z11, z6, composerS, i3113);
                boolean z113 = z11;
                Modifier modifier15 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i3113).getValue().v(), Color.l(stateC11.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC11, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z113, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i3112 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z113;
                modifier4 = modifier15;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
        }
        i13 |= 3072;
        z11 = z10;
        i16 = i12 & 16;
        if (i16 != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((i10 & 57344) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i17 = 16384;
            } else {
                i17 = 8192;
            }
            i13 |= i17;
        }
        if ((i10 & 458752) != 0) {
            if ((i12 & 32) == 0) {
                i30 = 65536;
            } else {
                i30 = 65536;
            }
            i13 |= i30;
        }
        i18 = i12 & 64;
        if (i18 != 0) {
            i13 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.k(borderStroke)) {
                i19 = 1048576;
            } else {
                i19 = 524288;
            }
            i13 |= i19;
        }
        if ((i10 & 29360128) != 0) {
            i13 |= ((i12 & 128) == 0 || !composerS.k(selectableChipColors)) ? 4194304 : 8388608;
        }
        i20 = i12 & 256;
        if (i20 != 0) {
            i13 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.k(pVar)) {
                i21 = 67108864;
            } else {
                i21 = 33554432;
            }
            i13 |= i21;
        }
        i22 = i12 & 512;
        if (i22 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            if (composerS.k(pVar2)) {
                i23 = 536870912;
            } else {
                i23 = 268435456;
            }
            i13 |= i23;
        }
        i24 = i12 & 1024;
        if (i24 != 0) {
            i25 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            if (composerS.k(pVar3)) {
                i26 = 4;
            } else {
                i26 = 2;
            }
            i25 = i11 | i26;
        } else {
            i25 = i11;
        }
        if ((i12 & 2048) != 0) {
            if ((i11 & 112) == 0) {
                if (composerS.k(content)) {
                    i28 = 32;
                } else {
                    i28 = 16;
                }
                i29 = i25 | i28;
            } else {
                i27 = i25;
            }
            if ((1533916891 & i13) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i3114 = i13 << 3;
                int i3115 = ((i13 >> 9) & 14) | (i3114 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC12 = selectableChipColorsB.c(z11, z6, composerS, i3115);
                boolean z114 = z11;
                Modifier modifier16 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i3115).getValue().v(), Color.l(stateC12.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC12, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z114, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i3114 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z114;
                modifier4 = modifier16;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i14 != 0) {
                        z11 = true;
                    }
                    if (i16 != 0) {
                        composerS.G(-492369756);
                        objH = composerS.H();
                        if (objH == Composer.Companion.a()) {
                            objH = InteractionSourceKt.a();
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i12 & 32) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i13 &= -458753;
                    } else {
                        shapeB = shape;
                    }
                    if (i18 != 0) {
                        borderStroke2 = null;
                    } else {
                        borderStroke2 = borderStroke;
                    }
                    if ((i12 & 128) != 0) {
                        selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                        i13 &= -29360129;
                    } else {
                        selectableChipColorsB = selectableChipColors;
                    }
                    if (i20 != 0) {
                        pVar4 = null;
                    } else {
                        pVar4 = pVar;
                    }
                    if (i22 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar3;
                    }
                    modifier3 = modifier2;
                }
                composerS.A();
                int i3116 = i13 << 3;
                int i3117 = ((i13 >> 9) & 14) | (i3116 & 112) | ((i13 >> 15) & 896);
                State<Color> stateC13 = selectableChipColorsB.c(z11, z6, composerS, i3117);
                boolean z115 = z11;
                Modifier modifier17 = modifier3;
                selectableChipColors2 = selectableChipColorsB;
                composer2 = composerS;
                SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i3117).getValue().v(), Color.l(stateC13.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC13, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z115, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i3116 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeB;
                borderStroke3 = borderStroke2;
                pVar7 = pVar4;
                pVar8 = pVar5;
                pVar9 = pVar6;
                z12 = z115;
                modifier4 = modifier17;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
        }
        i29 = i25 | 48;
        i27 = i29;
        if ((1533916891 & i13) != 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z11 = true;
                }
                if (i16 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i12 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i13 &= -458753;
                } else {
                    shapeB = shape;
                }
                if (i18 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i12 & 128) != 0) {
                    selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                    i13 &= -29360129;
                } else {
                    selectableChipColorsB = selectableChipColors;
                }
                if (i20 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i22 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar2;
                }
                if (i24 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar3;
                }
                modifier3 = modifier2;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z11 = true;
                }
                if (i16 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i12 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i13 &= -458753;
                } else {
                    shapeB = shape;
                }
                if (i18 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i12 & 128) != 0) {
                    selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                    i13 &= -29360129;
                } else {
                    selectableChipColorsB = selectableChipColors;
                }
                if (i20 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i22 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar2;
                }
                if (i24 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar3;
                }
                modifier3 = modifier2;
            }
            composerS.A();
            int i3118 = i13 << 3;
            int i3119 = ((i13 >> 9) & 14) | (i3118 & 112) | ((i13 >> 15) & 896);
            State<Color> stateC14 = selectableChipColorsB.c(z11, z6, composerS, i3119);
            boolean z116 = z11;
            Modifier modifier18 = modifier3;
            selectableChipColors2 = selectableChipColorsB;
            composer2 = composerS;
            SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i3119).getValue().v(), Color.l(stateC14.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC14, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z116, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i3118 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeB;
            borderStroke3 = borderStroke2;
            pVar7 = pVar4;
            pVar8 = pVar5;
            pVar9 = pVar6;
            z12 = z116;
            modifier4 = modifier18;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z11 = true;
                }
                if (i16 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i12 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i13 &= -458753;
                } else {
                    shapeB = shape;
                }
                if (i18 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i12 & 128) != 0) {
                    selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                    i13 &= -29360129;
                } else {
                    selectableChipColorsB = selectableChipColors;
                }
                if (i20 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i22 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar2;
                }
                if (i24 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar3;
                }
                modifier3 = modifier2;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i14 != 0) {
                    z11 = true;
                }
                if (i16 != 0) {
                    composerS.G(-492369756);
                    objH = composerS.H();
                    if (objH == Composer.Companion.a()) {
                        objH = InteractionSourceKt.a();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i12 & 32) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i13 &= -458753;
                } else {
                    shapeB = shape;
                }
                if (i18 != 0) {
                    borderStroke2 = null;
                } else {
                    borderStroke2 = borderStroke;
                }
                if ((i12 & 128) != 0) {
                    selectableChipColorsB = ChipDefaults.INSTANCE.b(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 805306368, 511);
                    i13 &= -29360129;
                } else {
                    selectableChipColorsB = selectableChipColors;
                }
                if (i20 != 0) {
                    pVar4 = null;
                } else {
                    pVar4 = pVar;
                }
                if (i22 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar2;
                }
                if (i24 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar3;
                }
                modifier3 = modifier2;
            }
            composerS.A();
            int i31110 = i13 << 3;
            int i31111 = ((i13 >> 9) & 14) | (i31110 & 112) | ((i13 >> 15) & 896);
            State<Color> stateC15 = selectableChipColorsB.c(z11, z6, composerS, i31111);
            boolean z117 = z11;
            Modifier modifier19 = modifier3;
            selectableChipColors2 = selectableChipColorsB;
            composer2 = composerS;
            SurfaceKt.d(z6, onClick, SemanticsModifierKt.c(modifier3, false, ChipKt$FilterChip$2.INSTANCE, 1, null), false, shapeB, selectableChipColorsB.d(z11, z6, composerS, i31111).getValue().v(), Color.l(stateC15.getValue().v(), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke2, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 722126431, true, new ChipKt$FilterChip$3(stateC15, pVar4, z6, pVar5, pVar6, content, i27, selectableChipColors2, z117, i13)), composerS, (i13 & 14) | (i13 & 112) | ((i13 >> 3) & 57344) | (i31110 & 29360128) | ((i13 << 15) & 1879048192), 6, 264);
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeB;
            borderStroke3 = borderStroke2;
            pVar7 = pVar4;
            pVar8 = pVar5;
            pVar9 = pVar6;
            z12 = z117;
            modifier4 = modifier19;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ChipKt$FilterChip$4(z6, onClick, modifier4, z12, mutableInteractionSource3, shape2, borderStroke3, selectableChipColors2, pVar7, pVar8, pVar9, content, i10, i11, i12));
    }

    static {
        float f = 8;
        LeadingIconEndSpacing = Dp.f(f);
        TrailingIconSpacing = Dp.f(f);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011c  */
    /* JADX WARN: Code duplicated, block: B:104:0x0135  */
    /* JADX WARN: Code duplicated, block: B:106:0x0140  */
    /* JADX WARN: Code duplicated, block: B:116:0x0167 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:117:0x0169  */
    /* JADX WARN: Code duplicated, block: B:118:0x016c  */
    /* JADX WARN: Code duplicated, block: B:120:0x0170  */
    /* JADX WARN: Code duplicated, block: B:121:0x0172  */
    /* JADX WARN: Code duplicated, block: B:123:0x0176  */
    /* JADX WARN: Code duplicated, block: B:125:0x0188  */
    /* JADX WARN: Code duplicated, block: B:127:0x0195  */
    /* JADX WARN: Code duplicated, block: B:130:0x019b  */
    /* JADX WARN: Code duplicated, block: B:131:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:134:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:137:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:138:0x01d9  */
    /* JADX WARN: Code duplicated, block: B:140:0x01dc  */
    /* JADX WARN: Code duplicated, block: B:142:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:147:0x0293  */
    /* JADX WARN: Code duplicated, block: B:149:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:59:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00af  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:66:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:72:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:80:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0103  */
    /* JADX WARN: Code duplicated, block: B:94:0x0107  */
    /* JADX WARN: Code duplicated, block: B:96:0x010d  */
    /* JADX WARN: Code duplicated, block: B:97:0x0110  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public static final void a(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, @Nullable BorderStroke borderStroke, @Nullable ChipColors chipColors, @Nullable p<? super Composer, ? super Integer, l0> pVar, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        Shape shape2;
        int i17;
        BorderStroke borderStroke2;
        int i18;
        ChipColors chipColors2;
        int i19;
        int i20;
        int i21;
        Modifier modifier2;
        boolean z10;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeB;
        ChipColors chipColorsA;
        p<? super Composer, ? super Integer, l0> pVar2;
        BorderStroke borderStroke3;
        ChipColors chipColors3;
        Object objH;
        Composer composer2;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape3;
        BorderStroke borderStroke4;
        p<? super Composer, ? super Integer, l0> pVar3;
        boolean z11;
        ChipColors chipColors4;
        ScopeUpdateScope scopeUpdateScopeU;
        int i22;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(-368396408);
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
                        if (composerS.k(mutableInteractionSource)) {
                            i16 = 2048;
                        } else {
                            i16 = 1024;
                        }
                        i12 |= i16;
                    }
                    if ((57344 & i10) == 0) {
                        if ((i11 & 16) == 0) {
                            shape2 = shape;
                            int i24 = composerS.k(shape2) ? 16384 : 8192;
                            i12 |= i24;
                        } else {
                            shape2 = shape;
                        }
                        i12 |= i24;
                    } else {
                        shape2 = shape;
                    }
                    i17 = i11 & 32;
                    if (i17 != 0) {
                        if ((458752 & i10) == 0) {
                            borderStroke2 = borderStroke;
                            if (composerS.k(borderStroke2)) {
                                i18 = 131072;
                            } else {
                                i18 = 65536;
                            }
                            i12 |= i18;
                        }
                        if ((i10 & 3670016) == 0) {
                            chipColors2 = chipColors;
                            if ((i11 & 64) == 0 || !composerS.k(chipColors2)) {
                                i22 = 524288;
                            } else {
                                i22 = 1048576;
                            }
                            i12 |= i22;
                        } else {
                            chipColors2 = chipColors;
                        }
                        i19 = i11 & 128;
                        if (i19 != 0) {
                            i12 |= 12582912;
                        } else if ((i10 & 29360128) == 0) {
                            if (composerS.k(pVar)) {
                                i20 = 8388608;
                            } else {
                                i20 = 4194304;
                            }
                            i12 |= i20;
                        }
                        if ((i11 & 256) != 0) {
                            if ((i10 & 234881024) == 0) {
                                if (composerS.k(content)) {
                                    i21 = 67108864;
                                } else {
                                    i21 = 33554432;
                                }
                            }
                            if ((191739611 & i12) == 38347922 || !composerS.b()) {
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
                                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                                    } else {
                                        mutableInteractionSource2 = mutableInteractionSource;
                                    }
                                    if ((i11 & 16) != 0) {
                                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                        i12 &= -57345;
                                    } else {
                                        shapeB = shape2;
                                    }
                                    if (i17 != 0) {
                                        borderStroke2 = null;
                                    }
                                    if ((i11 & 64) != 0) {
                                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                        i12 &= -3670017;
                                    } else {
                                        chipColorsA = chipColors2;
                                    }
                                    if (i19 != 0) {
                                        pVar2 = null;
                                    } else {
                                        pVar2 = pVar;
                                    }
                                    borderStroke3 = borderStroke2;
                                    chipColors3 = chipColorsA;
                                } else {
                                    composerS.g();
                                    if ((i11 & 16) != 0) {
                                        i12 &= -57345;
                                    }
                                    if ((i11 & 64) != 0) {
                                        i12 &= -3670017;
                                    }
                                    modifier2 = modifier;
                                    mutableInteractionSource2 = mutableInteractionSource;
                                    pVar2 = pVar;
                                    shapeB = shape2;
                                    borderStroke3 = borderStroke2;
                                    chipColors3 = chipColors2;
                                    z10 = z6;
                                }
                                composerS.A();
                                int i25 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                                State<Color> stateB = chipColors3.b(z10, composerS, i25);
                                composer2 = composerS;
                                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i25).getValue().v(), Color.l(b(stateB), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                                modifier3 = modifier2;
                                mutableInteractionSource3 = mutableInteractionSource2;
                                shape3 = shapeB;
                                borderStroke4 = borderStroke3;
                                pVar3 = pVar2;
                                z11 = z10;
                                chipColors4 = chipColors3;
                            } else {
                                composerS.g();
                                modifier3 = modifier;
                                z11 = z6;
                                mutableInteractionSource3 = mutableInteractionSource;
                                pVar3 = pVar;
                                shape3 = shape2;
                                borderStroke4 = borderStroke2;
                                chipColors4 = chipColors2;
                                composer2 = composerS;
                            }
                            scopeUpdateScopeU = composer2.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                        }
                        i21 = 100663296;
                        i12 |= i21;
                        if ((191739611 & i12) == 38347922) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i26 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB2 = chipColors3.b(z10, composerS, i26);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i26).getValue().v(), Color.l(b(stateB2), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB2, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i27 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB3 = chipColors3.b(z10, composerS, i27);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i27).getValue().v(), Color.l(b(stateB3), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB3, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                    }
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    borderStroke2 = borderStroke;
                    if ((i10 & 3670016) == 0) {
                        chipColors2 = chipColors;
                        if ((i11 & 64) == 0) {
                            i22 = 524288;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    } else {
                        chipColors2 = chipColors;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(content)) {
                                i21 = 67108864;
                            } else {
                                i21 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i28 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB4 = chipColors3.b(z10, composerS, i28);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i28).getValue().v(), Color.l(b(stateB4), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB4, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i29 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB5 = chipColors3.b(z10, composerS, i29);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i29).getValue().v(), Color.l(b(stateB5), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB5, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                    }
                    i21 = 100663296;
                    i12 |= i21;
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i210 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB6 = chipColors3.b(z10, composerS, i210);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i210).getValue().v(), Color.l(b(stateB6), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB6, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i211 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB7 = chipColors3.b(z10, composerS, i211);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211).getValue().v(), Color.l(b(stateB7), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB7, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i12 |= 3072;
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i24;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((458752 & i10) == 0) {
                        borderStroke2 = borderStroke;
                        if (composerS.k(borderStroke2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        chipColors2 = chipColors;
                        if ((i11 & 64) == 0) {
                            i22 = 524288;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    } else {
                        chipColors2 = chipColors;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(content)) {
                                i21 = 67108864;
                            } else {
                                i21 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i212 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB8 = chipColors3.b(z10, composerS, i212);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i212).getValue().v(), Color.l(b(stateB8), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB8, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i213 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB9 = chipColors3.b(z10, composerS, i213);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i213).getValue().v(), Color.l(b(stateB9), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB9, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                    }
                    i21 = 100663296;
                    i12 |= i21;
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i214 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB10 = chipColors3.b(z10, composerS, i214);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i214).getValue().v(), Color.l(b(stateB10), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB10, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i215 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB11 = chipColors3.b(z10, composerS, i215);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i215).getValue().v(), Color.l(b(stateB11), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                borderStroke2 = borderStroke;
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i216 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB12 = chipColors3.b(z10, composerS, i216);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i216).getValue().v(), Color.l(b(stateB12), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB12, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i217 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB13 = chipColors3.b(z10, composerS, i217);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i217).getValue().v(), Color.l(b(stateB13), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB13, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i218 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB14 = chipColors3.b(z10, composerS, i218);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i218).getValue().v(), Color.l(b(stateB14), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB14, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i219 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB15 = chipColors3.b(z10, composerS, i219);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i219).getValue().v(), Color.l(b(stateB15), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB15, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= 384;
            i15 = i11 & 8;
            if (i15 != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i24;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((458752 & i10) == 0) {
                        borderStroke2 = borderStroke;
                        if (composerS.k(borderStroke2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        chipColors2 = chipColors;
                        if ((i11 & 64) == 0) {
                            i22 = 524288;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    } else {
                        chipColors2 = chipColors;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(content)) {
                                i21 = 67108864;
                            } else {
                                i21 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i2110 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB16 = chipColors3.b(z10, composerS, i2110);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2110).getValue().v(), Color.l(b(stateB16), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB16, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i2111 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB17 = chipColors3.b(z10, composerS, i2111);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111).getValue().v(), Color.l(b(stateB17), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB17, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                    }
                    i21 = 100663296;
                    i12 |= i21;
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2112 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB18 = chipColors3.b(z10, composerS, i2112);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2112).getValue().v(), Color.l(b(stateB18), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB18, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2113 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB19 = chipColors3.b(z10, composerS, i2113);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2113).getValue().v(), Color.l(b(stateB19), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB19, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                borderStroke2 = borderStroke;
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2114 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB110 = chipColors3.b(z10, composerS, i2114);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2114).getValue().v(), Color.l(b(stateB110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB110, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2115 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB111 = chipColors3.b(z10, composerS, i2115);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2115).getValue().v(), Color.l(b(stateB111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2116 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB112 = chipColors3.b(z10, composerS, i2116);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2116).getValue().v(), Color.l(b(stateB112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB112, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2117 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB113 = chipColors3.b(z10, composerS, i2117);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2117).getValue().v(), Color.l(b(stateB113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB113, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= 3072;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i12 |= i24;
            } else {
                shape2 = shape;
            }
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((458752 & i10) == 0) {
                    borderStroke2 = borderStroke;
                    if (composerS.k(borderStroke2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2118 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB114 = chipColors3.b(z10, composerS, i2118);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2118).getValue().v(), Color.l(b(stateB114), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB114, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2119 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB115 = chipColors3.b(z10, composerS, i2119);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2119).getValue().v(), Color.l(b(stateB115), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB115, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21110 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB116 = chipColors3.b(z10, composerS, i21110);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21110).getValue().v(), Color.l(b(stateB116), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB116, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21111 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB117 = chipColors3.b(z10, composerS, i21111);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111).getValue().v(), Color.l(b(stateB117), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB117, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            borderStroke2 = borderStroke;
            if ((i10 & 3670016) == 0) {
                chipColors2 = chipColors;
                if ((i11 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            } else {
                chipColors2 = chipColors;
            }
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i21 = 67108864;
                    } else {
                        i21 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21112 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB118 = chipColors3.b(z10, composerS, i21112);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21112).getValue().v(), Color.l(b(stateB118), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB118, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21113 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB119 = chipColors3.b(z10, composerS, i21113);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21113).getValue().v(), Color.l(b(stateB119), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB119, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i21 = 100663296;
            i12 |= i21;
            if ((191739611 & i12) == 38347922) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21114 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB1110 = chipColors3.b(z10, composerS, i21114);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21114).getValue().v(), Color.l(b(stateB1110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1110, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21115 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB1111 = chipColors3.b(z10, composerS, i21115);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21115).getValue().v(), Color.l(b(stateB1111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1111, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
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
                    if (composerS.k(mutableInteractionSource)) {
                        i16 = 2048;
                    } else {
                        i16 = 1024;
                    }
                    i12 |= i16;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        shape2 = shape;
                        if (composerS.k(shape2)) {
                        }
                        i12 |= i24;
                    } else {
                        shape2 = shape;
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i17 = i11 & 32;
                if (i17 != 0) {
                    if ((458752 & i10) == 0) {
                        borderStroke2 = borderStroke;
                        if (composerS.k(borderStroke2)) {
                            i18 = 131072;
                        } else {
                            i18 = 65536;
                        }
                        i12 |= i18;
                    }
                    if ((i10 & 3670016) == 0) {
                        chipColors2 = chipColors;
                        if ((i11 & 64) == 0) {
                            i22 = 524288;
                        } else {
                            i22 = 524288;
                        }
                        i12 |= i22;
                    } else {
                        chipColors2 = chipColors;
                    }
                    i19 = i11 & 128;
                    if (i19 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(content)) {
                                i21 = 67108864;
                            } else {
                                i21 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i21116 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB1112 = chipColors3.b(z10, composerS, i21116);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21116).getValue().v(), Color.l(b(stateB1112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1112, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                } else {
                                    mutableInteractionSource2 = mutableInteractionSource;
                                }
                                if ((i11 & 16) != 0) {
                                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                    i12 &= -57345;
                                } else {
                                    shapeB = shape2;
                                }
                                if (i17 != 0) {
                                    borderStroke2 = null;
                                }
                                if ((i11 & 64) != 0) {
                                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                    i12 &= -3670017;
                                } else {
                                    chipColorsA = chipColors2;
                                }
                                if (i19 != 0) {
                                    pVar2 = null;
                                } else {
                                    pVar2 = pVar;
                                }
                                borderStroke3 = borderStroke2;
                                chipColors3 = chipColorsA;
                            }
                            composerS.A();
                            int i21117 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                            State<Color> stateB1113 = chipColors3.b(z10, composerS, i21117);
                            composer2 = composerS;
                            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21117).getValue().v(), Color.l(b(stateB1113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1113, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                            modifier3 = modifier2;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            shape3 = shapeB;
                            borderStroke4 = borderStroke3;
                            pVar3 = pVar2;
                            z11 = z10;
                            chipColors4 = chipColors3;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                    }
                    i21 = 100663296;
                    i12 |= i21;
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i21118 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB1114 = chipColors3.b(z10, composerS, i21118);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21118).getValue().v(), Color.l(b(stateB1114), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1114, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i21119 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB1115 = chipColors3.b(z10, composerS, i21119);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21119).getValue().v(), Color.l(b(stateB1115), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1115, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                borderStroke2 = borderStroke;
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i211110 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB1116 = chipColors3.b(z10, composerS, i211110);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211110).getValue().v(), Color.l(b(stateB1116), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1116, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i211111 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB1117 = chipColors3.b(z10, composerS, i211111);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211111).getValue().v(), Color.l(b(stateB1117), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1117, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211112 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB1118 = chipColors3.b(z10, composerS, i211112);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211112).getValue().v(), Color.l(b(stateB1118), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1118, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211113 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB1119 = chipColors3.b(z10, composerS, i211113);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211113).getValue().v(), Color.l(b(stateB1119), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1119, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= 3072;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i12 |= i24;
            } else {
                shape2 = shape;
            }
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((458752 & i10) == 0) {
                    borderStroke2 = borderStroke;
                    if (composerS.k(borderStroke2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i211114 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB11110 = chipColors3.b(z10, composerS, i211114);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211114).getValue().v(), Color.l(b(stateB11110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11110, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i211115 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB11111 = chipColors3.b(z10, composerS, i211115);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211115).getValue().v(), Color.l(b(stateB11111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11111, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211116 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB11112 = chipColors3.b(z10, composerS, i211116);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211116).getValue().v(), Color.l(b(stateB11112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11112, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211117 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB11113 = chipColors3.b(z10, composerS, i211117);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211117).getValue().v(), Color.l(b(stateB11113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11113, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            borderStroke2 = borderStroke;
            if ((i10 & 3670016) == 0) {
                chipColors2 = chipColors;
                if ((i11 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            } else {
                chipColors2 = chipColors;
            }
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i21 = 67108864;
                    } else {
                        i21 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211118 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB11114 = chipColors3.b(z10, composerS, i211118);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211118).getValue().v(), Color.l(b(stateB11114), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11114, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i211119 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB11115 = chipColors3.b(z10, composerS, i211119);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i211119).getValue().v(), Color.l(b(stateB11115), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11115, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i21 = 100663296;
            i12 |= i21;
            if ((191739611 & i12) == 38347922) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i2111110 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB11116 = chipColors3.b(z10, composerS, i2111110);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111110).getValue().v(), Color.l(b(stateB11116), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11116, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i2111111 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB11117 = chipColors3.b(z10, composerS, i2111111);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111111).getValue().v(), Color.l(b(stateB11117), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11117, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
        }
        i12 |= 384;
        i15 = i11 & 8;
        if (i15 != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i16 = 2048;
                } else {
                    i16 = 1024;
                }
                i12 |= i16;
            }
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    shape2 = shape;
                    if (composerS.k(shape2)) {
                    }
                    i12 |= i24;
                } else {
                    shape2 = shape;
                }
                i12 |= i24;
            } else {
                shape2 = shape;
            }
            i17 = i11 & 32;
            if (i17 != 0) {
                if ((458752 & i10) == 0) {
                    borderStroke2 = borderStroke;
                    if (composerS.k(borderStroke2)) {
                        i18 = 131072;
                    } else {
                        i18 = 65536;
                    }
                    i12 |= i18;
                }
                if ((i10 & 3670016) == 0) {
                    chipColors2 = chipColors;
                    if ((i11 & 64) == 0) {
                        i22 = 524288;
                    } else {
                        i22 = 524288;
                    }
                    i12 |= i22;
                } else {
                    chipColors2 = chipColors;
                }
                i19 = i11 & 128;
                if (i19 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i12 |= i20;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i21 = 67108864;
                        } else {
                            i21 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2111112 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB11118 = chipColors3.b(z10, composerS, i2111112);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111112).getValue().v(), Color.l(b(stateB11118), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11118, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            } else {
                                mutableInteractionSource2 = mutableInteractionSource;
                            }
                            if ((i11 & 16) != 0) {
                                shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                                i12 &= -57345;
                            } else {
                                shapeB = shape2;
                            }
                            if (i17 != 0) {
                                borderStroke2 = null;
                            }
                            if ((i11 & 64) != 0) {
                                chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                                i12 &= -3670017;
                            } else {
                                chipColorsA = chipColors2;
                            }
                            if (i19 != 0) {
                                pVar2 = null;
                            } else {
                                pVar2 = pVar;
                            }
                            borderStroke3 = borderStroke2;
                            chipColors3 = chipColorsA;
                        }
                        composerS.A();
                        int i2111113 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                        State<Color> stateB11119 = chipColors3.b(z10, composerS, i2111113);
                        composer2 = composerS;
                        SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111113).getValue().v(), Color.l(b(stateB11119), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB11119, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        shape3 = shapeB;
                        borderStroke4 = borderStroke3;
                        pVar3 = pVar2;
                        z11 = z10;
                        chipColors4 = chipColors3;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
                }
                i21 = 100663296;
                i12 |= i21;
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2111114 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111110 = chipColors3.b(z10, composerS, i2111114);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111114).getValue().v(), Color.l(b(stateB111110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111110, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2111115 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111111 = chipColors3.b(z10, composerS, i2111115);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111115).getValue().v(), Color.l(b(stateB111111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111111, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            borderStroke2 = borderStroke;
            if ((i10 & 3670016) == 0) {
                chipColors2 = chipColors;
                if ((i11 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            } else {
                chipColors2 = chipColors;
            }
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i21 = 67108864;
                    } else {
                        i21 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2111116 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111112 = chipColors3.b(z10, composerS, i2111116);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111116).getValue().v(), Color.l(b(stateB111112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111112, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i2111117 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111113 = chipColors3.b(z10, composerS, i2111117);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111117).getValue().v(), Color.l(b(stateB111113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111113, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i21 = 100663296;
            i12 |= i21;
            if ((191739611 & i12) == 38347922) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i2111118 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB111114 = chipColors3.b(z10, composerS, i2111118);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111118).getValue().v(), Color.l(b(stateB111114), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111114, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i2111119 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB111115 = chipColors3.b(z10, composerS, i2111119);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i2111119).getValue().v(), Color.l(b(stateB111115), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111115, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
        }
        i12 |= 3072;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                shape2 = shape;
                if (composerS.k(shape2)) {
                }
                i12 |= i24;
            } else {
                shape2 = shape;
            }
            i12 |= i24;
        } else {
            shape2 = shape;
        }
        i17 = i11 & 32;
        if (i17 != 0) {
            if ((458752 & i10) == 0) {
                borderStroke2 = borderStroke;
                if (composerS.k(borderStroke2)) {
                    i18 = 131072;
                } else {
                    i18 = 65536;
                }
                i12 |= i18;
            }
            if ((i10 & 3670016) == 0) {
                chipColors2 = chipColors;
                if ((i11 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i12 |= i22;
            } else {
                chipColors2 = chipColors;
            }
            i19 = i11 & 128;
            if (i19 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i12 |= i20;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i21 = 67108864;
                    } else {
                        i21 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21111110 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111116 = chipColors3.b(z10, composerS, i21111110);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111110).getValue().v(), Color.l(b(stateB111116), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111116, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        } else {
                            mutableInteractionSource2 = mutableInteractionSource;
                        }
                        if ((i11 & 16) != 0) {
                            shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                            i12 &= -57345;
                        } else {
                            shapeB = shape2;
                        }
                        if (i17 != 0) {
                            borderStroke2 = null;
                        }
                        if ((i11 & 64) != 0) {
                            chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                            i12 &= -3670017;
                        } else {
                            chipColorsA = chipColors2;
                        }
                        if (i19 != 0) {
                            pVar2 = null;
                        } else {
                            pVar2 = pVar;
                        }
                        borderStroke3 = borderStroke2;
                        chipColors3 = chipColorsA;
                    }
                    composerS.A();
                    int i21111111 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                    State<Color> stateB111117 = chipColors3.b(z10, composerS, i21111111);
                    composer2 = composerS;
                    SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111111).getValue().v(), Color.l(b(stateB111117), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111117, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape3 = shapeB;
                    borderStroke4 = borderStroke3;
                    pVar3 = pVar2;
                    z11 = z10;
                    chipColors4 = chipColors3;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
            }
            i21 = 100663296;
            i12 |= i21;
            if ((191739611 & i12) == 38347922) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21111112 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB111118 = chipColors3.b(z10, composerS, i21111112);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111112).getValue().v(), Color.l(b(stateB111118), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111118, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21111113 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB111119 = chipColors3.b(z10, composerS, i21111113);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111113).getValue().v(), Color.l(b(stateB111119), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB111119, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        borderStroke2 = borderStroke;
        if ((i10 & 3670016) == 0) {
            chipColors2 = chipColors;
            if ((i11 & 64) == 0) {
                i22 = 524288;
            } else {
                i22 = 524288;
            }
            i12 |= i22;
        } else {
            chipColors2 = chipColors;
        }
        i19 = i11 & 128;
        if (i19 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.k(pVar)) {
                i20 = 8388608;
            } else {
                i20 = 4194304;
            }
            i12 |= i20;
        }
        if ((i11 & 256) != 0) {
            if ((i10 & 234881024) == 0) {
                if (composerS.k(content)) {
                    i21 = 67108864;
                } else {
                    i21 = 33554432;
                }
            }
            if ((191739611 & i12) == 38347922) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21111114 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB1111110 = chipColors3.b(z10, composerS, i21111114);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111114).getValue().v(), Color.l(b(stateB1111110), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1111110, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    } else {
                        mutableInteractionSource2 = mutableInteractionSource;
                    }
                    if ((i11 & 16) != 0) {
                        shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                        i12 &= -57345;
                    } else {
                        shapeB = shape2;
                    }
                    if (i17 != 0) {
                        borderStroke2 = null;
                    }
                    if ((i11 & 64) != 0) {
                        chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                        i12 &= -3670017;
                    } else {
                        chipColorsA = chipColors2;
                    }
                    if (i19 != 0) {
                        pVar2 = null;
                    } else {
                        pVar2 = pVar;
                    }
                    borderStroke3 = borderStroke2;
                    chipColors3 = chipColorsA;
                }
                composerS.A();
                int i21111115 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
                State<Color> stateB1111111 = chipColors3.b(z10, composerS, i21111115);
                composer2 = composerS;
                SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111115).getValue().v(), Color.l(b(stateB1111111), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1111111, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape3 = shapeB;
                borderStroke4 = borderStroke3;
                pVar3 = pVar2;
                z11 = z10;
                chipColors4 = chipColors3;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
        }
        i21 = 100663296;
        i12 |= i21;
        if ((191739611 & i12) == 38347922) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                }
                if ((i11 & 64) != 0) {
                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                    i12 &= -3670017;
                } else {
                    chipColorsA = chipColors2;
                }
                if (i19 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                borderStroke3 = borderStroke2;
                chipColors3 = chipColorsA;
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                }
                if ((i11 & 64) != 0) {
                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                    i12 &= -3670017;
                } else {
                    chipColorsA = chipColors2;
                }
                if (i19 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                borderStroke3 = borderStroke2;
                chipColors3 = chipColorsA;
            }
            composerS.A();
            int i21111116 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
            State<Color> stateB1111112 = chipColors3.b(z10, composerS, i21111116);
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111116).getValue().v(), Color.l(b(stateB1111112), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1111112, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
            modifier3 = modifier2;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape3 = shapeB;
            borderStroke4 = borderStroke3;
            pVar3 = pVar2;
            z11 = z10;
            chipColors4 = chipColors3;
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                }
                if ((i11 & 64) != 0) {
                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                    i12 &= -3670017;
                } else {
                    chipColorsA = chipColors2;
                }
                if (i19 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                borderStroke3 = borderStroke2;
                chipColors3 = chipColorsA;
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                } else {
                    mutableInteractionSource2 = mutableInteractionSource;
                }
                if ((i11 & 16) != 0) {
                    shapeB = MaterialTheme.INSTANCE.b(composerS, 6).c().b(CornerSizeKt.a(50));
                    i12 &= -57345;
                } else {
                    shapeB = shape2;
                }
                if (i17 != 0) {
                    borderStroke2 = null;
                }
                if ((i11 & 64) != 0) {
                    chipColorsA = ChipDefaults.INSTANCE.a(0L, 0L, 0L, 0L, 0L, 0L, composerS, 1572864, 63);
                    i12 &= -3670017;
                } else {
                    chipColorsA = chipColors2;
                }
                if (i19 != 0) {
                    pVar2 = null;
                } else {
                    pVar2 = pVar;
                }
                borderStroke3 = borderStroke2;
                chipColors3 = chipColorsA;
            }
            composerS.A();
            int i21111117 = ((i12 >> 6) & 14) | ((i12 >> 15) & 112);
            State<Color> stateB1111113 = chipColors3.b(z10, composerS, i21111117);
            composer2 = composerS;
            SurfaceKt.c(onClick, modifier2, z10, shapeB, chipColors3.a(z10, composerS, i21111117).getValue().v(), Color.l(b(stateB1111113), 1.0f, 0.0f, 0.0f, 0.0f, 14, null), borderStroke3, 0.0f, mutableInteractionSource2, ComposableLambdaKt.b(composerS, 139076687, true, new ChipKt$Chip$2(stateB1111113, pVar2, chipColors3, z10, i12, content)), composer2, (i12 & 14) | 805306368 | (i12 & 112) | (i12 & 896) | ((i12 >> 3) & 7168) | ((i12 << 3) & 3670016) | ((i12 << 15) & 234881024), 128);
            modifier3 = modifier2;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape3 = shapeB;
            borderStroke4 = borderStroke3;
            pVar3 = pVar2;
            z11 = z10;
            chipColors4 = chipColors3;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ChipKt$Chip$3(onClick, modifier3, z11, mutableInteractionSource3, shape3, borderStroke4, chipColors4, pVar3, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long b(State<Color> state) {
        return state.getValue().v();
    }
}
