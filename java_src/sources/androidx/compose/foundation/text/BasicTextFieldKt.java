package androidx.compose.foundation.text;

import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import e8.q;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class BasicTextFieldKt {
    /* JADX WARN: Code duplicated, block: B:100:0x013d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0143  */
    /* JADX WARN: Code duplicated, block: B:103:0x0146  */
    /* JADX WARN: Code duplicated, block: B:107:0x014e  */
    /* JADX WARN: Code duplicated, block: B:108:0x0153  */
    /* JADX WARN: Code duplicated, block: B:110:0x0159  */
    /* JADX WARN: Code duplicated, block: B:112:0x015f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0162  */
    /* JADX WARN: Code duplicated, block: B:115:0x0167  */
    /* JADX WARN: Code duplicated, block: B:118:0x016d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0172  */
    /* JADX WARN: Code duplicated, block: B:122:0x0178  */
    /* JADX WARN: Code duplicated, block: B:124:0x017e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0181  */
    /* JADX WARN: Code duplicated, block: B:129:0x018a  */
    /* JADX WARN: Code duplicated, block: B:131:0x018f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0193  */
    /* JADX WARN: Code duplicated, block: B:135:0x019b  */
    /* JADX WARN: Code duplicated, block: B:136:0x019e  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:142:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:153:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:166:0x0210  */
    /* JADX WARN: Code duplicated, block: B:168:0x0217  */
    /* JADX WARN: Code duplicated, block: B:175:0x0243 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x0245  */
    /* JADX WARN: Code duplicated, block: B:177:0x0248  */
    /* JADX WARN: Code duplicated, block: B:179:0x024c  */
    /* JADX WARN: Code duplicated, block: B:180:0x024e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0252  */
    /* JADX WARN: Code duplicated, block: B:183:0x0254  */
    /* JADX WARN: Code duplicated, block: B:185:0x0258  */
    /* JADX WARN: Code duplicated, block: B:186:0x025f  */
    /* JADX WARN: Code duplicated, block: B:188:0x0263  */
    /* JADX WARN: Code duplicated, block: B:189:0x026a  */
    /* JADX WARN: Code duplicated, block: B:191:0x026e  */
    /* JADX WARN: Code duplicated, block: B:192:0x0275  */
    /* JADX WARN: Code duplicated, block: B:194:0x0279  */
    /* JADX WARN: Code duplicated, block: B:195:0x027b  */
    /* JADX WARN: Code duplicated, block: B:197:0x027f  */
    /* JADX WARN: Code duplicated, block: B:198:0x0283  */
    /* JADX WARN: Code duplicated, block: B:200:0x0287  */
    /* JADX WARN: Code duplicated, block: B:201:0x028e  */
    /* JADX WARN: Code duplicated, block: B:203:0x0292  */
    /* JADX WARN: Code duplicated, block: B:204:0x0295  */
    /* JADX WARN: Code duplicated, block: B:206:0x0299  */
    /* JADX WARN: Code duplicated, block: B:208:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:210:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:213:0x02be  */
    /* JADX WARN: Code duplicated, block: B:214:0x02d3  */
    /* JADX WARN: Code duplicated, block: B:216:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:218:0x02fe  */
    /* JADX WARN: Code duplicated, block: B:221:0x0310  */
    /* JADX WARN: Code duplicated, block: B:222:0x0312  */
    /* JADX WARN: Code duplicated, block: B:225:0x032f  */
    /* JADX WARN: Code duplicated, block: B:227:0x0337  */
    /* JADX WARN: Code duplicated, block: B:232:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:234:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0097  */
    /* JADX WARN: Code duplicated, block: B:50:0x009d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:82:0x0103  */
    /* JADX WARN: Code duplicated, block: B:83:0x0106  */
    /* JADX WARN: Code duplicated, block: B:87:0x010e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0115  */
    /* JADX WARN: Code duplicated, block: B:90:0x011d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0123  */
    /* JADX WARN: Code duplicated, block: B:93:0x0126  */
    /* JADX WARN: Code duplicated, block: B:97:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0135  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull TextFieldValue value, @NotNull l<? super TextFieldValue, l0> onValueChange, @Nullable Modifier modifier, boolean z6, boolean z10, @Nullable TextStyle textStyle, @Nullable KeyboardOptions keyboardOptions, @Nullable KeyboardActions keyboardActions, boolean z11, int i10, @Nullable VisualTransformation visualTransformation, @Nullable l<? super TextLayoutResult, l0> lVar, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Brush brush, @Nullable q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i11, int i12, int i13) {
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
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        Modifier modifier2;
        boolean z12;
        boolean z13;
        TextStyle textStyleA;
        KeyboardOptions keyboardOptionsA;
        KeyboardActions keyboardActionsA;
        boolean z14;
        int i39;
        VisualTransformation visualTransformationC;
        l<? super TextLayoutResult, l0> lVar2;
        MutableInteractionSource mutableInteractionSource2;
        Brush solidColor;
        q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVarB;
        VisualTransformation visualTransformation2;
        l<? super TextLayoutResult, l0> lVar3;
        KeyboardActions keyboardActions2;
        MutableInteractionSource mutableInteractionSource3;
        boolean z15;
        boolean z16;
        Brush brush2;
        TextStyle textStyle2;
        KeyboardOptions keyboardOptions2;
        Modifier modifier3;
        Object objH;
        int i40;
        boolean zK;
        Object objH2;
        Composer composer2;
        Modifier modifier4;
        boolean z17;
        boolean z18;
        TextStyle textStyle3;
        boolean z19;
        KeyboardActions keyboardActions3;
        int i41;
        KeyboardOptions keyboardOptions3;
        VisualTransformation visualTransformation3;
        l<? super TextLayoutResult, l0> lVar4;
        MutableInteractionSource mutableInteractionSource4;
        Brush brush3;
        q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar2;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-560482651);
        if ((i13 & 1) != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = (composerS.k(value) ? 4 : 2) | i11;
        } else {
            i14 = i11;
        }
        if ((i13 & 2) != 0) {
            i14 |= 48;
        } else if ((i11 & 112) == 0) {
            i14 |= composerS.k(onValueChange) ? 32 : 16;
        }
        int i42 = i13 & 4;
        if (i42 == 0) {
            if ((i11 & 896) == 0) {
                i14 |= composerS.k(modifier) ? 256 : 128;
            }
            i15 = i13 & 8;
            i16 = 1024;
            if (i15 != 0) {
                if ((i11 & 7168) == 0) {
                    if (composerS.m(z6)) {
                        i17 = 2048;
                    } else {
                        i17 = 1024;
                    }
                    i14 |= i17;
                }
                i18 = i13 & 16;
                if (i18 != 0) {
                    i14 |= CpioConstants.C_ISBLK;
                } else if ((i11 & 57344) == 0) {
                    if (composerS.m(z10)) {
                        i19 = 16384;
                    } else {
                        i19 = 8192;
                    }
                    i14 |= i19;
                }
                i20 = i13 & 32;
                if (i20 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i11 & 458752) == 0) {
                    if (composerS.k(textStyle)) {
                        i21 = 131072;
                    } else {
                        i21 = 65536;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 64;
                if (i22 != 0) {
                    i14 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(keyboardOptions)) {
                        i23 = 1048576;
                    } else {
                        i23 = 524288;
                    }
                    i14 |= i23;
                }
                i24 = i13 & 128;
                if (i24 != 0) {
                    i14 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(keyboardActions)) {
                        i25 = 8388608;
                    } else {
                        i25 = 4194304;
                    }
                    i14 |= i25;
                }
                i26 = i13 & 256;
                if (i26 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.m(z11)) {
                        i27 = 67108864;
                    } else {
                        i27 = 33554432;
                    }
                    i14 |= i27;
                }
                i28 = i13 & 512;
                if (i28 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.p(i10)) {
                        i29 = 536870912;
                    } else {
                        i29 = 268435456;
                    }
                    i14 |= i29;
                }
                i30 = i13 & 1024;
                if (i30 != 0) {
                    i31 = i12 | 6;
                } else if ((i12 & 14) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i32 = 4;
                    } else {
                        i32 = 2;
                    }
                    i31 = i12 | i32;
                } else {
                    i31 = i12;
                }
                i33 = i13 & 2048;
                if (i33 != 0) {
                    i31 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.k(lVar)) {
                        i34 = 32;
                    } else {
                        i34 = 16;
                    }
                    i31 |= i34;
                }
                i35 = i31;
                i36 = i13 & 4096;
                if (i36 != 0) {
                    if ((i12 & 896) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i37 = 256;
                        } else {
                            i37 = 128;
                        }
                        i35 |= i37;
                    }
                    if ((i12 & 7168) != 0) {
                        if ((i13 & 8192) == 0 && composerS.k(brush)) {
                            i16 = 2048;
                        }
                        i35 |= i16;
                    }
                    i38 = i13 & 16384;
                    if (i38 != 0) {
                        i35 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i35 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    if ((i14 & 1533916891) != 306783378 && (46811 & i35) == 9362 && composerS.b()) {
                        composerS.g();
                        modifier4 = modifier;
                        z17 = z6;
                        z18 = z10;
                        textStyle3 = textStyle;
                        keyboardOptions3 = keyboardOptions;
                        keyboardActions3 = keyboardActions;
                        z19 = z11;
                        visualTransformation3 = visualTransformation;
                        lVar4 = lVar;
                        mutableInteractionSource4 = mutableInteractionSource;
                        brush3 = brush;
                        qVar2 = qVar;
                        composer2 = composerS;
                        i41 = i10;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0 || composerS.h()) {
                            if (i42 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i18 != 0) {
                                z13 = false;
                            } else {
                                z13 = z10;
                            }
                            if (i20 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i22 != 0) {
                                keyboardOptionsA = KeyboardOptions.Companion.a();
                            } else {
                                keyboardOptionsA = keyboardOptions;
                            }
                            if (i24 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i26 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i28 != 0) {
                                i39 = Integer.MAX_VALUE;
                            } else {
                                i39 = i10;
                            }
                            if (i30 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i33 != 0) {
                                lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i36 != 0) {
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
                            if ((i13 & 8192) != 0) {
                                solidColor = new SolidColor(Color.Companion.a(), null);
                                i35 &= -7169;
                            } else {
                                solidColor = brush;
                            }
                            if (i38 != 0) {
                                qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                            } else {
                                qVarB = qVar;
                            }
                            visualTransformation2 = visualTransformationC;
                            lVar3 = lVar2;
                            keyboardActions2 = keyboardActionsA;
                            mutableInteractionSource3 = mutableInteractionSource2;
                            z15 = z12;
                            z16 = z13;
                            brush2 = solidColor;
                            textStyle2 = textStyleA;
                            keyboardOptions2 = keyboardOptionsA;
                            modifier3 = modifier2;
                        } else {
                            composerS.g();
                            if ((i13 & 8192) != 0) {
                                i35 &= -7169;
                            }
                            modifier3 = modifier;
                            z15 = z6;
                            z16 = z10;
                            textStyle2 = textStyle;
                            keyboardOptions2 = keyboardOptions;
                            keyboardActions2 = keyboardActions;
                            z14 = z11;
                            i39 = i10;
                            visualTransformation2 = visualTransformation;
                            lVar3 = lVar;
                            mutableInteractionSource3 = mutableInteractionSource;
                            brush2 = brush;
                            qVarB = qVar;
                        }
                        composerS.A();
                        ImeOptions imeOptionsB = keyboardOptions2.b(z14);
                        boolean z20 = !z14;
                        if (z14) {
                            i40 = 1;
                        } else {
                            i40 = i39;
                        }
                        int i43 = i14 & 14;
                        composerS.G(511388516);
                        zK = composerS.k(value) | composerS.k(onValueChange);
                        objH2 = composerS.H();
                        if (zK || objH2 == Composer.Companion.a()) {
                            objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        l lVar5 = (l) objH2;
                        int i44 = i35 << 12;
                        int i45 = i43 | (i14 & 896) | ((i14 >> 6) & 7168) | (i44 & 57344) | (i44 & 458752) | (i44 & 3670016) | (i44 & 29360128);
                        int i46 = (i14 >> 18) & 112;
                        int i47 = i14 >> 3;
                        composer2 = composerS;
                        CoreTextFieldKt.a(value, lVar5, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z20, i40, imeOptionsB, keyboardActions2, z15, z16, qVarB, composer2, i45, (i47 & 7168) | i46 | (i47 & 896) | (i35 & 57344), 0);
                        modifier4 = modifier3;
                        z17 = z15;
                        z18 = z16;
                        textStyle3 = textStyle2;
                        z19 = z14;
                        keyboardActions3 = keyboardActions2;
                        i41 = i39;
                        keyboardOptions3 = keyboardOptions2;
                        visualTransformation3 = visualTransformation2;
                        lVar4 = lVar3;
                        mutableInteractionSource4 = mutableInteractionSource3;
                        brush3 = brush2;
                        qVar2 = qVarB;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
                }
                i35 |= 384;
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB2 = keyboardOptions2.b(z14);
                    boolean z21 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i48 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar6 = (l) objH2;
                    int i49 = i35 << 12;
                    int i410 = i48 | (i14 & 896) | ((i14 >> 6) & 7168) | (i49 & 57344) | (i49 & 458752) | (i49 & 3670016) | (i49 & 29360128);
                    int i411 = (i14 >> 18) & 112;
                    int i412 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar6, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z21, i40, imeOptionsB2, keyboardActions2, z15, z16, qVarB, composer2, i410, (i412 & 7168) | i411 | (i412 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB3 = keyboardOptions2.b(z14);
                    boolean z22 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i413 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar7 = (l) objH2;
                    int i414 = i35 << 12;
                    int i415 = i413 | (i14 & 896) | ((i14 >> 6) & 7168) | (i414 & 57344) | (i414 & 458752) | (i414 & 3670016) | (i414 & 29360128);
                    int i416 = (i14 >> 18) & 112;
                    int i417 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar7, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z22, i40, imeOptionsB3, keyboardActions2, z15, z16, qVarB, composer2, i415, (i417 & 7168) | i416 | (i417 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
            }
            i14 |= 3072;
            i18 = i13 & 16;
            if (i18 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.m(z10)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(textStyle)) {
                    i21 = 131072;
                } else {
                    i21 = 65536;
                }
                i14 |= i21;
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(keyboardOptions)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i14 |= i23;
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(keyboardActions)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z11)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            i30 = i13 & 1024;
            if (i30 != 0) {
                i31 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 4;
                } else {
                    i32 = 2;
                }
                i31 = i12 | i32;
            } else {
                i31 = i12;
            }
            i33 = i13 & 2048;
            if (i33 != 0) {
                i31 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(lVar)) {
                    i34 = 32;
                } else {
                    i34 = 16;
                }
                i31 |= i34;
            }
            i35 = i31;
            i36 = i13 & 4096;
            if (i36 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i37 = 256;
                    } else {
                        i37 = 128;
                    }
                    i35 |= i37;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB4 = keyboardOptions2.b(z14);
                    boolean z23 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i418 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar8 = (l) objH2;
                    int i419 = i35 << 12;
                    int i4110 = i418 | (i14 & 896) | ((i14 >> 6) & 7168) | (i419 & 57344) | (i419 & 458752) | (i419 & 3670016) | (i419 & 29360128);
                    int i4111 = (i14 >> 18) & 112;
                    int i4112 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar8, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z23, i40, imeOptionsB4, keyboardActions2, z15, z16, qVarB, composer2, i4110, (i4112 & 7168) | i4111 | (i4112 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB5 = keyboardOptions2.b(z14);
                    boolean z24 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i4113 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar9 = (l) objH2;
                    int i4114 = i35 << 12;
                    int i4115 = i4113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i4114 & 57344) | (i4114 & 458752) | (i4114 & 3670016) | (i4114 & 29360128);
                    int i4116 = (i14 >> 18) & 112;
                    int i4117 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar9, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z24, i40, imeOptionsB5, keyboardActions2, z15, z16, qVarB, composer2, i4115, (i4117 & 7168) | i4116 | (i4117 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
            }
            i35 |= 384;
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB6 = keyboardOptions2.b(z14);
                boolean z25 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i4118 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar10 = (l) objH2;
                int i4119 = i35 << 12;
                int i41110 = i4118 | (i14 & 896) | ((i14 >> 6) & 7168) | (i4119 & 57344) | (i4119 & 458752) | (i4119 & 3670016) | (i4119 & 29360128);
                int i41111 = (i14 >> 18) & 112;
                int i41112 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar10, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z25, i40, imeOptionsB6, keyboardActions2, z15, z16, qVarB, composer2, i41110, (i41112 & 7168) | i41111 | (i41112 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB7 = keyboardOptions2.b(z14);
                boolean z26 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i41113 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar11 = (l) objH2;
                int i41114 = i35 << 12;
                int i41115 = i41113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i41114 & 57344) | (i41114 & 458752) | (i41114 & 3670016) | (i41114 & 29360128);
                int i41116 = (i14 >> 18) & 112;
                int i41117 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar11, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z26, i40, imeOptionsB7, keyboardActions2, z15, z16, qVarB, composer2, i41115, (i41117 & 7168) | i41116 | (i41117 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
        }
        i14 |= 384;
        i15 = i13 & 8;
        i16 = 1024;
        if (i15 != 0) {
            if ((i11 & 7168) == 0) {
                if (composerS.m(z6)) {
                    i17 = 2048;
                } else {
                    i17 = 1024;
                }
                i14 |= i17;
            }
            i18 = i13 & 16;
            if (i18 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.m(z10)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(textStyle)) {
                    i21 = 131072;
                } else {
                    i21 = 65536;
                }
                i14 |= i21;
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(keyboardOptions)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i14 |= i23;
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(keyboardActions)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z11)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            i30 = i13 & 1024;
            if (i30 != 0) {
                i31 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 4;
                } else {
                    i32 = 2;
                }
                i31 = i12 | i32;
            } else {
                i31 = i12;
            }
            i33 = i13 & 2048;
            if (i33 != 0) {
                i31 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(lVar)) {
                    i34 = 32;
                } else {
                    i34 = 16;
                }
                i31 |= i34;
            }
            i35 = i31;
            i36 = i13 & 4096;
            if (i36 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i37 = 256;
                    } else {
                        i37 = 128;
                    }
                    i35 |= i37;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB8 = keyboardOptions2.b(z14);
                    boolean z27 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i41118 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar12 = (l) objH2;
                    int i41119 = i35 << 12;
                    int i411110 = i41118 | (i14 & 896) | ((i14 >> 6) & 7168) | (i41119 & 57344) | (i41119 & 458752) | (i41119 & 3670016) | (i41119 & 29360128);
                    int i411111 = (i14 >> 18) & 112;
                    int i411112 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar12, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z27, i40, imeOptionsB8, keyboardActions2, z15, z16, qVarB, composer2, i411110, (i411112 & 7168) | i411111 | (i411112 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    } else {
                        if (i42 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                        } else {
                            qVarB = qVar;
                        }
                        visualTransformation2 = visualTransformationC;
                        lVar3 = lVar2;
                        keyboardActions2 = keyboardActionsA;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        z15 = z12;
                        z16 = z13;
                        brush2 = solidColor;
                        textStyle2 = textStyleA;
                        keyboardOptions2 = keyboardOptionsA;
                        modifier3 = modifier2;
                    }
                    composerS.A();
                    ImeOptions imeOptionsB9 = keyboardOptions2.b(z14);
                    boolean z28 = !z14;
                    if (z14) {
                        i40 = 1;
                    } else {
                        i40 = i39;
                    }
                    int i411113 = i14 & 14;
                    composerS.G(511388516);
                    zK = composerS.k(value) | composerS.k(onValueChange);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    } else {
                        objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    l lVar13 = (l) objH2;
                    int i411114 = i35 << 12;
                    int i411115 = i411113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i411114 & 57344) | (i411114 & 458752) | (i411114 & 3670016) | (i411114 & 29360128);
                    int i411116 = (i14 >> 18) & 112;
                    int i411117 = i14 >> 3;
                    composer2 = composerS;
                    CoreTextFieldKt.a(value, lVar13, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z28, i40, imeOptionsB9, keyboardActions2, z15, z16, qVarB, composer2, i411115, (i411117 & 7168) | i411116 | (i411117 & 896) | (i35 & 57344), 0);
                    modifier4 = modifier3;
                    z17 = z15;
                    z18 = z16;
                    textStyle3 = textStyle2;
                    z19 = z14;
                    keyboardActions3 = keyboardActions2;
                    i41 = i39;
                    keyboardOptions3 = keyboardOptions2;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    mutableInteractionSource4 = mutableInteractionSource3;
                    brush3 = brush2;
                    qVar2 = qVarB;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
            }
            i35 |= 384;
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB10 = keyboardOptions2.b(z14);
                boolean z29 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i411118 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar14 = (l) objH2;
                int i411119 = i35 << 12;
                int i4111110 = i411118 | (i14 & 896) | ((i14 >> 6) & 7168) | (i411119 & 57344) | (i411119 & 458752) | (i411119 & 3670016) | (i411119 & 29360128);
                int i4111111 = (i14 >> 18) & 112;
                int i4111112 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar14, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z29, i40, imeOptionsB10, keyboardActions2, z15, z16, qVarB, composer2, i4111110, (i4111112 & 7168) | i4111111 | (i4111112 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB11 = keyboardOptions2.b(z14);
                boolean z210 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i4111113 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar15 = (l) objH2;
                int i4111114 = i35 << 12;
                int i4111115 = i4111113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i4111114 & 57344) | (i4111114 & 458752) | (i4111114 & 3670016) | (i4111114 & 29360128);
                int i4111116 = (i14 >> 18) & 112;
                int i4111117 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar15, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z210, i40, imeOptionsB11, keyboardActions2, z15, z16, qVarB, composer2, i4111115, (i4111117 & 7168) | i4111116 | (i4111117 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
        }
        i14 |= 3072;
        i18 = i13 & 16;
        if (i18 != 0) {
            i14 |= CpioConstants.C_ISBLK;
        } else if ((i11 & 57344) == 0) {
            if (composerS.m(z10)) {
                i19 = 16384;
            } else {
                i19 = 8192;
            }
            i14 |= i19;
        }
        i20 = i13 & 32;
        if (i20 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i11 & 458752) == 0) {
            if (composerS.k(textStyle)) {
                i21 = 131072;
            } else {
                i21 = 65536;
            }
            i14 |= i21;
        }
        i22 = i13 & 64;
        if (i22 != 0) {
            i14 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(keyboardOptions)) {
                i23 = 1048576;
            } else {
                i23 = 524288;
            }
            i14 |= i23;
        }
        i24 = i13 & 128;
        if (i24 != 0) {
            i14 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.k(keyboardActions)) {
                i25 = 8388608;
            } else {
                i25 = 4194304;
            }
            i14 |= i25;
        }
        i26 = i13 & 256;
        if (i26 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.m(z11)) {
                i27 = 67108864;
            } else {
                i27 = 33554432;
            }
            i14 |= i27;
        }
        i28 = i13 & 512;
        if (i28 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.p(i10)) {
                i29 = 536870912;
            } else {
                i29 = 268435456;
            }
            i14 |= i29;
        }
        i30 = i13 & 1024;
        if (i30 != 0) {
            i31 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            if (composerS.k(visualTransformation)) {
                i32 = 4;
            } else {
                i32 = 2;
            }
            i31 = i12 | i32;
        } else {
            i31 = i12;
        }
        i33 = i13 & 2048;
        if (i33 != 0) {
            i31 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.k(lVar)) {
                i34 = 32;
            } else {
                i34 = 16;
            }
            i31 |= i34;
        }
        i35 = i31;
        i36 = i13 & 4096;
        if (i36 != 0) {
            if ((i12 & 896) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i37 = 256;
                } else {
                    i37 = 128;
                }
                i35 |= i37;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB12 = keyboardOptions2.b(z14);
                boolean z211 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i4111118 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar16 = (l) objH2;
                int i4111119 = i35 << 12;
                int i41111110 = i4111118 | (i14 & 896) | ((i14 >> 6) & 7168) | (i4111119 & 57344) | (i4111119 & 458752) | (i4111119 & 3670016) | (i4111119 & 29360128);
                int i41111111 = (i14 >> 18) & 112;
                int i41111112 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar16, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z211, i40, imeOptionsB12, keyboardActions2, z15, z16, qVarB, composer2, i41111110, (i41111112 & 7168) | i41111111 | (i41111112 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                } else {
                    if (i42 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                    } else {
                        qVarB = qVar;
                    }
                    visualTransformation2 = visualTransformationC;
                    lVar3 = lVar2;
                    keyboardActions2 = keyboardActionsA;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    z15 = z12;
                    z16 = z13;
                    brush2 = solidColor;
                    textStyle2 = textStyleA;
                    keyboardOptions2 = keyboardOptionsA;
                    modifier3 = modifier2;
                }
                composerS.A();
                ImeOptions imeOptionsB13 = keyboardOptions2.b(z14);
                boolean z212 = !z14;
                if (z14) {
                    i40 = 1;
                } else {
                    i40 = i39;
                }
                int i41111113 = i14 & 14;
                composerS.G(511388516);
                zK = composerS.k(value) | composerS.k(onValueChange);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                } else {
                    objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                    composerS.z(objH2);
                }
                composerS.Q();
                l lVar17 = (l) objH2;
                int i41111114 = i35 << 12;
                int i41111115 = i41111113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i41111114 & 57344) | (i41111114 & 458752) | (i41111114 & 3670016) | (i41111114 & 29360128);
                int i41111116 = (i14 >> 18) & 112;
                int i41111117 = i14 >> 3;
                composer2 = composerS;
                CoreTextFieldKt.a(value, lVar17, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z212, i40, imeOptionsB13, keyboardActions2, z15, z16, qVarB, composer2, i41111115, (i41111117 & 7168) | i41111116 | (i41111117 & 896) | (i35 & 57344), 0);
                modifier4 = modifier3;
                z17 = z15;
                z18 = z16;
                textStyle3 = textStyle2;
                z19 = z14;
                keyboardActions3 = keyboardActions2;
                i41 = i39;
                keyboardOptions3 = keyboardOptions2;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                mutableInteractionSource4 = mutableInteractionSource3;
                brush3 = brush2;
                qVar2 = qVarB;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
        }
        i35 |= 384;
        if ((i12 & 7168) != 0) {
            if ((i13 & 8192) == 0) {
                i16 = 2048;
            }
            i35 |= i16;
        }
        i38 = i13 & 16384;
        if (i38 != 0) {
            i35 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            i35 |= composerS.k(qVar) ? 16384 : 8192;
        }
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i42 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                } else {
                    qVarB = qVar;
                }
                visualTransformation2 = visualTransformationC;
                lVar3 = lVar2;
                keyboardActions2 = keyboardActionsA;
                mutableInteractionSource3 = mutableInteractionSource2;
                z15 = z12;
                z16 = z13;
                brush2 = solidColor;
                textStyle2 = textStyleA;
                keyboardOptions2 = keyboardOptionsA;
                modifier3 = modifier2;
            } else {
                if (i42 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                } else {
                    qVarB = qVar;
                }
                visualTransformation2 = visualTransformationC;
                lVar3 = lVar2;
                keyboardActions2 = keyboardActionsA;
                mutableInteractionSource3 = mutableInteractionSource2;
                z15 = z12;
                z16 = z13;
                brush2 = solidColor;
                textStyle2 = textStyleA;
                keyboardOptions2 = keyboardOptionsA;
                modifier3 = modifier2;
            }
            composerS.A();
            ImeOptions imeOptionsB14 = keyboardOptions2.b(z14);
            boolean z213 = !z14;
            if (z14) {
                i40 = 1;
            } else {
                i40 = i39;
            }
            int i41111118 = i14 & 14;
            composerS.G(511388516);
            zK = composerS.k(value) | composerS.k(onValueChange);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                composerS.z(objH2);
            } else {
                objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                composerS.z(objH2);
            }
            composerS.Q();
            l lVar18 = (l) objH2;
            int i41111119 = i35 << 12;
            int i411111110 = i41111118 | (i14 & 896) | ((i14 >> 6) & 7168) | (i41111119 & 57344) | (i41111119 & 458752) | (i41111119 & 3670016) | (i41111119 & 29360128);
            int i411111111 = (i14 >> 18) & 112;
            int i411111112 = i14 >> 3;
            composer2 = composerS;
            CoreTextFieldKt.a(value, lVar18, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z213, i40, imeOptionsB14, keyboardActions2, z15, z16, qVarB, composer2, i411111110, (i411111112 & 7168) | i411111111 | (i411111112 & 896) | (i35 & 57344), 0);
            modifier4 = modifier3;
            z17 = z15;
            z18 = z16;
            textStyle3 = textStyle2;
            z19 = z14;
            keyboardActions3 = keyboardActions2;
            i41 = i39;
            keyboardOptions3 = keyboardOptions2;
            visualTransformation3 = visualTransformation2;
            lVar4 = lVar3;
            mutableInteractionSource4 = mutableInteractionSource3;
            brush3 = brush2;
            qVar2 = qVarB;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i42 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                } else {
                    qVarB = qVar;
                }
                visualTransformation2 = visualTransformationC;
                lVar3 = lVar2;
                keyboardActions2 = keyboardActionsA;
                mutableInteractionSource3 = mutableInteractionSource2;
                z15 = z12;
                z16 = z13;
                brush2 = solidColor;
                textStyle2 = textStyleA;
                keyboardOptions2 = keyboardOptionsA;
                modifier3 = modifier2;
            } else {
                if (i42 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$5.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarB = ComposableSingletons$BasicTextFieldKt.INSTANCE.b();
                } else {
                    qVarB = qVar;
                }
                visualTransformation2 = visualTransformationC;
                lVar3 = lVar2;
                keyboardActions2 = keyboardActionsA;
                mutableInteractionSource3 = mutableInteractionSource2;
                z15 = z12;
                z16 = z13;
                brush2 = solidColor;
                textStyle2 = textStyleA;
                keyboardOptions2 = keyboardOptionsA;
                modifier3 = modifier2;
            }
            composerS.A();
            ImeOptions imeOptionsB15 = keyboardOptions2.b(z14);
            boolean z214 = !z14;
            if (z14) {
                i40 = 1;
            } else {
                i40 = i39;
            }
            int i411111113 = i14 & 14;
            composerS.G(511388516);
            zK = composerS.k(value) | composerS.k(onValueChange);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                composerS.z(objH2);
            } else {
                objH2 = new BasicTextFieldKt$BasicTextField$7$1(value, onValueChange);
                composerS.z(objH2);
            }
            composerS.Q();
            l lVar19 = (l) objH2;
            int i411111114 = i35 << 12;
            int i411111115 = i411111113 | (i14 & 896) | ((i14 >> 6) & 7168) | (i411111114 & 57344) | (i411111114 & 458752) | (i411111114 & 3670016) | (i411111114 & 29360128);
            int i411111116 = (i14 >> 18) & 112;
            int i411111117 = i14 >> 3;
            composer2 = composerS;
            CoreTextFieldKt.a(value, lVar19, modifier3, textStyle2, visualTransformation2, lVar3, mutableInteractionSource3, brush2, z214, i40, imeOptionsB15, keyboardActions2, z15, z16, qVarB, composer2, i411111115, (i411111117 & 7168) | i411111116 | (i411111117 & 896) | (i35 & 57344), 0);
            modifier4 = modifier3;
            z17 = z15;
            z18 = z16;
            textStyle3 = textStyle2;
            z19 = z14;
            keyboardActions3 = keyboardActions2;
            i41 = i39;
            keyboardOptions3 = keyboardOptions2;
            visualTransformation3 = visualTransformation2;
            lVar4 = lVar3;
            mutableInteractionSource4 = mutableInteractionSource3;
            brush3 = brush2;
            qVar2 = qVarB;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$8(value, onValueChange, modifier4, z17, z18, textStyle3, keyboardOptions3, keyboardActions3, z19, i41, visualTransformation3, lVar4, mutableInteractionSource4, brush3, qVar2, i11, i12, i13));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x013d  */
    /* JADX WARN: Code duplicated, block: B:102:0x0143  */
    /* JADX WARN: Code duplicated, block: B:103:0x0146  */
    /* JADX WARN: Code duplicated, block: B:107:0x014e  */
    /* JADX WARN: Code duplicated, block: B:108:0x0153  */
    /* JADX WARN: Code duplicated, block: B:110:0x0159  */
    /* JADX WARN: Code duplicated, block: B:112:0x015f  */
    /* JADX WARN: Code duplicated, block: B:113:0x0162  */
    /* JADX WARN: Code duplicated, block: B:115:0x0167  */
    /* JADX WARN: Code duplicated, block: B:118:0x016d  */
    /* JADX WARN: Code duplicated, block: B:120:0x0172  */
    /* JADX WARN: Code duplicated, block: B:122:0x0178  */
    /* JADX WARN: Code duplicated, block: B:124:0x017e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0181  */
    /* JADX WARN: Code duplicated, block: B:129:0x018a  */
    /* JADX WARN: Code duplicated, block: B:131:0x018f  */
    /* JADX WARN: Code duplicated, block: B:133:0x0193  */
    /* JADX WARN: Code duplicated, block: B:135:0x019b  */
    /* JADX WARN: Code duplicated, block: B:136:0x019e  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:142:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b5 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:153:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d2  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e2  */
    /* JADX WARN: Code duplicated, block: B:166:0x0212  */
    /* JADX WARN: Code duplicated, block: B:168:0x021b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0249 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:176:0x024b  */
    /* JADX WARN: Code duplicated, block: B:177:0x024e  */
    /* JADX WARN: Code duplicated, block: B:179:0x0252  */
    /* JADX WARN: Code duplicated, block: B:180:0x0255  */
    /* JADX WARN: Code duplicated, block: B:182:0x0259  */
    /* JADX WARN: Code duplicated, block: B:183:0x025b  */
    /* JADX WARN: Code duplicated, block: B:185:0x025f  */
    /* JADX WARN: Code duplicated, block: B:186:0x0266  */
    /* JADX WARN: Code duplicated, block: B:188:0x026a  */
    /* JADX WARN: Code duplicated, block: B:189:0x0271  */
    /* JADX WARN: Code duplicated, block: B:191:0x0275  */
    /* JADX WARN: Code duplicated, block: B:192:0x027c  */
    /* JADX WARN: Code duplicated, block: B:194:0x0280  */
    /* JADX WARN: Code duplicated, block: B:195:0x0282  */
    /* JADX WARN: Code duplicated, block: B:197:0x0286  */
    /* JADX WARN: Code duplicated, block: B:198:0x028a  */
    /* JADX WARN: Code duplicated, block: B:200:0x028e  */
    /* JADX WARN: Code duplicated, block: B:201:0x0295  */
    /* JADX WARN: Code duplicated, block: B:203:0x0299  */
    /* JADX WARN: Code duplicated, block: B:204:0x029c  */
    /* JADX WARN: Code duplicated, block: B:206:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:208:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:210:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:213:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:214:0x02da  */
    /* JADX WARN: Code duplicated, block: B:216:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:218:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:221:0x031d  */
    /* JADX WARN: Code duplicated, block: B:224:0x0370  */
    /* JADX WARN: Code duplicated, block: B:226:0x0376  */
    /* JADX WARN: Code duplicated, block: B:229:0x038c  */
    /* JADX WARN: Code duplicated, block: B:230:0x038f  */
    /* JADX WARN: Code duplicated, block: B:233:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:235:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:240:0x0426  */
    /* JADX WARN: Code duplicated, block: B:242:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006f  */
    /* JADX WARN: Code duplicated, block: B:38:0x0074  */
    /* JADX WARN: Code duplicated, block: B:40:0x0078  */
    /* JADX WARN: Code duplicated, block: B:42:0x0080  */
    /* JADX WARN: Code duplicated, block: B:43:0x0083  */
    /* JADX WARN: Code duplicated, block: B:47:0x0092  */
    /* JADX WARN: Code duplicated, block: B:48:0x0097  */
    /* JADX WARN: Code duplicated, block: B:50:0x009d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:58:0x00b7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:67:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fd  */
    /* JADX WARN: Code duplicated, block: B:82:0x0103  */
    /* JADX WARN: Code duplicated, block: B:83:0x0106  */
    /* JADX WARN: Code duplicated, block: B:87:0x010e  */
    /* JADX WARN: Code duplicated, block: B:88:0x0115  */
    /* JADX WARN: Code duplicated, block: B:90:0x011d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0123  */
    /* JADX WARN: Code duplicated, block: B:93:0x0126  */
    /* JADX WARN: Code duplicated, block: B:97:0x012e  */
    /* JADX WARN: Code duplicated, block: B:98:0x0135  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull String value, @NotNull l<? super String, l0> onValueChange, @Nullable Modifier modifier, boolean z6, boolean z10, @Nullable TextStyle textStyle, @Nullable KeyboardOptions keyboardOptions, @Nullable KeyboardActions keyboardActions, boolean z11, int i10, @Nullable VisualTransformation visualTransformation, @Nullable l<? super TextLayoutResult, l0> lVar, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Brush brush, @Nullable q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i11, int i12, int i13) {
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
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        int i36;
        int i37;
        int i38;
        int i39;
        Modifier modifier2;
        boolean z12;
        boolean z13;
        TextStyle textStyleA;
        KeyboardOptions keyboardOptionsA;
        KeyboardActions keyboardActionsA;
        boolean z14;
        int i40;
        VisualTransformation visualTransformationC;
        l<? super TextLayoutResult, l0> lVar2;
        MutableInteractionSource mutableInteractionSource2;
        Brush solidColor;
        q<? super p<? super Composer, ? super Integer, l0>, ? super Composer, ? super Integer, l0> qVarA;
        int i41;
        l<? super TextLayoutResult, l0> lVar3;
        VisualTransformation visualTransformation2;
        int i42;
        Object objH;
        int i43;
        Object objH2;
        Composer.Companion companion;
        MutableState mutableState;
        boolean zK;
        Object objH3;
        MutableState mutableState2;
        int i44;
        boolean zK2;
        Object objH4;
        boolean z15;
        TextStyle textStyle2;
        VisualTransformation visualTransformation3;
        l<? super TextLayoutResult, l0> lVar4;
        Brush brush2;
        KeyboardOptions keyboardOptions2;
        boolean z16;
        Modifier modifier3;
        MutableInteractionSource mutableInteractionSource3;
        int i45;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-454732590);
        if ((i13 & 1) != 0) {
            i14 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            i14 = (composerS.k(value) ? 4 : 2) | i11;
        } else {
            i14 = i11;
        }
        if ((i13 & 2) != 0) {
            i14 |= 48;
        } else if ((i11 & 112) == 0) {
            i14 |= composerS.k(onValueChange) ? 32 : 16;
        }
        int i46 = i13 & 4;
        if (i46 == 0) {
            if ((i11 & 896) == 0) {
                i14 |= composerS.k(modifier) ? 256 : 128;
            }
            i15 = i13 & 8;
            i16 = 1024;
            if (i15 != 0) {
                if ((i11 & 7168) == 0) {
                    if (composerS.m(z6)) {
                        i17 = 2048;
                    } else {
                        i17 = 1024;
                    }
                    i14 |= i17;
                }
                i18 = i13 & 16;
                if (i18 != 0) {
                    i14 |= CpioConstants.C_ISBLK;
                } else if ((i11 & 57344) == 0) {
                    if (composerS.m(z10)) {
                        i19 = 16384;
                    } else {
                        i19 = 8192;
                    }
                    i14 |= i19;
                }
                i20 = i13 & 32;
                if (i20 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i11 & 458752) == 0) {
                    if (composerS.k(textStyle)) {
                        i21 = 131072;
                    } else {
                        i21 = 65536;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 64;
                if (i22 != 0) {
                    i14 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(keyboardOptions)) {
                        i23 = 1048576;
                    } else {
                        i23 = 524288;
                    }
                    i14 |= i23;
                }
                i24 = i13 & 128;
                if (i24 != 0) {
                    i14 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(keyboardActions)) {
                        i25 = 8388608;
                    } else {
                        i25 = 4194304;
                    }
                    i14 |= i25;
                }
                i26 = i13 & 256;
                if (i26 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.m(z11)) {
                        i27 = 67108864;
                    } else {
                        i27 = 33554432;
                    }
                    i14 |= i27;
                }
                i28 = i13 & 512;
                if (i28 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.p(i10)) {
                        i29 = 536870912;
                    } else {
                        i29 = 268435456;
                    }
                    i14 |= i29;
                }
                i30 = i13 & 1024;
                if (i30 != 0) {
                    i31 = i12 | 6;
                } else if ((i12 & 14) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i32 = 4;
                    } else {
                        i32 = 2;
                    }
                    i31 = i12 | i32;
                } else {
                    i31 = i12;
                }
                i33 = i13 & 2048;
                if (i33 != 0) {
                    i31 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.k(lVar)) {
                        i34 = 32;
                    } else {
                        i34 = 16;
                    }
                    i31 |= i34;
                }
                i35 = i31;
                i36 = i13 & 4096;
                if (i36 != 0) {
                    if ((i12 & 896) == 0) {
                        if (composerS.k(mutableInteractionSource)) {
                            i37 = 256;
                        } else {
                            i37 = 128;
                        }
                        i35 |= i37;
                    }
                    if ((i12 & 7168) != 0) {
                        if ((i13 & 8192) == 0 && composerS.k(brush)) {
                            i16 = 2048;
                        }
                        i35 |= i16;
                    }
                    i38 = i13 & 16384;
                    if (i38 != 0) {
                        i35 |= CpioConstants.C_ISBLK;
                    } else if ((i12 & 57344) == 0) {
                        i35 |= composerS.k(qVar) ? 16384 : 8192;
                    }
                    i39 = i14;
                    if ((i14 & 1533916891) != 306783378 && (46811 & i35) == 9362 && composerS.b()) {
                        composerS.g();
                        modifier3 = modifier;
                        z12 = z6;
                        z15 = z10;
                        textStyle2 = textStyle;
                        keyboardOptions2 = keyboardOptions;
                        keyboardActionsA = keyboardActions;
                        z16 = z11;
                        i45 = i10;
                        visualTransformation3 = visualTransformation;
                        lVar4 = lVar;
                        mutableInteractionSource3 = mutableInteractionSource;
                        brush2 = brush;
                        qVarA = qVar;
                    } else {
                        composerS.J();
                        if ((i11 & 1) != 0 || composerS.h()) {
                            if (i46 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                z12 = true;
                            } else {
                                z12 = z6;
                            }
                            if (i18 != 0) {
                                z13 = false;
                            } else {
                                z13 = z10;
                            }
                            if (i20 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle;
                            }
                            if (i22 != 0) {
                                keyboardOptionsA = KeyboardOptions.Companion.a();
                            } else {
                                keyboardOptionsA = keyboardOptions;
                            }
                            if (i24 != 0) {
                                keyboardActionsA = KeyboardActions.Companion.a();
                            } else {
                                keyboardActionsA = keyboardActions;
                            }
                            if (i26 != 0) {
                                z14 = false;
                            } else {
                                z14 = z11;
                            }
                            if (i28 != 0) {
                                i40 = Integer.MAX_VALUE;
                            } else {
                                i40 = i10;
                            }
                            if (i30 != 0) {
                                visualTransformationC = VisualTransformation.Companion.c();
                            } else {
                                visualTransformationC = visualTransformation;
                            }
                            if (i33 != 0) {
                                lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            if (i36 != 0) {
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
                            if ((i13 & 8192) != 0) {
                                solidColor = new SolidColor(Color.Companion.a(), null);
                                i35 &= -7169;
                            } else {
                                solidColor = brush;
                            }
                            if (i38 != 0) {
                                qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                            } else {
                                qVarA = qVar;
                            }
                            i41 = i35;
                            lVar3 = lVar2;
                            visualTransformation2 = visualTransformationC;
                            i42 = i40;
                        } else {
                            composerS.g();
                            if ((i13 & 8192) != 0) {
                                i35 &= -7169;
                            }
                            modifier2 = modifier;
                            z12 = z6;
                            z13 = z10;
                            textStyleA = textStyle;
                            keyboardOptionsA = keyboardOptions;
                            keyboardActionsA = keyboardActions;
                            z14 = z11;
                            i42 = i10;
                            visualTransformation2 = visualTransformation;
                            mutableInteractionSource2 = mutableInteractionSource;
                            solidColor = brush;
                            qVarA = qVar;
                            i41 = i35;
                            lVar3 = lVar;
                        }
                        composerS.A();
                        i43 = i42;
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        companion = Composer.Companion;
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        TextFieldValue textFieldValueD = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                        composerS.G(1157296644);
                        zK = composerS.k(value);
                        boolean z17 = z13;
                        objH3 = composerS.H();
                        if (zK || objH3 == companion.a()) {
                            objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        mutableState2 = (MutableState) objH3;
                        ImeOptions imeOptionsB = keyboardOptionsA.b(z14);
                        boolean z18 = !z14;
                        if (z14) {
                            i44 = 1;
                        } else {
                            i44 = i43;
                        }
                        composerS.G(1618982084);
                        KeyboardOptions keyboardOptions3 = keyboardOptionsA;
                        zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                        boolean z19 = z14;
                        objH4 = composerS.H();
                        if (zK2 || objH4 == companion.a()) {
                            objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                            composerS.z(objH4);
                        }
                        composerS.Q();
                        int i47 = i41 << 12;
                        int i48 = i39 >> 3;
                        CoreTextFieldKt.a(textFieldValueD, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z18, i44, imeOptionsB, keyboardActionsA, z12, z17, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i47 & 57344) | (i47 & 458752) | (3670016 & i47) | (i47 & 29360128), (i48 & 7168) | ((i39 >> 18) & 112) | (i48 & 896) | (i41 & 57344), 0);
                        z15 = z17;
                        textStyle2 = textStyleA;
                        visualTransformation3 = visualTransformation2;
                        lVar4 = lVar3;
                        brush2 = solidColor;
                        keyboardOptions2 = keyboardOptions3;
                        z16 = z19;
                        modifier3 = modifier2;
                        mutableInteractionSource3 = mutableInteractionSource2;
                        i45 = i43;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
                }
                i35 |= 384;
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                i39 = i14;
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD2 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z110 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB2 = keyboardOptionsA.b(z14);
                    boolean z111 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions4 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z112 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i49 = i41 << 12;
                    int i410 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD2, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z111, i44, imeOptionsB2, keyboardActionsA, z12, z110, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i49 & 57344) | (i49 & 458752) | (3670016 & i49) | (i49 & 29360128), (i410 & 7168) | ((i39 >> 18) & 112) | (i410 & 896) | (i41 & 57344), 0);
                    z15 = z110;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions4;
                    z16 = z112;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD3 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z113 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB3 = keyboardOptionsA.b(z14);
                    boolean z114 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions5 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z115 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i411 = i41 << 12;
                    int i412 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD3, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z114, i44, imeOptionsB3, keyboardActionsA, z12, z113, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i411 & 57344) | (i411 & 458752) | (3670016 & i411) | (i411 & 29360128), (i412 & 7168) | ((i39 >> 18) & 112) | (i412 & 896) | (i41 & 57344), 0);
                    z15 = z113;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions5;
                    z16 = z115;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
            }
            i14 |= 3072;
            i18 = i13 & 16;
            if (i18 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.m(z10)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(textStyle)) {
                    i21 = 131072;
                } else {
                    i21 = 65536;
                }
                i14 |= i21;
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(keyboardOptions)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i14 |= i23;
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(keyboardActions)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z11)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            i30 = i13 & 1024;
            if (i30 != 0) {
                i31 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 4;
                } else {
                    i32 = 2;
                }
                i31 = i12 | i32;
            } else {
                i31 = i12;
            }
            i33 = i13 & 2048;
            if (i33 != 0) {
                i31 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(lVar)) {
                    i34 = 32;
                } else {
                    i34 = 16;
                }
                i31 |= i34;
            }
            i35 = i31;
            i36 = i13 & 4096;
            if (i36 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i37 = 256;
                    } else {
                        i37 = 128;
                    }
                    i35 |= i37;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                i39 = i14;
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD4 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z116 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB4 = keyboardOptionsA.b(z14);
                    boolean z117 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions6 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z118 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i413 = i41 << 12;
                    int i414 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD4, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z117, i44, imeOptionsB4, keyboardActionsA, z12, z116, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i413 & 57344) | (i413 & 458752) | (3670016 & i413) | (i413 & 29360128), (i414 & 7168) | ((i39 >> 18) & 112) | (i414 & 896) | (i41 & 57344), 0);
                    z15 = z116;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions6;
                    z16 = z118;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD5 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z119 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB5 = keyboardOptionsA.b(z14);
                    boolean z1110 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions7 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z1111 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i415 = i41 << 12;
                    int i416 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD5, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z1110, i44, imeOptionsB5, keyboardActionsA, z12, z119, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i415 & 57344) | (i415 & 458752) | (3670016 & i415) | (i415 & 29360128), (i416 & 7168) | ((i39 >> 18) & 112) | (i416 & 896) | (i41 & 57344), 0);
                    z15 = z119;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions7;
                    z16 = z1111;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
            }
            i35 |= 384;
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            i39 = i14;
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD6 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z1112 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB6 = keyboardOptionsA.b(z14);
                boolean z1113 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions8 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z1114 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i417 = i41 << 12;
                int i418 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD6, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z1113, i44, imeOptionsB6, keyboardActionsA, z12, z1112, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i417 & 57344) | (i417 & 458752) | (3670016 & i417) | (i417 & 29360128), (i418 & 7168) | ((i39 >> 18) & 112) | (i418 & 896) | (i41 & 57344), 0);
                z15 = z1112;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions8;
                z16 = z1114;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD7 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z1115 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB7 = keyboardOptionsA.b(z14);
                boolean z1116 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions9 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z1117 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i419 = i41 << 12;
                int i4110 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD7, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z1116, i44, imeOptionsB7, keyboardActionsA, z12, z1115, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i419 & 57344) | (i419 & 458752) | (3670016 & i419) | (i419 & 29360128), (i4110 & 7168) | ((i39 >> 18) & 112) | (i4110 & 896) | (i41 & 57344), 0);
                z15 = z1115;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions9;
                z16 = z1117;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
        }
        i14 |= 384;
        i15 = i13 & 8;
        i16 = 1024;
        if (i15 != 0) {
            if ((i11 & 7168) == 0) {
                if (composerS.m(z6)) {
                    i17 = 2048;
                } else {
                    i17 = 1024;
                }
                i14 |= i17;
            }
            i18 = i13 & 16;
            if (i18 != 0) {
                i14 |= CpioConstants.C_ISBLK;
            } else if ((i11 & 57344) == 0) {
                if (composerS.m(z10)) {
                    i19 = 16384;
                } else {
                    i19 = 8192;
                }
                i14 |= i19;
            }
            i20 = i13 & 32;
            if (i20 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i11 & 458752) == 0) {
                if (composerS.k(textStyle)) {
                    i21 = 131072;
                } else {
                    i21 = 65536;
                }
                i14 |= i21;
            }
            i22 = i13 & 64;
            if (i22 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(keyboardOptions)) {
                    i23 = 1048576;
                } else {
                    i23 = 524288;
                }
                i14 |= i23;
            }
            i24 = i13 & 128;
            if (i24 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(keyboardActions)) {
                    i25 = 8388608;
                } else {
                    i25 = 4194304;
                }
                i14 |= i25;
            }
            i26 = i13 & 256;
            if (i26 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.m(z11)) {
                    i27 = 67108864;
                } else {
                    i27 = 33554432;
                }
                i14 |= i27;
            }
            i28 = i13 & 512;
            if (i28 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.p(i10)) {
                    i29 = 536870912;
                } else {
                    i29 = 268435456;
                }
                i14 |= i29;
            }
            i30 = i13 & 1024;
            if (i30 != 0) {
                i31 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 4;
                } else {
                    i32 = 2;
                }
                i31 = i12 | i32;
            } else {
                i31 = i12;
            }
            i33 = i13 & 2048;
            if (i33 != 0) {
                i31 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(lVar)) {
                    i34 = 32;
                } else {
                    i34 = 16;
                }
                i31 |= i34;
            }
            i35 = i31;
            i36 = i13 & 4096;
            if (i36 != 0) {
                if ((i12 & 896) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i37 = 256;
                    } else {
                        i37 = 128;
                    }
                    i35 |= i37;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0) {
                        i16 = 2048;
                    }
                    i35 |= i16;
                }
                i38 = i13 & 16384;
                if (i38 != 0) {
                    i35 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i35 |= composerS.k(qVar) ? 16384 : 8192;
                }
                i39 = i14;
                if ((i14 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD8 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z1118 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB8 = keyboardOptionsA.b(z14);
                    boolean z1119 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions10 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z11110 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i4111 = i41 << 12;
                    int i4112 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD8, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z1119, i44, imeOptionsB8, keyboardActionsA, z12, z1118, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i4111 & 57344) | (i4111 & 458752) | (3670016 & i4111) | (i4111 & 29360128), (i4112 & 7168) | ((i39 >> 18) & 112) | (i4112 & 896) | (i41 & 57344), 0);
                    z15 = z1118;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions10;
                    z16 = z11110;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0) {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    } else {
                        if (i46 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z12 = true;
                        } else {
                            z12 = z6;
                        }
                        if (i18 != 0) {
                            z13 = false;
                        } else {
                            z13 = z10;
                        }
                        if (i20 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle;
                        }
                        if (i22 != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        if (i24 != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i26 != 0) {
                            z14 = false;
                        } else {
                            z14 = z11;
                        }
                        if (i28 != 0) {
                            i40 = Integer.MAX_VALUE;
                        } else {
                            i40 = i10;
                        }
                        if (i30 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if (i33 != 0) {
                            lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        if (i36 != 0) {
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
                        if ((i13 & 8192) != 0) {
                            solidColor = new SolidColor(Color.Companion.a(), null);
                            i35 &= -7169;
                        } else {
                            solidColor = brush;
                        }
                        if (i38 != 0) {
                            qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                        } else {
                            qVarA = qVar;
                        }
                        i41 = i35;
                        lVar3 = lVar2;
                        visualTransformation2 = visualTransformationC;
                        i42 = i40;
                    }
                    composerS.A();
                    i43 = i42;
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    companion = Composer.Companion;
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    TextFieldValue textFieldValueD9 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                    composerS.G(1157296644);
                    zK = composerS.k(value);
                    boolean z11111 = z13;
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    } else {
                        objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    mutableState2 = (MutableState) objH3;
                    ImeOptions imeOptionsB9 = keyboardOptionsA.b(z14);
                    boolean z11112 = !z14;
                    if (z14) {
                        i44 = 1;
                    } else {
                        i44 = i43;
                    }
                    composerS.G(1618982084);
                    KeyboardOptions keyboardOptions11 = keyboardOptionsA;
                    zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                    boolean z11113 = z14;
                    objH4 = composerS.H();
                    if (zK2) {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    } else {
                        objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                        composerS.z(objH4);
                    }
                    composerS.Q();
                    int i4113 = i41 << 12;
                    int i4114 = i39 >> 3;
                    CoreTextFieldKt.a(textFieldValueD9, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z11112, i44, imeOptionsB9, keyboardActionsA, z12, z11111, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i4113 & 57344) | (i4113 & 458752) | (3670016 & i4113) | (i4113 & 29360128), (i4114 & 7168) | ((i39 >> 18) & 112) | (i4114 & 896) | (i41 & 57344), 0);
                    z15 = z11111;
                    textStyle2 = textStyleA;
                    visualTransformation3 = visualTransformation2;
                    lVar4 = lVar3;
                    brush2 = solidColor;
                    keyboardOptions2 = keyboardOptions11;
                    z16 = z11113;
                    modifier3 = modifier2;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    i45 = i43;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
            }
            i35 |= 384;
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            i39 = i14;
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD10 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z11114 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB10 = keyboardOptionsA.b(z14);
                boolean z11115 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions12 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z11116 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i4115 = i41 << 12;
                int i4116 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD10, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z11115, i44, imeOptionsB10, keyboardActionsA, z12, z11114, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i4115 & 57344) | (i4115 & 458752) | (3670016 & i4115) | (i4115 & 29360128), (i4116 & 7168) | ((i39 >> 18) & 112) | (i4116 & 896) | (i41 & 57344), 0);
                z15 = z11114;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions12;
                z16 = z11116;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD11 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z11117 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB11 = keyboardOptionsA.b(z14);
                boolean z11118 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions13 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z11119 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i4117 = i41 << 12;
                int i4118 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD11, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z11118, i44, imeOptionsB11, keyboardActionsA, z12, z11117, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i4117 & 57344) | (i4117 & 458752) | (3670016 & i4117) | (i4117 & 29360128), (i4118 & 7168) | ((i39 >> 18) & 112) | (i4118 & 896) | (i41 & 57344), 0);
                z15 = z11117;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions13;
                z16 = z11119;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
        }
        i14 |= 3072;
        i18 = i13 & 16;
        if (i18 != 0) {
            i14 |= CpioConstants.C_ISBLK;
        } else if ((i11 & 57344) == 0) {
            if (composerS.m(z10)) {
                i19 = 16384;
            } else {
                i19 = 8192;
            }
            i14 |= i19;
        }
        i20 = i13 & 32;
        if (i20 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i11 & 458752) == 0) {
            if (composerS.k(textStyle)) {
                i21 = 131072;
            } else {
                i21 = 65536;
            }
            i14 |= i21;
        }
        i22 = i13 & 64;
        if (i22 != 0) {
            i14 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(keyboardOptions)) {
                i23 = 1048576;
            } else {
                i23 = 524288;
            }
            i14 |= i23;
        }
        i24 = i13 & 128;
        if (i24 != 0) {
            i14 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.k(keyboardActions)) {
                i25 = 8388608;
            } else {
                i25 = 4194304;
            }
            i14 |= i25;
        }
        i26 = i13 & 256;
        if (i26 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.m(z11)) {
                i27 = 67108864;
            } else {
                i27 = 33554432;
            }
            i14 |= i27;
        }
        i28 = i13 & 512;
        if (i28 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.p(i10)) {
                i29 = 536870912;
            } else {
                i29 = 268435456;
            }
            i14 |= i29;
        }
        i30 = i13 & 1024;
        if (i30 != 0) {
            i31 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            if (composerS.k(visualTransformation)) {
                i32 = 4;
            } else {
                i32 = 2;
            }
            i31 = i12 | i32;
        } else {
            i31 = i12;
        }
        i33 = i13 & 2048;
        if (i33 != 0) {
            i31 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.k(lVar)) {
                i34 = 32;
            } else {
                i34 = 16;
            }
            i31 |= i34;
        }
        i35 = i31;
        i36 = i13 & 4096;
        if (i36 != 0) {
            if ((i12 & 896) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i37 = 256;
                } else {
                    i37 = 128;
                }
                i35 |= i37;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i35 |= i16;
            }
            i38 = i13 & 16384;
            if (i38 != 0) {
                i35 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i35 |= composerS.k(qVar) ? 16384 : 8192;
            }
            i39 = i14;
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD12 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z111110 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB12 = keyboardOptionsA.b(z14);
                boolean z111111 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions14 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z111112 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i4119 = i41 << 12;
                int i41110 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD12, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z111111, i44, imeOptionsB12, keyboardActionsA, z12, z111110, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i4119 & 57344) | (i4119 & 458752) | (3670016 & i4119) | (i4119 & 29360128), (i41110 & 7168) | ((i39 >> 18) & 112) | (i41110 & 896) | (i41 & 57344), 0);
                z15 = z111110;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions14;
                z16 = z111112;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                } else {
                    if (i46 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z12 = true;
                    } else {
                        z12 = z6;
                    }
                    if (i18 != 0) {
                        z13 = false;
                    } else {
                        z13 = z10;
                    }
                    if (i20 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle;
                    }
                    if (i22 != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    if (i24 != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i26 != 0) {
                        z14 = false;
                    } else {
                        z14 = z11;
                    }
                    if (i28 != 0) {
                        i40 = Integer.MAX_VALUE;
                    } else {
                        i40 = i10;
                    }
                    if (i30 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if (i33 != 0) {
                        lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    if (i36 != 0) {
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
                    if ((i13 & 8192) != 0) {
                        solidColor = new SolidColor(Color.Companion.a(), null);
                        i35 &= -7169;
                    } else {
                        solidColor = brush;
                    }
                    if (i38 != 0) {
                        qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                    } else {
                        qVarA = qVar;
                    }
                    i41 = i35;
                    lVar3 = lVar2;
                    visualTransformation2 = visualTransformationC;
                    i42 = i40;
                }
                composerS.A();
                i43 = i42;
                composerS.G(-492369756);
                objH2 = composerS.H();
                companion = Composer.Companion;
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                TextFieldValue textFieldValueD13 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
                composerS.G(1157296644);
                zK = composerS.k(value);
                boolean z111113 = z13;
                objH3 = composerS.H();
                if (zK) {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                } else {
                    objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                    composerS.z(objH3);
                }
                composerS.Q();
                mutableState2 = (MutableState) objH3;
                ImeOptions imeOptionsB13 = keyboardOptionsA.b(z14);
                boolean z111114 = !z14;
                if (z14) {
                    i44 = 1;
                } else {
                    i44 = i43;
                }
                composerS.G(1618982084);
                KeyboardOptions keyboardOptions15 = keyboardOptionsA;
                zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
                boolean z111115 = z14;
                objH4 = composerS.H();
                if (zK2) {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                } else {
                    objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                    composerS.z(objH4);
                }
                composerS.Q();
                int i41111 = i41 << 12;
                int i41112 = i39 >> 3;
                CoreTextFieldKt.a(textFieldValueD13, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z111114, i44, imeOptionsB13, keyboardActionsA, z12, z111113, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i41111 & 57344) | (i41111 & 458752) | (3670016 & i41111) | (i41111 & 29360128), (i41112 & 7168) | ((i39 >> 18) & 112) | (i41112 & 896) | (i41 & 57344), 0);
                z15 = z111113;
                textStyle2 = textStyleA;
                visualTransformation3 = visualTransformation2;
                lVar4 = lVar3;
                brush2 = solidColor;
                keyboardOptions2 = keyboardOptions15;
                z16 = z111115;
                modifier3 = modifier2;
                mutableInteractionSource3 = mutableInteractionSource2;
                i45 = i43;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
        }
        i35 |= 384;
        if ((i12 & 7168) != 0) {
            if ((i13 & 8192) == 0) {
                i16 = 2048;
            }
            i35 |= i16;
        }
        i38 = i13 & 16384;
        if (i38 != 0) {
            i35 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            i35 |= composerS.k(qVar) ? 16384 : 8192;
        }
        i39 = i14;
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i46 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i40 = Integer.MAX_VALUE;
                } else {
                    i40 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                i41 = i35;
                lVar3 = lVar2;
                visualTransformation2 = visualTransformationC;
                i42 = i40;
            } else {
                if (i46 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i40 = Integer.MAX_VALUE;
                } else {
                    i40 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                i41 = i35;
                lVar3 = lVar2;
                visualTransformation2 = visualTransformationC;
                i42 = i40;
            }
            composerS.A();
            i43 = i42;
            composerS.G(-492369756);
            objH2 = composerS.H();
            companion = Composer.Companion;
            if (objH2 == companion.a()) {
                objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                composerS.z(objH2);
            }
            composerS.Q();
            mutableState = (MutableState) objH2;
            TextFieldValue textFieldValueD14 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
            composerS.G(1157296644);
            zK = composerS.k(value);
            boolean z111116 = z13;
            objH3 = composerS.H();
            if (zK) {
                objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                composerS.z(objH3);
            } else {
                objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                composerS.z(objH3);
            }
            composerS.Q();
            mutableState2 = (MutableState) objH3;
            ImeOptions imeOptionsB14 = keyboardOptionsA.b(z14);
            boolean z111117 = !z14;
            if (z14) {
                i44 = 1;
            } else {
                i44 = i43;
            }
            composerS.G(1618982084);
            KeyboardOptions keyboardOptions16 = keyboardOptionsA;
            zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
            boolean z111118 = z14;
            objH4 = composerS.H();
            if (zK2) {
                objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                composerS.z(objH4);
            } else {
                objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                composerS.z(objH4);
            }
            composerS.Q();
            int i41113 = i41 << 12;
            int i41114 = i39 >> 3;
            CoreTextFieldKt.a(textFieldValueD14, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z111117, i44, imeOptionsB14, keyboardActionsA, z12, z111116, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i41113 & 57344) | (i41113 & 458752) | (3670016 & i41113) | (i41113 & 29360128), (i41114 & 7168) | ((i39 >> 18) & 112) | (i41114 & 896) | (i41 & 57344), 0);
            z15 = z111116;
            textStyle2 = textStyleA;
            visualTransformation3 = visualTransformation2;
            lVar4 = lVar3;
            brush2 = solidColor;
            keyboardOptions2 = keyboardOptions16;
            z16 = z111118;
            modifier3 = modifier2;
            mutableInteractionSource3 = mutableInteractionSource2;
            i45 = i43;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i46 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i40 = Integer.MAX_VALUE;
                } else {
                    i40 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                i41 = i35;
                lVar3 = lVar2;
                visualTransformation2 = visualTransformationC;
                i42 = i40;
            } else {
                if (i46 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z12 = true;
                } else {
                    z12 = z6;
                }
                if (i18 != 0) {
                    z13 = false;
                } else {
                    z13 = z10;
                }
                if (i20 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle;
                }
                if (i22 != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                if (i24 != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i26 != 0) {
                    z14 = false;
                } else {
                    z14 = z11;
                }
                if (i28 != 0) {
                    i40 = Integer.MAX_VALUE;
                } else {
                    i40 = i10;
                }
                if (i30 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if (i33 != 0) {
                    lVar2 = BasicTextFieldKt$BasicTextField$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                if (i36 != 0) {
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
                if ((i13 & 8192) != 0) {
                    solidColor = new SolidColor(Color.Companion.a(), null);
                    i35 &= -7169;
                } else {
                    solidColor = brush;
                }
                if (i38 != 0) {
                    qVarA = ComposableSingletons$BasicTextFieldKt.INSTANCE.a();
                } else {
                    qVarA = qVar;
                }
                i41 = i35;
                lVar3 = lVar2;
                visualTransformation2 = visualTransformationC;
                i42 = i40;
            }
            composerS.A();
            i43 = i42;
            composerS.G(-492369756);
            objH2 = composerS.H();
            companion = Composer.Companion;
            if (objH2 == companion.a()) {
                objH2 = SnapshotStateKt__SnapshotStateKt.e(new TextFieldValue(value, 0L, (TextRange) null, 6, (k) null), null, 2, null);
                composerS.z(objH2);
            }
            composerS.Q();
            mutableState = (MutableState) objH2;
            TextFieldValue textFieldValueD15 = TextFieldValue.d(c(mutableState), value, 0L, null, 6, null);
            composerS.G(1157296644);
            zK = composerS.k(value);
            boolean z111119 = z13;
            objH3 = composerS.H();
            if (zK) {
                objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                composerS.z(objH3);
            } else {
                objH3 = SnapshotStateKt__SnapshotStateKt.e(value, null, 2, null);
                composerS.z(objH3);
            }
            composerS.Q();
            mutableState2 = (MutableState) objH3;
            ImeOptions imeOptionsB15 = keyboardOptionsA.b(z14);
            boolean z1111110 = !z14;
            if (z14) {
                i44 = 1;
            } else {
                i44 = i43;
            }
            composerS.G(1618982084);
            KeyboardOptions keyboardOptions17 = keyboardOptionsA;
            zK2 = composerS.k(mutableState) | composerS.k(mutableState2) | composerS.k(onValueChange);
            boolean z1111111 = z14;
            objH4 = composerS.H();
            if (zK2) {
                objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                composerS.z(objH4);
            } else {
                objH4 = new BasicTextFieldKt$BasicTextField$3$1(onValueChange, mutableState, mutableState2);
                composerS.z(objH4);
            }
            composerS.Q();
            int i41115 = i41 << 12;
            int i41116 = i39 >> 3;
            CoreTextFieldKt.a(textFieldValueD15, (l) objH4, modifier2, textStyleA, visualTransformation2, lVar3, mutableInteractionSource2, solidColor, z1111110, i44, imeOptionsB15, keyboardActionsA, z12, z111119, qVarA, composerS, (i39 & 896) | ((i39 >> 6) & 7168) | (i41115 & 57344) | (i41115 & 458752) | (3670016 & i41115) | (i41115 & 29360128), (i41116 & 7168) | ((i39 >> 18) & 112) | (i41116 & 896) | (i41 & 57344), 0);
            z15 = z111119;
            textStyle2 = textStyleA;
            visualTransformation3 = visualTransformation2;
            lVar4 = lVar3;
            brush2 = solidColor;
            keyboardOptions2 = keyboardOptions17;
            z16 = z1111111;
            modifier3 = modifier2;
            mutableInteractionSource3 = mutableInteractionSource2;
            i45 = i43;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new BasicTextFieldKt$BasicTextField$4(value, onValueChange, modifier3, z12, z15, textStyle2, keyboardOptions2, keyboardActionsA, z16, i45, visualTransformation3, lVar4, mutableInteractionSource3, brush2, qVarA, i11, i12, i13));
    }

    private static final TextFieldValue c(MutableState<TextFieldValue> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(MutableState<TextFieldValue> mutableState, TextFieldValue textFieldValue) {
        mutableState.setValue(textFieldValue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String e(MutableState<String> mutableState) {
        return mutableState.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(MutableState<String> mutableState, String str) {
        mutableState.setValue(str);
    }
}
