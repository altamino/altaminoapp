package androidx.compose.material;

import androidx.compose.foundation.BorderKt;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.p;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
@Immutable
public final class TextFieldDefaults {
    public static final float BackgroundOpacity = 0.12f;
    public static final float IconOpacity = 0.54f;
    public static final float UnfocusedIndicatorLineOpacity = 0.42f;

    @NotNull
    public static final TextFieldDefaults INSTANCE = new TextFieldDefaults();
    private static final float MinHeight = Dp.f(56);
    private static final float MinWidth = Dp.f(280);
    private static final float UnfocusedBorderThickness = Dp.f(1);
    private static final float FocusedBorderThickness = Dp.f(2);

    /* JADX WARN: Code duplicated, block: B:101:0x0144  */
    /* JADX WARN: Code duplicated, block: B:103:0x014a  */
    /* JADX WARN: Code duplicated, block: B:104:0x014d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0156  */
    /* JADX WARN: Code duplicated, block: B:109:0x015b  */
    /* JADX WARN: Code duplicated, block: B:111:0x0161  */
    /* JADX WARN: Code duplicated, block: B:113:0x0167  */
    /* JADX WARN: Code duplicated, block: B:114:0x016a  */
    /* JADX WARN: Code duplicated, block: B:116:0x016f  */
    /* JADX WARN: Code duplicated, block: B:119:0x0175  */
    /* JADX WARN: Code duplicated, block: B:121:0x0179  */
    /* JADX WARN: Code duplicated, block: B:124:0x0184 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:127:0x018b  */
    /* JADX WARN: Code duplicated, block: B:130:0x0191  */
    /* JADX WARN: Code duplicated, block: B:132:0x0195  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a0 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:152:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:154:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:158:0x01da  */
    /* JADX WARN: Code duplicated, block: B:162:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:168:0x020e  */
    /* JADX WARN: Code duplicated, block: B:170:0x0215  */
    /* JADX WARN: Code duplicated, block: B:180:0x023d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:181:0x023f  */
    /* JADX WARN: Code duplicated, block: B:182:0x0241  */
    /* JADX WARN: Code duplicated, block: B:185:0x0246  */
    /* JADX WARN: Code duplicated, block: B:186:0x0248  */
    /* JADX WARN: Code duplicated, block: B:188:0x024c  */
    /* JADX WARN: Code duplicated, block: B:189:0x024e  */
    /* JADX WARN: Code duplicated, block: B:191:0x0252  */
    /* JADX WARN: Code duplicated, block: B:192:0x0254  */
    /* JADX WARN: Code duplicated, block: B:195:0x0259  */
    /* JADX WARN: Code duplicated, block: B:198:0x025f  */
    /* JADX WARN: Code duplicated, block: B:199:0x029f  */
    /* JADX WARN: Code duplicated, block: B:202:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:203:0x02c7  */
    /* JADX WARN: Code duplicated, block: B:205:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:207:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:212:0x038c  */
    /* JADX WARN: Code duplicated, block: B:214:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0082  */
    /* JADX WARN: Code duplicated, block: B:40:0x0086  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:52:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:53:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c9  */
    /* JADX WARN: Code duplicated, block: B:64:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:68:0x00da  */
    /* JADX WARN: Code duplicated, block: B:70:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:73:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:78:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:80:0x0102  */
    /* JADX WARN: Code duplicated, block: B:82:0x0108  */
    /* JADX WARN: Code duplicated, block: B:83:0x010b  */
    /* JADX WARN: Code duplicated, block: B:87:0x0113  */
    /* JADX WARN: Code duplicated, block: B:88:0x011a  */
    /* JADX WARN: Code duplicated, block: B:90:0x0122  */
    /* JADX WARN: Code duplicated, block: B:92:0x0128  */
    /* JADX WARN: Code duplicated, block: B:93:0x012b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0133  */
    /* JADX WARN: Code duplicated, block: B:99:0x013c  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public final void b(@NotNull String value, @NotNull p<? super Composer, ? super Integer, l0> innerTextField, boolean z6, boolean z10, @NotNull VisualTransformation visualTransformation, @NotNull InteractionSource interactionSource, boolean z11, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, @Nullable TextFieldColors textFieldColors, @Nullable PaddingValues paddingValues, @Nullable p<? super Composer, ? super Integer, l0> pVar5, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        int i14;
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
        int i30;
        boolean z12;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        TextFieldColors textFieldColorsJ;
        p<? super Composer, ? super Integer, l0> pVar9;
        PaddingValues paddingValuesL;
        TextFieldColors textFieldColors2;
        PaddingValues paddingValues2;
        p<? super Composer, ? super Integer, l0> pVarB;
        p<? super Composer, ? super Integer, l0> pVar10;
        boolean z13;
        p<? super Composer, ? super Integer, l0> pVar11;
        p<? super Composer, ? super Integer, l0> pVar12;
        Composer composer2;
        TextFieldColors textFieldColors3;
        boolean z14;
        p<? super Composer, ? super Integer, l0> pVar13;
        p<? super Composer, ? super Integer, l0> pVar14;
        p<? super Composer, ? super Integer, l0> pVar15;
        p<? super Composer, ? super Integer, l0> pVar16;
        PaddingValues paddingValues3;
        p<? super Composer, ? super Integer, l0> pVar17;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(value, "value");
        t.j(innerTextField, "innerTextField");
        t.j(visualTransformation, "visualTransformation");
        t.j(interactionSource, "interactionSource");
        Composer composerS = composer.s(-1280721485);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.k(value) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= composerS.k(innerTextField) ? 32 : 16;
        }
        if ((i12 & 4) == 0) {
            if ((i10 & 896) == 0) {
                i13 |= composerS.m(z6) ? 256 : 128;
            }
            if ((i12 & 8) != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i13 |= i14;
                }
                if ((i12 & 16) != 0) {
                    i13 |= CpioConstants.C_ISBLK;
                } else if ((i10 & 57344) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i13 |= i15;
                }
                if ((i12 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(interactionSource)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                    }
                    i17 = i12 & 64;
                    if (i17 != 0) {
                        i13 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.m(z11)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i13 |= i18;
                    }
                    i19 = i12 & 128;
                    if (i19 != 0) {
                        i13 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i13 |= i20;
                    }
                    i21 = i12 & 256;
                    if (i21 != 0) {
                        i13 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.k(pVar2)) {
                            i22 = 67108864;
                        } else {
                            i22 = 33554432;
                        }
                        i13 |= i22;
                    }
                    i23 = i12 & 512;
                    if (i23 != 0) {
                        i13 |= 805306368;
                    } else if ((i10 & 1879048192) == 0) {
                        if (composerS.k(pVar3)) {
                            i24 = 536870912;
                        } else {
                            i24 = 268435456;
                        }
                        i13 |= i24;
                    }
                    i25 = i13;
                    i26 = i12 & 1024;
                    if (i26 != 0) {
                        i27 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(pVar4)) {
                            i28 = 4;
                        } else {
                            i28 = 2;
                        }
                        i27 = i11 | i28;
                    } else {
                        i27 = i11;
                    }
                    if ((i11 & 112) != 0) {
                        i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                    }
                    if ((i11 & 896) != 0) {
                        i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                    }
                    i29 = i27;
                    i30 = i12 & 8192;
                    if (i30 != 0) {
                        if ((i11 & 7168) == 0) {
                            i29 |= composerS.k(pVar5) ? 2048 : 1024;
                        }
                        if ((i12 & 16384) != 0) {
                            if ((i11 & 57344) == 0) {
                                i29 |= composerS.k(this) ? 16384 : 8192;
                            }
                            if ((i25 & 1533916891) != 306783378 && (46811 & i29) == 9362 && composerS.b()) {
                                composerS.g();
                                pVar13 = pVar;
                                pVar14 = pVar2;
                                pVar15 = pVar3;
                                pVar16 = pVar4;
                                textFieldColors3 = textFieldColors;
                                paddingValues3 = paddingValues;
                                pVar17 = pVar5;
                                composer2 = composerS;
                                z14 = z11;
                            } else {
                                composerS.J();
                                if ((i10 & 1) != 0 || composerS.h()) {
                                    if (i17 != 0) {
                                        z12 = false;
                                    } else {
                                        z12 = z11;
                                    }
                                    if (i19 != 0) {
                                        pVar6 = null;
                                    } else {
                                        pVar6 = pVar;
                                    }
                                    if (i21 != 0) {
                                        pVar7 = null;
                                    } else {
                                        pVar7 = pVar2;
                                    }
                                    if (i23 != 0) {
                                        pVar8 = null;
                                    } else {
                                        pVar8 = pVar3;
                                    }
                                    p<? super Composer, ? super Integer, l0> pVar18 = i26 == 0 ? pVar4 : null;
                                    if ((i12 & 2048) != 0) {
                                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                        i29 &= -113;
                                    } else {
                                        textFieldColorsJ = textFieldColors;
                                    }
                                    pVar9 = pVar8;
                                    if ((i12 & 4096) != 0) {
                                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                        i29 &= -897;
                                    } else {
                                        paddingValuesL = paddingValues;
                                    }
                                    if (i30 != 0) {
                                        textFieldColors2 = textFieldColorsJ;
                                        paddingValues2 = paddingValuesL;
                                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                    } else {
                                        textFieldColors2 = textFieldColorsJ;
                                        paddingValues2 = paddingValuesL;
                                        pVarB = pVar5;
                                    }
                                    pVar10 = pVar6;
                                    z13 = z12;
                                    pVar11 = pVar7;
                                    pVar12 = pVar18;
                                } else {
                                    composerS.g();
                                    if ((i12 & 2048) != 0) {
                                        i29 &= -113;
                                    }
                                    if ((i12 & 4096) != 0) {
                                        i29 &= -897;
                                    }
                                    z13 = z11;
                                    pVar10 = pVar;
                                    pVar11 = pVar2;
                                    pVar9 = pVar3;
                                    pVar12 = pVar4;
                                    textFieldColors2 = textFieldColors;
                                    paddingValues2 = paddingValues;
                                    pVarB = pVar5;
                                }
                                composerS.A();
                                int i31 = i25 << 3;
                                int i32 = i25 >> 9;
                                composer2 = composerS;
                                textFieldColors3 = textFieldColors2;
                                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31 & 896) | (i31 & 112) | 6 | ((i25 >> 3) & 7168) | (i32 & 57344) | (458752 & i32) | (i32 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                                z14 = z13;
                                pVar13 = pVar10;
                                pVar14 = pVar11;
                                pVar15 = pVar9;
                                pVar16 = pVar12;
                                paddingValues3 = paddingValues2;
                                pVar17 = pVarB;
                            }
                            scopeUpdateScopeU = composer2.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                        }
                        i29 |= CpioConstants.C_ISBLK;
                        if ((i25 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i33 = i25 << 3;
                            int i34 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i33 & 896) | (i33 & 112) | 6 | ((i25 >> 3) & 7168) | (i34 & 57344) | (458752 & i34) | (i34 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i35 = i25 << 3;
                            int i36 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i35 & 896) | (i35 & 112) | 6 | ((i25 >> 3) & 7168) | (i36 & 57344) | (458752 & i36) | (i36 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                    }
                    i29 |= 3072;
                    if ((i12 & 16384) != 0) {
                        if ((i11 & 57344) == 0) {
                            i29 |= composerS.k(this) ? 16384 : 8192;
                        }
                        if ((i25 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i37 = i25 << 3;
                            int i38 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i37 & 896) | (i37 & 112) | 6 | ((i25 >> 3) & 7168) | (i38 & 57344) | (458752 & i38) | (i38 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i39 = i25 << 3;
                            int i310 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i39 & 896) | (i39 & 112) | 6 | ((i25 >> 3) & 7168) | (i310 & 57344) | (458752 & i310) | (i310 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                    }
                    i29 |= CpioConstants.C_ISBLK;
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311 = i25 << 3;
                        int i312 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311 & 896) | (i311 & 112) | 6 | ((i25 >> 3) & 7168) | (i312 & 57344) | (458752 & i312) | (i312 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i313 = i25 << 3;
                        int i314 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i313 & 896) | (i313 & 112) | 6 | ((i25 >> 3) & 7168) | (i314 & 57344) | (458752 & i314) | (i314 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i13 |= i16;
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar2)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                i30 = i12 & 8192;
                if (i30 != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(pVar5) ? 2048 : 1024;
                    }
                    if ((i12 & 16384) != 0) {
                        if ((i11 & 57344) == 0) {
                            i29 |= composerS.k(this) ? 16384 : 8192;
                        }
                        if ((i25 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i315 = i25 << 3;
                            int i316 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i315 & 896) | (i315 & 112) | 6 | ((i25 >> 3) & 7168) | (i316 & 57344) | (458752 & i316) | (i316 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i317 = i25 << 3;
                            int i318 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i317 & 896) | (i317 & 112) | 6 | ((i25 >> 3) & 7168) | (i318 & 57344) | (458752 & i318) | (i318 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                    }
                    i29 |= CpioConstants.C_ISBLK;
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i319 = i25 << 3;
                        int i3110 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i319 & 896) | (i319 & 112) | 6 | ((i25 >> 3) & 7168) | (i3110 & 57344) | (458752 & i3110) | (i3110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i3111 = i25 << 3;
                        int i3112 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111 & 896) | (i3111 & 112) | 6 | ((i25 >> 3) & 7168) | (i3112 & 57344) | (458752 & i3112) | (i3112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i3113 = i25 << 3;
                        int i3114 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3113 & 896) | (i3113 & 112) | 6 | ((i25 >> 3) & 7168) | (i3114 & 57344) | (458752 & i3114) | (i3114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i3115 = i25 << 3;
                        int i3116 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3115 & 896) | (i3115 & 112) | 6 | ((i25 >> 3) & 7168) | (i3116 & 57344) | (458752 & i3116) | (i3116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3117 = i25 << 3;
                    int i3118 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3117 & 896) | (i3117 & 112) | 6 | ((i25 >> 3) & 7168) | (i3118 & 57344) | (458752 & i3118) | (i3118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3119 = i25 << 3;
                    int i31110 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3119 & 896) | (i3119 & 112) | 6 | ((i25 >> 3) & 7168) | (i31110 & 57344) | (458752 & i31110) | (i31110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i13 |= 3072;
            if ((i12 & 16) != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            if ((i12 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(interactionSource)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                }
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar2)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                i30 = i12 & 8192;
                if (i30 != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(pVar5) ? 2048 : 1024;
                    }
                    if ((i12 & 16384) != 0) {
                        if ((i11 & 57344) == 0) {
                            i29 |= composerS.k(this) ? 16384 : 8192;
                        }
                        if ((i25 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i31111 = i25 << 3;
                            int i31112 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111 & 896) | (i31111 & 112) | 6 | ((i25 >> 3) & 7168) | (i31112 & 57344) | (458752 & i31112) | (i31112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i31113 = i25 << 3;
                            int i31114 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31113 & 896) | (i31113 & 112) | 6 | ((i25 >> 3) & 7168) | (i31114 & 57344) | (458752 & i31114) | (i31114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                    }
                    i29 |= CpioConstants.C_ISBLK;
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31115 = i25 << 3;
                        int i31116 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31115 & 896) | (i31115 & 112) | 6 | ((i25 >> 3) & 7168) | (i31116 & 57344) | (458752 & i31116) | (i31116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31117 = i25 << 3;
                        int i31118 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31117 & 896) | (i31117 & 112) | 6 | ((i25 >> 3) & 7168) | (i31118 & 57344) | (458752 & i31118) | (i31118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31119 = i25 << 3;
                        int i311110 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31119 & 896) | (i31119 & 112) | 6 | ((i25 >> 3) & 7168) | (i311110 & 57344) | (458752 & i311110) | (i311110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311111 = i25 << 3;
                        int i311112 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111 & 896) | (i311111 & 112) | 6 | ((i25 >> 3) & 7168) | (i311112 & 57344) | (458752 & i311112) | (i311112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311113 = i25 << 3;
                    int i311114 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311113 & 896) | (i311113 & 112) | 6 | ((i25 >> 3) & 7168) | (i311114 & 57344) | (458752 & i311114) | (i311114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311115 = i25 << 3;
                    int i311116 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311115 & 896) | (i311115 & 112) | 6 | ((i25 >> 3) & 7168) | (i311116 & 57344) | (458752 & i311116) | (i311116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i13 |= i16;
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar2)) {
                    i22 = 67108864;
                } else {
                    i22 = 33554432;
                }
                i13 |= i22;
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            i30 = i12 & 8192;
            if (i30 != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(pVar5) ? 2048 : 1024;
                }
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311117 = i25 << 3;
                        int i311118 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311117 & 896) | (i311117 & 112) | 6 | ((i25 >> 3) & 7168) | (i311118 & 57344) | (458752 & i311118) | (i311118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311119 = i25 << 3;
                        int i3111110 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311119 & 896) | (i311119 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111110 & 57344) | (458752 & i3111110) | (i3111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111 = i25 << 3;
                    int i3111112 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111 & 896) | (i3111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111112 & 57344) | (458752 & i3111112) | (i3111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111113 = i25 << 3;
                    int i3111114 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111113 & 896) | (i3111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111114 & 57344) | (458752 & i3111114) | (i3111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i12 & 16384) != 0) {
                if ((i11 & 57344) == 0) {
                    i29 |= composerS.k(this) ? 16384 : 8192;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111115 = i25 << 3;
                    int i3111116 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111115 & 896) | (i3111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111116 & 57344) | (458752 & i3111116) | (i3111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111117 = i25 << 3;
                    int i3111118 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111117 & 896) | (i3111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111118 & 57344) | (458752 & i3111118) | (i3111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= CpioConstants.C_ISBLK;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i3111119 = i25 << 3;
                int i31111110 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111119 & 896) | (i3111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111110 & 57344) | (458752 & i31111110) | (i31111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i31111111 = i25 << 3;
                int i31111112 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111 & 896) | (i31111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111112 & 57344) | (458752 & i31111112) | (i31111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
        }
        i13 |= 384;
        if ((i12 & 8) != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i13 |= i14;
            }
            if ((i12 & 16) != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            if ((i12 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(interactionSource)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                }
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar2)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                i30 = i12 & 8192;
                if (i30 != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(pVar5) ? 2048 : 1024;
                    }
                    if ((i12 & 16384) != 0) {
                        if ((i11 & 57344) == 0) {
                            i29 |= composerS.k(this) ? 16384 : 8192;
                        }
                        if ((i25 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i31111113 = i25 << 3;
                            int i31111114 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111113 & 896) | (i31111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111114 & 57344) | (458752 & i31111114) | (i31111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            } else {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar2;
                                }
                                if (i23 != 0) {
                                    pVar8 = null;
                                } else {
                                    pVar8 = pVar3;
                                }
                                if (i26 == 0) {
                                }
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsJ = textFieldColors;
                                }
                                pVar9 = pVar8;
                                if ((i12 & 4096) != 0) {
                                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    i29 &= -897;
                                } else {
                                    paddingValuesL = paddingValues;
                                }
                                if (i30 != 0) {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                                } else {
                                    textFieldColors2 = textFieldColorsJ;
                                    paddingValues2 = paddingValuesL;
                                    pVarB = pVar5;
                                }
                                pVar10 = pVar6;
                                z13 = z12;
                                pVar11 = pVar7;
                                pVar12 = pVar18;
                            }
                            composerS.A();
                            int i31111115 = i25 << 3;
                            int i31111116 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111115 & 896) | (i31111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111116 & 57344) | (458752 & i31111116) | (i31111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                            z14 = z13;
                            pVar13 = pVar10;
                            pVar14 = pVar11;
                            pVar15 = pVar9;
                            pVar16 = pVar12;
                            paddingValues3 = paddingValues2;
                            pVar17 = pVarB;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                    }
                    i29 |= CpioConstants.C_ISBLK;
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31111117 = i25 << 3;
                        int i31111118 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111117 & 896) | (i31111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111118 & 57344) | (458752 & i31111118) | (i31111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31111119 = i25 << 3;
                        int i311111110 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111119 & 896) | (i31111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111110 & 57344) | (458752 & i311111110) | (i311111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311111111 = i25 << 3;
                        int i311111112 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111 & 896) | (i311111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111112 & 57344) | (458752 & i311111112) | (i311111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311111113 = i25 << 3;
                        int i311111114 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111113 & 896) | (i311111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111114 & 57344) | (458752 & i311111114) | (i311111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311111115 = i25 << 3;
                    int i311111116 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111115 & 896) | (i311111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111116 & 57344) | (458752 & i311111116) | (i311111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311111117 = i25 << 3;
                    int i311111118 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111117 & 896) | (i311111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111118 & 57344) | (458752 & i311111118) | (i311111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i13 |= i16;
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar2)) {
                    i22 = 67108864;
                } else {
                    i22 = 33554432;
                }
                i13 |= i22;
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            i30 = i12 & 8192;
            if (i30 != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(pVar5) ? 2048 : 1024;
                }
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i311111119 = i25 << 3;
                        int i3111111110 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111119 & 896) | (i311111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111110 & 57344) | (458752 & i3111111110) | (i3111111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i3111111111 = i25 << 3;
                        int i3111111112 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111 & 896) | (i3111111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111112 & 57344) | (458752 & i3111111112) | (i3111111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111113 = i25 << 3;
                    int i3111111114 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111113 & 896) | (i3111111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111114 & 57344) | (458752 & i3111111114) | (i3111111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111115 = i25 << 3;
                    int i3111111116 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111115 & 896) | (i3111111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111116 & 57344) | (458752 & i3111111116) | (i3111111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i12 & 16384) != 0) {
                if ((i11 & 57344) == 0) {
                    i29 |= composerS.k(this) ? 16384 : 8192;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111117 = i25 << 3;
                    int i3111111118 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111117 & 896) | (i3111111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111118 & 57344) | (458752 & i3111111118) | (i3111111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111119 = i25 << 3;
                    int i31111111110 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111119 & 896) | (i3111111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111110 & 57344) | (458752 & i31111111110) | (i31111111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= CpioConstants.C_ISBLK;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i31111111111 = i25 << 3;
                int i31111111112 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111111 & 896) | (i31111111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111112 & 57344) | (458752 & i31111111112) | (i31111111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i31111111113 = i25 << 3;
                int i31111111114 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111113 & 896) | (i31111111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111114 & 57344) | (458752 & i31111111114) | (i31111111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
        }
        i13 |= 3072;
        if ((i12 & 16) != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((i10 & 57344) == 0) {
            if (composerS.k(visualTransformation)) {
                i15 = 16384;
            } else {
                i15 = 8192;
            }
            i13 |= i15;
        }
        if ((i12 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(interactionSource)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
            }
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar2)) {
                    i22 = 67108864;
                } else {
                    i22 = 33554432;
                }
                i13 |= i22;
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            i30 = i12 & 8192;
            if (i30 != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(pVar5) ? 2048 : 1024;
                }
                if ((i12 & 16384) != 0) {
                    if ((i11 & 57344) == 0) {
                        i29 |= composerS.k(this) ? 16384 : 8192;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31111111115 = i25 << 3;
                        int i31111111116 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111115 & 896) | (i31111111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111116 & 57344) | (458752 & i31111111116) | (i31111111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar2;
                            }
                            if (i23 != 0) {
                                pVar8 = null;
                            } else {
                                pVar8 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsJ = textFieldColors;
                            }
                            pVar9 = pVar8;
                            if ((i12 & 4096) != 0) {
                                paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                i29 &= -897;
                            } else {
                                paddingValuesL = paddingValues;
                            }
                            if (i30 != 0) {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                            } else {
                                textFieldColors2 = textFieldColorsJ;
                                paddingValues2 = paddingValuesL;
                                pVarB = pVar5;
                            }
                            pVar10 = pVar6;
                            z13 = z12;
                            pVar11 = pVar7;
                            pVar12 = pVar18;
                        }
                        composerS.A();
                        int i31111111117 = i25 << 3;
                        int i31111111118 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111117 & 896) | (i31111111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111118 & 57344) | (458752 & i31111111118) | (i31111111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                        z14 = z13;
                        pVar13 = pVar10;
                        pVar14 = pVar11;
                        pVar15 = pVar9;
                        pVar16 = pVar12;
                        paddingValues3 = paddingValues2;
                        pVar17 = pVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
                }
                i29 |= CpioConstants.C_ISBLK;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i31111111119 = i25 << 3;
                    int i311111111110 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111119 & 896) | (i31111111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111111110 & 57344) | (458752 & i311111111110) | (i311111111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311111111111 = i25 << 3;
                    int i311111111112 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111111 & 896) | (i311111111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111111112 & 57344) | (458752 & i311111111112) | (i311111111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i12 & 16384) != 0) {
                if ((i11 & 57344) == 0) {
                    i29 |= composerS.k(this) ? 16384 : 8192;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311111111113 = i25 << 3;
                    int i311111111114 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111113 & 896) | (i311111111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111111114 & 57344) | (458752 & i311111111114) | (i311111111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i311111111115 = i25 << 3;
                    int i311111111116 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111115 & 896) | (i311111111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111111116 & 57344) | (458752 & i311111111116) | (i311111111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= CpioConstants.C_ISBLK;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i311111111117 = i25 << 3;
                int i311111111118 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111117 & 896) | (i311111111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111111118 & 57344) | (458752 & i311111111118) | (i311111111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i311111111119 = i25 << 3;
                int i3111111111110 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i311111111119 & 896) | (i311111111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111111110 & 57344) | (458752 & i3111111111110) | (i3111111111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
        }
        i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i13 |= i16;
        i17 = i12 & 64;
        if (i17 != 0) {
            i13 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.m(z11)) {
                i18 = 1048576;
            } else {
                i18 = 524288;
            }
            i13 |= i18;
        }
        i19 = i12 & 128;
        if (i19 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.k(pVar)) {
                i20 = 8388608;
            } else {
                i20 = 4194304;
            }
            i13 |= i20;
        }
        i21 = i12 & 256;
        if (i21 != 0) {
            i13 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.k(pVar2)) {
                i22 = 67108864;
            } else {
                i22 = 33554432;
            }
            i13 |= i22;
        }
        i23 = i12 & 512;
        if (i23 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            if (composerS.k(pVar3)) {
                i24 = 536870912;
            } else {
                i24 = 268435456;
            }
            i13 |= i24;
        }
        i25 = i13;
        i26 = i12 & 1024;
        if (i26 != 0) {
            i27 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            if (composerS.k(pVar4)) {
                i28 = 4;
            } else {
                i28 = 2;
            }
            i27 = i11 | i28;
        } else {
            i27 = i11;
        }
        if ((i11 & 112) != 0) {
            i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
        }
        if ((i11 & 896) != 0) {
            i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
        }
        i29 = i27;
        i30 = i12 & 8192;
        if (i30 != 0) {
            if ((i11 & 7168) == 0) {
                i29 |= composerS.k(pVar5) ? 2048 : 1024;
            }
            if ((i12 & 16384) != 0) {
                if ((i11 & 57344) == 0) {
                    i29 |= composerS.k(this) ? 16384 : 8192;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111111111 = i25 << 3;
                    int i3111111111112 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111111 & 896) | (i3111111111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111111112 & 57344) | (458752 & i3111111111112) | (i3111111111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar2;
                        }
                        if (i23 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsJ = textFieldColors;
                        }
                        pVar9 = pVar8;
                        if ((i12 & 4096) != 0) {
                            paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            i29 &= -897;
                        } else {
                            paddingValuesL = paddingValues;
                        }
                        if (i30 != 0) {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                        } else {
                            textFieldColors2 = textFieldColorsJ;
                            paddingValues2 = paddingValuesL;
                            pVarB = pVar5;
                        }
                        pVar10 = pVar6;
                        z13 = z12;
                        pVar11 = pVar7;
                        pVar12 = pVar18;
                    }
                    composerS.A();
                    int i3111111111113 = i25 << 3;
                    int i3111111111114 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111113 & 896) | (i3111111111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111111114 & 57344) | (458752 & i3111111111114) | (i3111111111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                    z14 = z13;
                    pVar13 = pVar10;
                    pVar14 = pVar11;
                    pVar15 = pVar9;
                    pVar16 = pVar12;
                    paddingValues3 = paddingValues2;
                    pVar17 = pVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
            }
            i29 |= CpioConstants.C_ISBLK;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i3111111111115 = i25 << 3;
                int i3111111111116 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111115 & 896) | (i3111111111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111111116 & 57344) | (458752 & i3111111111116) | (i3111111111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i3111111111117 = i25 << 3;
                int i3111111111118 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111117 & 896) | (i3111111111117 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111111118 & 57344) | (458752 & i3111111111118) | (i3111111111118 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
        }
        i29 |= 3072;
        if ((i12 & 16384) != 0) {
            if ((i11 & 57344) == 0) {
                i29 |= composerS.k(this) ? 16384 : 8192;
            }
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i3111111111119 = i25 << 3;
                int i31111111111110 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i3111111111119 & 896) | (i3111111111119 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111111110 & 57344) | (458752 & i31111111111110) | (i31111111111110 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar2;
                    }
                    if (i23 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsJ = textFieldColors;
                    }
                    pVar9 = pVar8;
                    if ((i12 & 4096) != 0) {
                        paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        i29 &= -897;
                    } else {
                        paddingValuesL = paddingValues;
                    }
                    if (i30 != 0) {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                    } else {
                        textFieldColors2 = textFieldColorsJ;
                        paddingValues2 = paddingValuesL;
                        pVarB = pVar5;
                    }
                    pVar10 = pVar6;
                    z13 = z12;
                    pVar11 = pVar7;
                    pVar12 = pVar18;
                }
                composerS.A();
                int i31111111111111 = i25 << 3;
                int i31111111111112 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111111111 & 896) | (i31111111111111 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111111112 & 57344) | (458752 & i31111111111112) | (i31111111111112 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
                z14 = z13;
                pVar13 = pVar10;
                pVar14 = pVar11;
                pVar15 = pVar9;
                pVar16 = pVar12;
                paddingValues3 = paddingValues2;
                pVar17 = pVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
        }
        i29 |= CpioConstants.C_ISBLK;
        if ((i25 & 1533916891) != 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar2;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsJ = textFieldColors;
                }
                pVar9 = pVar8;
                if ((i12 & 4096) != 0) {
                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i29 &= -897;
                } else {
                    paddingValuesL = paddingValues;
                }
                if (i30 != 0) {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                } else {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = pVar5;
                }
                pVar10 = pVar6;
                z13 = z12;
                pVar11 = pVar7;
                pVar12 = pVar18;
            } else {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar2;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsJ = textFieldColors;
                }
                pVar9 = pVar8;
                if ((i12 & 4096) != 0) {
                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i29 &= -897;
                } else {
                    paddingValuesL = paddingValues;
                }
                if (i30 != 0) {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                } else {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = pVar5;
                }
                pVar10 = pVar6;
                z13 = z12;
                pVar11 = pVar7;
                pVar12 = pVar18;
            }
            composerS.A();
            int i31111111111113 = i25 << 3;
            int i31111111111114 = i25 >> 9;
            composer2 = composerS;
            textFieldColors3 = textFieldColors2;
            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111111113 & 896) | (i31111111111113 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111111114 & 57344) | (458752 & i31111111111114) | (i31111111111114 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
            z14 = z13;
            pVar13 = pVar10;
            pVar14 = pVar11;
            pVar15 = pVar9;
            pVar16 = pVar12;
            paddingValues3 = paddingValues2;
            pVar17 = pVarB;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar2;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsJ = textFieldColors;
                }
                pVar9 = pVar8;
                if ((i12 & 4096) != 0) {
                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i29 &= -897;
                } else {
                    paddingValuesL = paddingValues;
                }
                if (i30 != 0) {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                } else {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = pVar5;
                }
                pVar10 = pVar6;
                z13 = z12;
                pVar11 = pVar7;
                pVar12 = pVar18;
            } else {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar2;
                }
                if (i23 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsJ = j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 9) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsJ = textFieldColors;
                }
                pVar9 = pVar8;
                if ((i12 & 4096) != 0) {
                    paddingValuesL = l(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    i29 &= -897;
                } else {
                    paddingValuesL = paddingValues;
                }
                if (i30 != 0) {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = ComposableLambdaKt.b(composerS, 1261916269, true, new TextFieldDefaults$OutlinedTextFieldDecorationBox$1(z6, z12, interactionSource, textFieldColorsJ, i25, i29));
                } else {
                    textFieldColors2 = textFieldColorsJ;
                    paddingValues2 = paddingValuesL;
                    pVarB = pVar5;
                }
                pVar10 = pVar6;
                z13 = z12;
                pVar11 = pVar7;
                pVar12 = pVar18;
            }
            composerS.A();
            int i31111111111115 = i25 << 3;
            int i31111111111116 = i25 >> 9;
            composer2 = composerS;
            textFieldColors3 = textFieldColors2;
            TextFieldImplKt.a(TextFieldType.Outlined, value, innerTextField, visualTransformation, pVar10, pVar11, pVar9, pVar12, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, pVarB, composer2, (i31111111111115 & 896) | (i31111111111115 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111111116 & 57344) | (458752 & i31111111111116) | (i31111111111116 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168) | ((i29 << 3) & 57344), 0);
            z14 = z13;
            pVar13 = pVar10;
            pVar14 = pVar11;
            pVar15 = pVar9;
            pVar16 = pVar12;
            paddingValues3 = paddingValues2;
            pVar17 = pVarB;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldDefaults$OutlinedTextFieldDecorationBox$2(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar13, pVar14, pVar15, pVar16, textFieldColors3, paddingValues3, pVar17, i10, i11, i12));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0140  */
    /* JADX WARN: Code duplicated, block: B:103:0x0146  */
    /* JADX WARN: Code duplicated, block: B:104:0x0149  */
    /* JADX WARN: Code duplicated, block: B:108:0x0152  */
    /* JADX WARN: Code duplicated, block: B:109:0x0157  */
    /* JADX WARN: Code duplicated, block: B:111:0x015d  */
    /* JADX WARN: Code duplicated, block: B:113:0x0163  */
    /* JADX WARN: Code duplicated, block: B:114:0x0166  */
    /* JADX WARN: Code duplicated, block: B:116:0x016b  */
    /* JADX WARN: Code duplicated, block: B:119:0x0171  */
    /* JADX WARN: Code duplicated, block: B:121:0x0175  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:127:0x0187  */
    /* JADX WARN: Code duplicated, block: B:130:0x018d  */
    /* JADX WARN: Code duplicated, block: B:132:0x0191  */
    /* JADX WARN: Code duplicated, block: B:135:0x019c A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:139:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:142:0x01ac  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:148:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:152:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:158:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:160:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:171:0x0219 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:172:0x021b  */
    /* JADX WARN: Code duplicated, block: B:173:0x021d  */
    /* JADX WARN: Code duplicated, block: B:176:0x0222  */
    /* JADX WARN: Code duplicated, block: B:177:0x0224  */
    /* JADX WARN: Code duplicated, block: B:179:0x0228  */
    /* JADX WARN: Code duplicated, block: B:181:0x022b  */
    /* JADX WARN: Code duplicated, block: B:182:0x022d  */
    /* JADX WARN: Code duplicated, block: B:185:0x0232  */
    /* JADX WARN: Code duplicated, block: B:188:0x0238  */
    /* JADX WARN: Code duplicated, block: B:189:0x0278  */
    /* JADX WARN: Code duplicated, block: B:192:0x027e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:193:0x0280  */
    /* JADX WARN: Code duplicated, block: B:194:0x029e  */
    /* JADX WARN: Code duplicated, block: B:196:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:201:0x0352  */
    /* JADX WARN: Code duplicated, block: B:203:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x007d  */
    /* JADX WARN: Code duplicated, block: B:38:0x0082  */
    /* JADX WARN: Code duplicated, block: B:40:0x0086  */
    /* JADX WARN: Code duplicated, block: B:42:0x008e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0091  */
    /* JADX WARN: Code duplicated, block: B:47:0x009c  */
    /* JADX WARN: Code duplicated, block: B:48:0x009f  */
    /* JADX WARN: Code duplicated, block: B:50:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:53:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00de  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fe  */
    /* JADX WARN: Code duplicated, block: B:82:0x0104  */
    /* JADX WARN: Code duplicated, block: B:83:0x0107  */
    /* JADX WARN: Code duplicated, block: B:87:0x010f  */
    /* JADX WARN: Code duplicated, block: B:88:0x0116  */
    /* JADX WARN: Code duplicated, block: B:90:0x011e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0124  */
    /* JADX WARN: Code duplicated, block: B:93:0x0127  */
    /* JADX WARN: Code duplicated, block: B:97:0x012f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0138  */
    @Composable
    @ExperimentalMaterialApi
    @ComposableInferredTarget
    public final void c(@NotNull String value, @NotNull p<? super Composer, ? super Integer, l0> innerTextField, boolean z6, boolean z10, @NotNull VisualTransformation visualTransformation, @NotNull InteractionSource interactionSource, boolean z11, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, @Nullable TextFieldColors textFieldColors, @Nullable PaddingValues paddingValues, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        p<? super Composer, ? super Integer, l0> pVar5;
        int i22;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int i28;
        int i29;
        boolean z12;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        TextFieldColors textFieldColorsM;
        PaddingValues paddingValues2;
        TextFieldColors textFieldColors2;
        p<? super Composer, ? super Integer, l0> pVar9;
        boolean z13;
        p<? super Composer, ? super Integer, l0> pVar10;
        p<? super Composer, ? super Integer, l0> pVar11;
        PaddingValues paddingValuesO;
        Composer composer2;
        TextFieldColors textFieldColors3;
        boolean z14;
        p<? super Composer, ? super Integer, l0> pVar12;
        p<? super Composer, ? super Integer, l0> pVar13;
        p<? super Composer, ? super Integer, l0> pVar14;
        p<? super Composer, ? super Integer, l0> pVar15;
        PaddingValues paddingValues3;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(value, "value");
        t.j(innerTextField, "innerTextField");
        t.j(visualTransformation, "visualTransformation");
        t.j(interactionSource, "interactionSource");
        Composer composerS = composer.s(1171040065);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.k(value) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= composerS.k(innerTextField) ? 32 : 16;
        }
        if ((i12 & 4) == 0) {
            if ((i10 & 896) == 0) {
                i13 |= composerS.m(z6) ? 256 : 128;
            }
            if ((i12 & 8) != 0) {
                if ((i10 & 7168) == 0) {
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i13 |= i14;
                }
                if ((i12 & 16) != 0) {
                    i13 |= CpioConstants.C_ISBLK;
                } else if ((i10 & 57344) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i15 = 16384;
                    } else {
                        i15 = 8192;
                    }
                    i13 |= i15;
                }
                if ((i12 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(interactionSource)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                    }
                    i17 = i12 & 64;
                    if (i17 != 0) {
                        i13 |= 1572864;
                    } else if ((i10 & 3670016) == 0) {
                        if (composerS.m(z11)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i13 |= i18;
                    }
                    i19 = i12 & 128;
                    if (i19 != 0) {
                        i13 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.k(pVar)) {
                            i20 = 8388608;
                        } else {
                            i20 = 4194304;
                        }
                        i13 |= i20;
                    }
                    i21 = i12 & 256;
                    if (i21 != 0) {
                        i13 |= 100663296;
                        pVar5 = pVar2;
                    } else {
                        pVar5 = pVar2;
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(pVar5)) {
                                i22 = 67108864;
                            } else {
                                i22 = 33554432;
                            }
                            i13 |= i22;
                        }
                    }
                    i23 = i12 & 512;
                    if (i23 != 0) {
                        i13 |= 805306368;
                    } else if ((i10 & 1879048192) == 0) {
                        if (composerS.k(pVar3)) {
                            i24 = 536870912;
                        } else {
                            i24 = 268435456;
                        }
                        i13 |= i24;
                    }
                    i25 = i13;
                    i26 = i12 & 1024;
                    if (i26 != 0) {
                        i27 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(pVar4)) {
                            i28 = 4;
                        } else {
                            i28 = 2;
                        }
                        i27 = i11 | i28;
                    } else {
                        i27 = i11;
                    }
                    if ((i11 & 112) != 0) {
                        i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                    }
                    if ((i11 & 896) != 0) {
                        i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                    }
                    i29 = i27;
                    if ((i12 & 8192) != 0) {
                        if ((i11 & 7168) == 0) {
                            i29 |= composerS.k(this) ? 2048 : 1024;
                        }
                        if ((i25 & 1533916891) != 306783378 && (i29 & 5851) == 1170 && composerS.b()) {
                            composerS.g();
                            z14 = z11;
                            pVar12 = pVar;
                            pVar14 = pVar3;
                            pVar15 = pVar4;
                            textFieldColors3 = textFieldColors;
                            composer2 = composerS;
                            pVar13 = pVar5;
                            paddingValues3 = paddingValues;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i17 != 0) {
                                    z12 = false;
                                } else {
                                    z12 = z11;
                                }
                                if (i19 != 0) {
                                    pVar6 = null;
                                } else {
                                    pVar6 = pVar;
                                }
                                if (i21 != 0) {
                                    pVar5 = null;
                                }
                                if (i23 != 0) {
                                    pVar7 = null;
                                } else {
                                    pVar7 = pVar3;
                                }
                                pVar8 = i26 == 0 ? pVar4 : null;
                                if ((i12 & 2048) != 0) {
                                    textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                    i29 &= -113;
                                } else {
                                    textFieldColorsM = textFieldColors;
                                }
                                if ((i12 & 4096) != 0) {
                                    if (pVar6 == null) {
                                        paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    } else {
                                        paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                    }
                                    i29 &= -897;
                                    textFieldColors2 = textFieldColorsM;
                                    pVar9 = pVar7;
                                    z13 = z12;
                                    pVar10 = pVar6;
                                    pVar11 = pVar8;
                                    paddingValues2 = paddingValuesO;
                                } else {
                                    paddingValues2 = paddingValues;
                                    textFieldColors2 = textFieldColorsM;
                                    pVar9 = pVar7;
                                    z13 = z12;
                                    pVar10 = pVar6;
                                    pVar11 = pVar8;
                                }
                            } else {
                                composerS.g();
                                if ((i12 & 2048) != 0) {
                                    i29 &= -113;
                                }
                                if ((i12 & 4096) != 0) {
                                    i29 &= -897;
                                }
                                z13 = z11;
                                pVar10 = pVar;
                                pVar9 = pVar3;
                                pVar11 = pVar4;
                                textFieldColors2 = textFieldColors;
                                paddingValues2 = paddingValues;
                            }
                            p<? super Composer, ? super Integer, l0> pVar16 = pVar5;
                            composerS.A();
                            int i30 = i25 << 3;
                            int i31 = i25 >> 9;
                            composer2 = composerS;
                            textFieldColors3 = textFieldColors2;
                            TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar16, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i30 & 896) | (i30 & 112) | 6 | ((i25 >> 3) & 7168) | (i31 & 57344) | (i31 & 458752) | (i31 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                            z14 = z13;
                            pVar12 = pVar10;
                            pVar13 = pVar16;
                            pVar14 = pVar9;
                            pVar15 = pVar11;
                            paddingValues3 = paddingValues2;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
                    }
                    i29 |= 3072;
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar17 = pVar5;
                        composerS.A();
                        int i32 = i25 << 3;
                        int i33 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar17, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i32 & 896) | (i32 & 112) | 6 | ((i25 >> 3) & 7168) | (i33 & 57344) | (i33 & 458752) | (i33 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar17;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar18 = pVar5;
                        composerS.A();
                        int i34 = i25 << 3;
                        int i35 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar18, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i34 & 896) | (i34 & 112) | 6 | ((i25 >> 3) & 7168) | (i35 & 57344) | (i35 & 458752) | (i35 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar18;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
                }
                i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i13 |= i16;
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                    pVar5 = pVar2;
                } else {
                    pVar5 = pVar2;
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(pVar5)) {
                            i22 = 67108864;
                        } else {
                            i22 = 33554432;
                        }
                        i13 |= i22;
                    }
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                if ((i12 & 8192) != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(this) ? 2048 : 1024;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar19 = pVar5;
                        composerS.A();
                        int i36 = i25 << 3;
                        int i37 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar19, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i36 & 896) | (i36 & 112) | 6 | ((i25 >> 3) & 7168) | (i37 & 57344) | (i37 & 458752) | (i37 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar19;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar110 = pVar5;
                        composerS.A();
                        int i38 = i25 << 3;
                        int i39 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar110, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i38 & 896) | (i38 & 112) | 6 | ((i25 >> 3) & 7168) | (i39 & 57344) | (i39 & 458752) | (i39 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar110;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar111 = pVar5;
                    composerS.A();
                    int i310 = i25 << 3;
                    int i311 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar111, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i310 & 896) | (i310 & 112) | 6 | ((i25 >> 3) & 7168) | (i311 & 57344) | (i311 & 458752) | (i311 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar111;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar112 = pVar5;
                    composerS.A();
                    int i312 = i25 << 3;
                    int i313 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar112, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i312 & 896) | (i312 & 112) | 6 | ((i25 >> 3) & 7168) | (i313 & 57344) | (i313 & 458752) | (i313 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar112;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i13 |= 3072;
            if ((i12 & 16) != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            if ((i12 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(interactionSource)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                }
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                    pVar5 = pVar2;
                } else {
                    pVar5 = pVar2;
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(pVar5)) {
                            i22 = 67108864;
                        } else {
                            i22 = 33554432;
                        }
                        i13 |= i22;
                    }
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                if ((i12 & 8192) != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(this) ? 2048 : 1024;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar113 = pVar5;
                        composerS.A();
                        int i314 = i25 << 3;
                        int i315 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar113, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i314 & 896) | (i314 & 112) | 6 | ((i25 >> 3) & 7168) | (i315 & 57344) | (i315 & 458752) | (i315 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar113;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar114 = pVar5;
                        composerS.A();
                        int i316 = i25 << 3;
                        int i317 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar114, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i316 & 896) | (i316 & 112) | 6 | ((i25 >> 3) & 7168) | (i317 & 57344) | (i317 & 458752) | (i317 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar114;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar115 = pVar5;
                    composerS.A();
                    int i318 = i25 << 3;
                    int i319 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar115, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i318 & 896) | (i318 & 112) | 6 | ((i25 >> 3) & 7168) | (i319 & 57344) | (i319 & 458752) | (i319 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar115;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar116 = pVar5;
                    composerS.A();
                    int i3110 = i25 << 3;
                    int i3111 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar116, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3110 & 896) | (i3110 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111 & 57344) | (i3111 & 458752) | (i3111 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar116;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i13 |= i16;
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
                pVar5 = pVar2;
            } else {
                pVar5 = pVar2;
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar5)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            if ((i12 & 8192) != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(this) ? 2048 : 1024;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar117 = pVar5;
                    composerS.A();
                    int i3112 = i25 << 3;
                    int i3113 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar117, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3112 & 896) | (i3112 & 112) | 6 | ((i25 >> 3) & 7168) | (i3113 & 57344) | (i3113 & 458752) | (i3113 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar117;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar118 = pVar5;
                    composerS.A();
                    int i3114 = i25 << 3;
                    int i3115 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar118, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3114 & 896) | (i3114 & 112) | 6 | ((i25 >> 3) & 7168) | (i3115 & 57344) | (i3115 & 458752) | (i3115 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar118;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar119 = pVar5;
                composerS.A();
                int i3116 = i25 << 3;
                int i3117 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar119, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3116 & 896) | (i3116 & 112) | 6 | ((i25 >> 3) & 7168) | (i3117 & 57344) | (i3117 & 458752) | (i3117 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar119;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar1110 = pVar5;
                composerS.A();
                int i3118 = i25 << 3;
                int i3119 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1110, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3118 & 896) | (i3118 & 112) | 6 | ((i25 >> 3) & 7168) | (i3119 & 57344) | (i3119 & 458752) | (i3119 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar1110;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
        }
        i13 |= 384;
        if ((i12 & 8) != 0) {
            if ((i10 & 7168) == 0) {
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i13 |= i14;
            }
            if ((i12 & 16) != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.k(visualTransformation)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            if ((i12 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(interactionSource)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                }
                i17 = i12 & 64;
                if (i17 != 0) {
                    i13 |= 1572864;
                } else if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i13 |= i18;
                }
                i19 = i12 & 128;
                if (i19 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(pVar)) {
                        i20 = 8388608;
                    } else {
                        i20 = 4194304;
                    }
                    i13 |= i20;
                }
                i21 = i12 & 256;
                if (i21 != 0) {
                    i13 |= 100663296;
                    pVar5 = pVar2;
                } else {
                    pVar5 = pVar2;
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(pVar5)) {
                            i22 = 67108864;
                        } else {
                            i22 = 33554432;
                        }
                        i13 |= i22;
                    }
                }
                i23 = i12 & 512;
                if (i23 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(pVar3)) {
                        i24 = 536870912;
                    } else {
                        i24 = 268435456;
                    }
                    i13 |= i24;
                }
                i25 = i13;
                i26 = i12 & 1024;
                if (i26 != 0) {
                    i27 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(pVar4)) {
                        i28 = 4;
                    } else {
                        i28 = 2;
                    }
                    i27 = i11 | i28;
                } else {
                    i27 = i11;
                }
                if ((i11 & 112) != 0) {
                    i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
                }
                if ((i11 & 896) != 0) {
                    i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
                }
                i29 = i27;
                if ((i12 & 8192) != 0) {
                    if ((i11 & 7168) == 0) {
                        i29 |= composerS.k(this) ? 2048 : 1024;
                    }
                    if ((i25 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar1111 = pVar5;
                        composerS.A();
                        int i31110 = i25 << 3;
                        int i31111 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1111, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31110 & 896) | (i31110 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111 & 57344) | (i31111 & 458752) | (i31111 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar1111;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        } else {
                            if (i17 != 0) {
                                z12 = false;
                            } else {
                                z12 = z11;
                            }
                            if (i19 != 0) {
                                pVar6 = null;
                            } else {
                                pVar6 = pVar;
                            }
                            if (i21 != 0) {
                                pVar5 = null;
                            }
                            if (i23 != 0) {
                                pVar7 = null;
                            } else {
                                pVar7 = pVar3;
                            }
                            if (i26 == 0) {
                            }
                            if ((i12 & 2048) != 0) {
                                textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                                i29 &= -113;
                            } else {
                                textFieldColorsM = textFieldColors;
                            }
                            if ((i12 & 4096) != 0) {
                                if (pVar6 == null) {
                                    paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                } else {
                                    paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                                }
                                i29 &= -897;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                                paddingValues2 = paddingValuesO;
                            } else {
                                paddingValues2 = paddingValues;
                                textFieldColors2 = textFieldColorsM;
                                pVar9 = pVar7;
                                z13 = z12;
                                pVar10 = pVar6;
                                pVar11 = pVar8;
                            }
                        }
                        p<? super Composer, ? super Integer, l0> pVar1112 = pVar5;
                        composerS.A();
                        int i31112 = i25 << 3;
                        int i31113 = i25 >> 9;
                        composer2 = composerS;
                        textFieldColors3 = textFieldColors2;
                        TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1112, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31112 & 896) | (i31112 & 112) | 6 | ((i25 >> 3) & 7168) | (i31113 & 57344) | (i31113 & 458752) | (i31113 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                        z14 = z13;
                        pVar12 = pVar10;
                        pVar13 = pVar1112;
                        pVar14 = pVar9;
                        pVar15 = pVar11;
                        paddingValues3 = paddingValues2;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
                }
                i29 |= 3072;
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar1113 = pVar5;
                    composerS.A();
                    int i31114 = i25 << 3;
                    int i31115 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1113, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31114 & 896) | (i31114 & 112) | 6 | ((i25 >> 3) & 7168) | (i31115 & 57344) | (i31115 & 458752) | (i31115 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar1113;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar1114 = pVar5;
                    composerS.A();
                    int i31116 = i25 << 3;
                    int i31117 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1114, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31116 & 896) | (i31116 & 112) | 6 | ((i25 >> 3) & 7168) | (i31117 & 57344) | (i31117 & 458752) | (i31117 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar1114;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i13 |= i16;
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
                pVar5 = pVar2;
            } else {
                pVar5 = pVar2;
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar5)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            if ((i12 & 8192) != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(this) ? 2048 : 1024;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar1115 = pVar5;
                    composerS.A();
                    int i31118 = i25 << 3;
                    int i31119 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1115, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31118 & 896) | (i31118 & 112) | 6 | ((i25 >> 3) & 7168) | (i31119 & 57344) | (i31119 & 458752) | (i31119 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar1115;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar1116 = pVar5;
                    composerS.A();
                    int i311110 = i25 << 3;
                    int i311111 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1116, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i311110 & 896) | (i311110 & 112) | 6 | ((i25 >> 3) & 7168) | (i311111 & 57344) | (i311111 & 458752) | (i311111 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar1116;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar1117 = pVar5;
                composerS.A();
                int i311112 = i25 << 3;
                int i311113 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1117, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i311112 & 896) | (i311112 & 112) | 6 | ((i25 >> 3) & 7168) | (i311113 & 57344) | (i311113 & 458752) | (i311113 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar1117;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar1118 = pVar5;
                composerS.A();
                int i311114 = i25 << 3;
                int i311115 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1118, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i311114 & 896) | (i311114 & 112) | 6 | ((i25 >> 3) & 7168) | (i311115 & 57344) | (i311115 & 458752) | (i311115 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar1118;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
        }
        i13 |= 3072;
        if ((i12 & 16) != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((i10 & 57344) == 0) {
            if (composerS.k(visualTransformation)) {
                i15 = 16384;
            } else {
                i15 = 8192;
            }
            i13 |= i15;
        }
        if ((i12 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(interactionSource)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
            }
            i17 = i12 & 64;
            if (i17 != 0) {
                i13 |= 1572864;
            } else if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i13 |= i18;
            }
            i19 = i12 & 128;
            if (i19 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(pVar)) {
                    i20 = 8388608;
                } else {
                    i20 = 4194304;
                }
                i13 |= i20;
            }
            i21 = i12 & 256;
            if (i21 != 0) {
                i13 |= 100663296;
                pVar5 = pVar2;
            } else {
                pVar5 = pVar2;
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(pVar5)) {
                        i22 = 67108864;
                    } else {
                        i22 = 33554432;
                    }
                    i13 |= i22;
                }
            }
            i23 = i12 & 512;
            if (i23 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(pVar3)) {
                    i24 = 536870912;
                } else {
                    i24 = 268435456;
                }
                i13 |= i24;
            }
            i25 = i13;
            i26 = i12 & 1024;
            if (i26 != 0) {
                i27 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(pVar4)) {
                    i28 = 4;
                } else {
                    i28 = 2;
                }
                i27 = i11 | i28;
            } else {
                i27 = i11;
            }
            if ((i11 & 112) != 0) {
                i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
            }
            if ((i11 & 896) != 0) {
                i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
            }
            i29 = i27;
            if ((i12 & 8192) != 0) {
                if ((i11 & 7168) == 0) {
                    i29 |= composerS.k(this) ? 2048 : 1024;
                }
                if ((i25 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar1119 = pVar5;
                    composerS.A();
                    int i311116 = i25 << 3;
                    int i311117 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar1119, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i311116 & 896) | (i311116 & 112) | 6 | ((i25 >> 3) & 7168) | (i311117 & 57344) | (i311117 & 458752) | (i311117 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar1119;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    } else {
                        if (i17 != 0) {
                            z12 = false;
                        } else {
                            z12 = z11;
                        }
                        if (i19 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar;
                        }
                        if (i21 != 0) {
                            pVar5 = null;
                        }
                        if (i23 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 == 0) {
                        }
                        if ((i12 & 2048) != 0) {
                            textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                            i29 &= -113;
                        } else {
                            textFieldColorsM = textFieldColors;
                        }
                        if ((i12 & 4096) != 0) {
                            if (pVar6 == null) {
                                paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            } else {
                                paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                            }
                            i29 &= -897;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                            paddingValues2 = paddingValuesO;
                        } else {
                            paddingValues2 = paddingValues;
                            textFieldColors2 = textFieldColorsM;
                            pVar9 = pVar7;
                            z13 = z12;
                            pVar10 = pVar6;
                            pVar11 = pVar8;
                        }
                    }
                    p<? super Composer, ? super Integer, l0> pVar11110 = pVar5;
                    composerS.A();
                    int i311118 = i25 << 3;
                    int i311119 = i25 >> 9;
                    composer2 = composerS;
                    textFieldColors3 = textFieldColors2;
                    TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11110, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i311118 & 896) | (i311118 & 112) | 6 | ((i25 >> 3) & 7168) | (i311119 & 57344) | (i311119 & 458752) | (i311119 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                    z14 = z13;
                    pVar12 = pVar10;
                    pVar13 = pVar11110;
                    pVar14 = pVar9;
                    pVar15 = pVar11;
                    paddingValues3 = paddingValues2;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
            }
            i29 |= 3072;
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar11111 = pVar5;
                composerS.A();
                int i3111110 = i25 << 3;
                int i3111111 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11111, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3111110 & 896) | (i3111110 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111111 & 57344) | (i3111111 & 458752) | (i3111111 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar11111;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar11112 = pVar5;
                composerS.A();
                int i3111112 = i25 << 3;
                int i3111113 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11112, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3111112 & 896) | (i3111112 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111113 & 57344) | (i3111113 & 458752) | (i3111113 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar11112;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
        }
        i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i13 |= i16;
        i17 = i12 & 64;
        if (i17 != 0) {
            i13 |= 1572864;
        } else if ((i10 & 3670016) == 0) {
            if (composerS.m(z11)) {
                i18 = 1048576;
            } else {
                i18 = 524288;
            }
            i13 |= i18;
        }
        i19 = i12 & 128;
        if (i19 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.k(pVar)) {
                i20 = 8388608;
            } else {
                i20 = 4194304;
            }
            i13 |= i20;
        }
        i21 = i12 & 256;
        if (i21 != 0) {
            i13 |= 100663296;
            pVar5 = pVar2;
        } else {
            pVar5 = pVar2;
            if ((i10 & 234881024) == 0) {
                if (composerS.k(pVar5)) {
                    i22 = 67108864;
                } else {
                    i22 = 33554432;
                }
                i13 |= i22;
            }
        }
        i23 = i12 & 512;
        if (i23 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            if (composerS.k(pVar3)) {
                i24 = 536870912;
            } else {
                i24 = 268435456;
            }
            i13 |= i24;
        }
        i25 = i13;
        i26 = i12 & 1024;
        if (i26 != 0) {
            i27 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            if (composerS.k(pVar4)) {
                i28 = 4;
            } else {
                i28 = 2;
            }
            i27 = i11 | i28;
        } else {
            i27 = i11;
        }
        if ((i11 & 112) != 0) {
            i27 |= ((i12 & 2048) == 0 || !composerS.k(textFieldColors)) ? 16 : 32;
        }
        if ((i11 & 896) != 0) {
            i27 |= ((i12 & 4096) == 0 || !composerS.k(paddingValues)) ? 128 : 256;
        }
        i29 = i27;
        if ((i12 & 8192) != 0) {
            if ((i11 & 7168) == 0) {
                i29 |= composerS.k(this) ? 2048 : 1024;
            }
            if ((i25 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar11113 = pVar5;
                composerS.A();
                int i3111114 = i25 << 3;
                int i3111115 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11113, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3111114 & 896) | (i3111114 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111115 & 57344) | (i3111115 & 458752) | (i3111115 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar11113;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                } else {
                    if (i17 != 0) {
                        z12 = false;
                    } else {
                        z12 = z11;
                    }
                    if (i19 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar;
                    }
                    if (i21 != 0) {
                        pVar5 = null;
                    }
                    if (i23 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 == 0) {
                    }
                    if ((i12 & 2048) != 0) {
                        textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                        i29 &= -113;
                    } else {
                        textFieldColorsM = textFieldColors;
                    }
                    if ((i12 & 4096) != 0) {
                        if (pVar6 == null) {
                            paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        } else {
                            paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                        }
                        i29 &= -897;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                        paddingValues2 = paddingValuesO;
                    } else {
                        paddingValues2 = paddingValues;
                        textFieldColors2 = textFieldColorsM;
                        pVar9 = pVar7;
                        z13 = z12;
                        pVar10 = pVar6;
                        pVar11 = pVar8;
                    }
                }
                p<? super Composer, ? super Integer, l0> pVar11114 = pVar5;
                composerS.A();
                int i3111116 = i25 << 3;
                int i3111117 = i25 >> 9;
                composer2 = composerS;
                textFieldColors3 = textFieldColors2;
                TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11114, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3111116 & 896) | (i3111116 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111117 & 57344) | (i3111117 & 458752) | (i3111117 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
                z14 = z13;
                pVar12 = pVar10;
                pVar13 = pVar11114;
                pVar14 = pVar9;
                pVar15 = pVar11;
                paddingValues3 = paddingValues2;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
        }
        i29 |= 3072;
        if ((i25 & 1533916891) != 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar5 = null;
                }
                if (i23 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsM = textFieldColors;
                }
                if ((i12 & 4096) != 0) {
                    if (pVar6 == null) {
                        paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    } else {
                        paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    }
                    i29 &= -897;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                    paddingValues2 = paddingValuesO;
                } else {
                    paddingValues2 = paddingValues;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                }
            } else {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar5 = null;
                }
                if (i23 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsM = textFieldColors;
                }
                if ((i12 & 4096) != 0) {
                    if (pVar6 == null) {
                        paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    } else {
                        paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    }
                    i29 &= -897;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                    paddingValues2 = paddingValuesO;
                } else {
                    paddingValues2 = paddingValues;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                }
            }
            p<? super Composer, ? super Integer, l0> pVar11115 = pVar5;
            composerS.A();
            int i3111118 = i25 << 3;
            int i3111119 = i25 >> 9;
            composer2 = composerS;
            textFieldColors3 = textFieldColors2;
            TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11115, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i3111118 & 896) | (i3111118 & 112) | 6 | ((i25 >> 3) & 7168) | (i3111119 & 57344) | (i3111119 & 458752) | (i3111119 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
            z14 = z13;
            pVar12 = pVar10;
            pVar13 = pVar11115;
            pVar14 = pVar9;
            pVar15 = pVar11;
            paddingValues3 = paddingValues2;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar5 = null;
                }
                if (i23 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsM = textFieldColors;
                }
                if ((i12 & 4096) != 0) {
                    if (pVar6 == null) {
                        paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    } else {
                        paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    }
                    i29 &= -897;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                    paddingValues2 = paddingValuesO;
                } else {
                    paddingValues2 = paddingValues;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                }
            } else {
                if (i17 != 0) {
                    z12 = false;
                } else {
                    z12 = z11;
                }
                if (i19 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar;
                }
                if (i21 != 0) {
                    pVar5 = null;
                }
                if (i23 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 == 0) {
                }
                if ((i12 & 2048) != 0) {
                    textFieldColorsM = m(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, (i29 >> 6) & 112, 2097151);
                    i29 &= -113;
                } else {
                    textFieldColorsM = textFieldColors;
                }
                if ((i12 & 4096) != 0) {
                    if (pVar6 == null) {
                        paddingValuesO = q(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    } else {
                        paddingValuesO = o(this, 0.0f, 0.0f, 0.0f, 0.0f, 15, null);
                    }
                    i29 &= -897;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                    paddingValues2 = paddingValuesO;
                } else {
                    paddingValues2 = paddingValues;
                    textFieldColors2 = textFieldColorsM;
                    pVar9 = pVar7;
                    z13 = z12;
                    pVar10 = pVar6;
                    pVar11 = pVar8;
                }
            }
            p<? super Composer, ? super Integer, l0> pVar11116 = pVar5;
            composerS.A();
            int i31111110 = i25 << 3;
            int i31111111 = i25 >> 9;
            composer2 = composerS;
            textFieldColors3 = textFieldColors2;
            TextFieldImplKt.a(TextFieldType.Filled, value, innerTextField, visualTransformation, pVar10, pVar11116, pVar9, pVar11, z10, z6, z13, interactionSource, paddingValues2, textFieldColors3, null, composer2, (i31111110 & 896) | (i31111110 & 112) | 6 | ((i25 >> 3) & 7168) | (i31111111 & 57344) | (i31111111 & 458752) | (i31111111 & 3670016) | ((i29 << 21) & 29360128) | ((i25 << 15) & 234881024) | ((i25 << 21) & 1879048192), ((i25 >> 18) & 14) | ((i25 >> 12) & 112) | (i29 & 896) | ((i29 << 6) & 7168), 16384);
            z14 = z13;
            pVar12 = pVar10;
            pVar13 = pVar11116;
            pVar14 = pVar9;
            pVar15 = pVar11;
            paddingValues3 = paddingValues2;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldDefaults$TextFieldDecorationBox$1(this, value, innerTextField, z6, z10, visualTransformation, interactionSource, z14, pVar12, pVar13, pVar14, pVar15, textFieldColors3, paddingValues3, i10, i11, i12));
    }

    public final float d() {
        return MinHeight;
    }

    public final float e() {
        return MinWidth;
    }

    @ExperimentalMaterialApi
    @NotNull
    public final Modifier h(@NotNull Modifier indicatorLine, boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @NotNull TextFieldColors colors, float f, float f6) {
        t.j(indicatorLine, "$this$indicatorLine");
        t.j(interactionSource, "interactionSource");
        t.j(colors, "colors");
        return ComposedModifierKt.c(indicatorLine, InspectableValueKt.c() ? new TextFieldDefaults$indicatorLinegv0btCI$$inlined$debugInspectorInfo$1(z6, z10, interactionSource, colors, f, f6) : InspectableValueKt.a(), new TextFieldDefaults$indicatorLine$2(z6, z10, interactionSource, colors, f, f6));
    }

    @Composable
    @NotNull
    public final TextFieldColors j(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        long jL;
        long jL2;
        long jL3;
        long jL4;
        long jL5;
        long jL6;
        composer.G(1762667317);
        long jL7 = (i13 & 1) != 0 ? Color.l(((Color) composer.x(ContentColorKt.a())).v(), ((Number) composer.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j6;
        if ((i13 & 2) != 0) {
            jL = Color.l(jL7, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL = j10;
        }
        long jE = (i13 & 4) != 0 ? Color.Companion.e() : j11;
        long j30 = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j12;
        long jD = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j13;
        long jL8 = (i13 & 32) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).j(), ContentAlpha.INSTANCE.c(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j14;
        long jL9 = (i13 & 64) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j15;
        if ((i13 & 128) != 0) {
            jL2 = Color.l(jL9, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL2 = j16;
        }
        long jD2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j17;
        long jL10 = (i13 & 512) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j18;
        if ((i13 & 1024) != 0) {
            jL3 = Color.l(jL10, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL3 = j19;
        }
        long j31 = (i13 & 2048) != 0 ? jL10 : j20;
        long jL11 = (i13 & 4096) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        if ((i13 & 8192) != 0) {
            jL4 = Color.l(jL11, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL4 = j22;
        }
        long jD3 = (i13 & 16384) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j23;
        long jL12 = (32768 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).j(), ContentAlpha.INSTANCE.c(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j24;
        long jL13 = (65536 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.d(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j25;
        if ((131072 & i13) != 0) {
            jL5 = Color.l(jL13, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL5 = j26;
        }
        long jD4 = (262144 & i13) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j27;
        long jL14 = (524288 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.d(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j28;
        if ((i13 & 1048576) != 0) {
            jL6 = Color.l(jL14, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL6 = j29;
        }
        DefaultTextFieldColors defaultTextFieldColors = new DefaultTextFieldColors(jL7, jL, j30, jD, jL8, jL9, jD2, jL2, jL10, jL3, j31, jL11, jL4, jD3, jE, jL12, jL13, jL5, jD4, jL14, jL6, null);
        composer.Q();
        return defaultTextFieldColors;
    }

    @Composable
    @NotNull
    public final TextFieldColors m(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, long j20, long j21, long j22, long j23, long j24, long j25, long j26, long j27, long j28, long j29, @Nullable Composer composer, int i10, int i11, int i12, int i13) {
        long jL;
        long jL2;
        long jL3;
        long jL4;
        long jL5;
        long jL6;
        composer.G(231892599);
        long jL7 = (i13 & 1) != 0 ? Color.l(((Color) composer.x(ContentColorKt.a())).v(), ((Number) composer.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null) : j6;
        if ((i13 & 2) != 0) {
            jL = Color.l(jL7, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL = j10;
        }
        long jL8 = (i13 & 4) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long j30 = (i13 & 8) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j12;
        long jD = (i13 & 16) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j13;
        long jL9 = (i13 & 32) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).j(), ContentAlpha.INSTANCE.c(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j14;
        long jL10 = (i13 & 64) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.42f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        if ((i13 & 128) != 0) {
            jL2 = Color.l(jL10, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL2 = j16;
        }
        long jD2 = (i13 & 256) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j17;
        long jL11 = (i13 & 512) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j18;
        if ((i13 & 1024) != 0) {
            jL3 = Color.l(jL11, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL3 = j19;
        }
        long j31 = (i13 & 2048) != 0 ? jL11 : j20;
        long jL12 = (i13 & 4096) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j21;
        if ((i13 & 8192) != 0) {
            jL4 = Color.l(jL12, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL4 = j22;
        }
        long jD3 = (i13 & 16384) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j23;
        long jL13 = (32768 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).j(), ContentAlpha.INSTANCE.c(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j24;
        long jL14 = (65536 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.d(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j25;
        if ((131072 & i13) != 0) {
            jL5 = Color.l(jL14, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL5 = j26;
        }
        long jD4 = (262144 & i13) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).d() : j27;
        long jL15 = (524288 & i13) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.d(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j28;
        if ((i13 & 1048576) != 0) {
            jL6 = Color.l(jL15, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL6 = j29;
        }
        DefaultTextFieldColors defaultTextFieldColors = new DefaultTextFieldColors(jL7, jL, j30, jD, jL9, jL10, jD2, jL2, jL11, jL3, j31, jL12, jL4, jD3, jL8, jL13, jL14, jL5, jD4, jL15, jL6, null);
        composer.Q();
        return defaultTextFieldColors;
    }

    public static /* synthetic */ PaddingValues l(TextFieldDefaults textFieldDefaults, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = TextFieldImplKt.f();
        }
        if ((i10 & 2) != 0) {
            f6 = TextFieldImplKt.f();
        }
        if ((i10 & 4) != 0) {
            f7 = TextFieldImplKt.f();
        }
        if ((i10 & 8) != 0) {
            f10 = TextFieldImplKt.f();
        }
        return textFieldDefaults.k(f, f6, f7, f10);
    }

    public static /* synthetic */ PaddingValues o(TextFieldDefaults textFieldDefaults, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = TextFieldImplKt.f();
        }
        if ((i10 & 2) != 0) {
            f6 = TextFieldImplKt.f();
        }
        if ((i10 & 4) != 0) {
            f7 = TextFieldKt.k();
        }
        if ((i10 & 8) != 0) {
            f10 = TextFieldKt.l();
        }
        return textFieldDefaults.n(f, f6, f7, f10);
    }

    public static /* synthetic */ PaddingValues q(TextFieldDefaults textFieldDefaults, float f, float f6, float f7, float f10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            f = TextFieldImplKt.f();
        }
        if ((i10 & 2) != 0) {
            f6 = TextFieldImplKt.f();
        }
        if ((i10 & 4) != 0) {
            f7 = TextFieldImplKt.f();
        }
        if ((i10 & 8) != 0) {
            f10 = TextFieldImplKt.f();
        }
        return textFieldDefaults.p(f, f6, f7, f10);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x013a  */
    /* JADX WARN: Code duplicated, block: B:109:0x013e  */
    /* JADX WARN: Code duplicated, block: B:112:0x014c  */
    /* JADX WARN: Code duplicated, block: B:115:0x0154  */
    /* JADX WARN: Code duplicated, block: B:120:0x019c  */
    /* JADX WARN: Code duplicated, block: B:122:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:92:0x0109  */
    /* JADX WARN: Code duplicated, block: B:94:0x0119  */
    @ComposableTarget
    @Composable
    @ExperimentalMaterialApi
    public final void a(boolean z6, boolean z10, @NotNull InteractionSource interactionSource, @NotNull TextFieldColors colors, @Nullable Shape shape, float f, float f6, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Shape shapeF;
        float f7;
        float f10;
        int i13;
        Shape shape2;
        float f11;
        float f12;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(interactionSource, "interactionSource");
        t.j(colors, "colors");
        Composer composerS = composer.s(943754022);
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
            i12 |= composerS.m(z10) ? 32 : 16;
        }
        if ((i11 & 4) != 0) {
            i12 |= 384;
        } else if ((i10 & 896) == 0) {
            i12 |= composerS.k(interactionSource) ? 256 : 128;
        }
        if ((i11 & 8) != 0) {
            i12 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i12 |= composerS.k(colors) ? 2048 : 1024;
        }
        if ((i10 & 57344) == 0) {
            if ((i11 & 16) == 0) {
                shapeF = shape;
                int i14 = composerS.k(shapeF) ? 16384 : 8192;
                i12 |= i14;
            } else {
                shapeF = shape;
            }
            i12 |= i14;
        } else {
            shapeF = shape;
        }
        if ((i10 & 458752) == 0) {
            if ((i11 & 32) == 0) {
                f7 = f;
                int i15 = composerS.n(f7) ? 131072 : 65536;
                i12 |= i15;
            } else {
                f7 = f;
            }
            i12 |= i15;
        } else {
            f7 = f;
        }
        if ((3670016 & i10) == 0) {
            if ((i11 & 64) == 0) {
                f10 = f6;
                int i16 = composerS.n(f10) ? 1048576 : 524288;
                i12 |= i16;
            } else {
                f10 = f6;
            }
            i12 |= i16;
        } else {
            f10 = f6;
        }
        if ((i11 & 128) == 0) {
            if ((29360128 & i10) == 0) {
                i13 = composerS.k(this) ? 8388608 : 4194304;
            }
            if ((23967451 & i12) == 4793490 || !composerS.b()) {
                composerS.J();
                if ((i10 & 1) != 0 || composerS.h()) {
                    if ((i11 & 16) != 0) {
                        shapeF = f(composerS, (i12 >> 21) & 14);
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        f7 = FocusedBorderThickness;
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        f10 = UnfocusedBorderThickness;
                        i12 &= -3670017;
                    }
                } else {
                    composerS.g();
                    if ((i11 & 16) != 0) {
                        i12 &= -57345;
                    }
                    if ((i11 & 32) != 0) {
                        i12 &= -458753;
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                    }
                }
                Shape shape3 = shapeF;
                float f13 = f7;
                float f14 = f10;
                composerS.A();
                int i17 = (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
                int i18 = i12 >> 3;
                BoxKt.a(BorderKt.f(Modifier.Companion, (BorderStroke) TextFieldDefaultsKt.b(z6, z10, interactionSource, colors, f13, f14, composerS, (57344 & i18) | i17 | (i18 & 458752)).getValue(), shape3), composerS, 0);
                shape2 = shape3;
                f11 = f13;
                f12 = f14;
            } else {
                composerS.g();
                shape2 = shapeF;
                f11 = f7;
                f12 = f10;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextFieldDefaults$BorderBox$1(this, z6, z10, interactionSource, colors, shape2, f11, f12, i10, i11));
        }
        i13 = 12582912;
        i12 |= i13;
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if ((i11 & 16) != 0) {
                    shapeF = f(composerS, (i12 >> 21) & 14);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    f7 = FocusedBorderThickness;
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    f10 = UnfocusedBorderThickness;
                    i12 &= -3670017;
                }
            } else {
                if ((i11 & 16) != 0) {
                    shapeF = f(composerS, (i12 >> 21) & 14);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    f7 = FocusedBorderThickness;
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    f10 = UnfocusedBorderThickness;
                    i12 &= -3670017;
                }
            }
            Shape shape4 = shapeF;
            float f15 = f7;
            float f16 = f10;
            composerS.A();
            int i19 = (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
            int i110 = i12 >> 3;
            BoxKt.a(BorderKt.f(Modifier.Companion, (BorderStroke) TextFieldDefaultsKt.b(z6, z10, interactionSource, colors, f15, f16, composerS, (57344 & i110) | i19 | (i110 & 458752)).getValue(), shape4), composerS, 0);
            shape2 = shape4;
            f11 = f15;
            f12 = f16;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if ((i11 & 16) != 0) {
                    shapeF = f(composerS, (i12 >> 21) & 14);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    f7 = FocusedBorderThickness;
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    f10 = UnfocusedBorderThickness;
                    i12 &= -3670017;
                }
            } else {
                if ((i11 & 16) != 0) {
                    shapeF = f(composerS, (i12 >> 21) & 14);
                    i12 &= -57345;
                }
                if ((i11 & 32) != 0) {
                    f7 = FocusedBorderThickness;
                    i12 &= -458753;
                }
                if ((i11 & 64) != 0) {
                    f10 = UnfocusedBorderThickness;
                    i12 &= -3670017;
                }
            }
            Shape shape5 = shapeF;
            float f17 = f7;
            float f18 = f10;
            composerS.A();
            int i111 = (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168);
            int i112 = i12 >> 3;
            BoxKt.a(BorderKt.f(Modifier.Companion, (BorderStroke) TextFieldDefaultsKt.b(z6, z10, interactionSource, colors, f17, f18, composerS, (57344 & i112) | i111 | (i112 & 458752)).getValue(), shape5), composerS, 0);
            shape2 = shape5;
            f11 = f17;
            f12 = f18;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextFieldDefaults$BorderBox$1(this, z6, z10, interactionSource, colors, shape2, f11, f12, i10, i11));
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Shape f(@Nullable Composer composer, int i10) {
        return MaterialTheme.INSTANCE.b(composer, 6).c();
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Shape g(@Nullable Composer composer, int i10) {
        return CornerBasedShape.d(MaterialTheme.INSTANCE.b(composer, 6).c(), null, null, CornerSizeKt.c(), CornerSizeKt.c(), 3, null);
    }

    private TextFieldDefaults() {
    }

    @ExperimentalMaterialApi
    @NotNull
    public final PaddingValues k(float f, float f6, float f7, float f10) {
        return PaddingKt.d(f, f6, f7, f10);
    }

    @ExperimentalMaterialApi
    @NotNull
    public final PaddingValues n(float f, float f6, float f7, float f10) {
        return PaddingKt.d(f, f7, f6, f10);
    }

    @ExperimentalMaterialApi
    @NotNull
    public final PaddingValues p(float f, float f6, float f7, float f10) {
        return PaddingKt.d(f, f6, f7, f10);
    }
}
