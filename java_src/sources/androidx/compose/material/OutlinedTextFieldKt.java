package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.foundation.text.KeyboardActions;
import androidx.compose.foundation.text.KeyboardOptions;
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
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.VisualTransformation;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.l;
import e8.p;
import e8.q;
import g8.c;
import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class OutlinedTextFieldKt {

    @NotNull
    public static final String BorderId = "border";
    private static final float OutlinedTextFieldInnerPadding = Dp.f(4);
    private static final float OutlinedTextFieldTopPadding = Dp.f(8);

    /* JADX WARN: Code duplicated, block: B:100:0x013c  */
    /* JADX WARN: Code duplicated, block: B:102:0x0142  */
    /* JADX WARN: Code duplicated, block: B:103:0x0145  */
    /* JADX WARN: Code duplicated, block: B:107:0x014d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0152  */
    /* JADX WARN: Code duplicated, block: B:110:0x0158  */
    /* JADX WARN: Code duplicated, block: B:112:0x015e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0161  */
    /* JADX WARN: Code duplicated, block: B:115:0x0166  */
    /* JADX WARN: Code duplicated, block: B:118:0x016c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0171  */
    /* JADX WARN: Code duplicated, block: B:121:0x0177  */
    /* JADX WARN: Code duplicated, block: B:123:0x017d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180  */
    /* JADX WARN: Code duplicated, block: B:128:0x0188  */
    /* JADX WARN: Code duplicated, block: B:130:0x018c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0197 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:136:0x019e  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:160:0x01de  */
    /* JADX WARN: Code duplicated, block: B:161:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:163:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:166:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:170:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:171:0x0205  */
    /* JADX WARN: Code duplicated, block: B:173:0x020b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0211  */
    /* JADX WARN: Code duplicated, block: B:176:0x0214  */
    /* JADX WARN: Code duplicated, block: B:180:0x021e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0224  */
    /* JADX WARN: Code duplicated, block: B:185:0x022d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0232  */
    /* JADX WARN: Code duplicated, block: B:190:0x023a  */
    /* JADX WARN: Code duplicated, block: B:192:0x0242  */
    /* JADX WARN: Code duplicated, block: B:195:0x024b  */
    /* JADX WARN: Code duplicated, block: B:197:0x0250  */
    /* JADX WARN: Code duplicated, block: B:200:0x025c  */
    /* JADX WARN: Code duplicated, block: B:206:0x0295  */
    /* JADX WARN: Code duplicated, block: B:208:0x029c  */
    /* JADX WARN: Code duplicated, block: B:227:0x02f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:228:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:229:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:231:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:232:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:234:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:235:0x0301  */
    /* JADX WARN: Code duplicated, block: B:238:0x0307  */
    /* JADX WARN: Code duplicated, block: B:239:0x0317  */
    /* JADX WARN: Code duplicated, block: B:241:0x031b  */
    /* JADX WARN: Code duplicated, block: B:242:0x031e  */
    /* JADX WARN: Code duplicated, block: B:244:0x0322  */
    /* JADX WARN: Code duplicated, block: B:245:0x0324  */
    /* JADX WARN: Code duplicated, block: B:247:0x0328  */
    /* JADX WARN: Code duplicated, block: B:248:0x032a  */
    /* JADX WARN: Code duplicated, block: B:250:0x032e  */
    /* JADX WARN: Code duplicated, block: B:251:0x0330  */
    /* JADX WARN: Code duplicated, block: B:253:0x0334  */
    /* JADX WARN: Code duplicated, block: B:254:0x0336  */
    /* JADX WARN: Code duplicated, block: B:256:0x033a  */
    /* JADX WARN: Code duplicated, block: B:257:0x0341  */
    /* JADX WARN: Code duplicated, block: B:260:0x0347  */
    /* JADX WARN: Code duplicated, block: B:261:0x0350  */
    /* JADX WARN: Code duplicated, block: B:264:0x0358  */
    /* JADX WARN: Code duplicated, block: B:265:0x0382  */
    /* JADX WARN: Code duplicated, block: B:267:0x0386  */
    /* JADX WARN: Code duplicated, block: B:268:0x0388  */
    /* JADX WARN: Code duplicated, block: B:270:0x038c  */
    /* JADX WARN: Code duplicated, block: B:271:0x0392  */
    /* JADX WARN: Code duplicated, block: B:274:0x0398  */
    /* JADX WARN: Code duplicated, block: B:276:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:278:0x03b9  */
    /* JADX WARN: Code duplicated, block: B:281:0x03c1  */
    /* JADX WARN: Code duplicated, block: B:282:0x03d0  */
    /* JADX WARN: Code duplicated, block: B:285:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:287:0x0436  */
    /* JADX WARN: Code duplicated, block: B:291:0x046b  */
    /* JADX WARN: Code duplicated, block: B:294:0x04ba  */
    /* JADX WARN: Code duplicated, block: B:295:0x04d5  */
    /* JADX WARN: Code duplicated, block: B:300:0x05c3  */
    /* JADX WARN: Code duplicated, block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0077  */
    /* JADX WARN: Code duplicated, block: B:42:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:47:0x0091  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096  */
    /* JADX WARN: Code duplicated, block: B:50:0x009c  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x0102  */
    /* JADX WARN: Code duplicated, block: B:83:0x0105  */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0114  */
    /* JADX WARN: Code duplicated, block: B:90:0x011c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0122  */
    /* JADX WARN: Code duplicated, block: B:93:0x0125  */
    /* JADX WARN: Code duplicated, block: B:97:0x012d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0134  */
    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull TextFieldValue value, @NotNull l<? super TextFieldValue, l0> onValueChange, @Nullable Modifier modifier, boolean z6, boolean z10, @Nullable TextStyle textStyle, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, boolean z11, @Nullable VisualTransformation visualTransformation, @Nullable KeyboardOptions keyboardOptions, @Nullable KeyboardActions keyboardActions, boolean z12, int i10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, @Nullable TextFieldColors textFieldColors, @Nullable Composer composer, int i11, int i12, int i13) {
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
        boolean z13;
        boolean z14;
        TextStyle textStyle2;
        p<? super Composer, ? super Integer, l0> pVar5;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        boolean z15;
        VisualTransformation visualTransformationC;
        KeyboardOptions keyboardOptionsA;
        KeyboardActions keyboardActions2;
        boolean z16;
        int i39;
        KeyboardActions keyboardActions3;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeF;
        int i40;
        TextFieldColors textFieldColorsJ;
        boolean z17;
        Object objH;
        long jG;
        Modifier modifierM;
        Composer composer2;
        Modifier modifier3;
        boolean z18;
        p<? super Composer, ? super Integer, l0> pVar9;
        p<? super Composer, ? super Integer, l0> pVar10;
        p<? super Composer, ? super Integer, l0> pVar11;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions4;
        boolean z19;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape2;
        TextFieldColors textFieldColors2;
        boolean z20;
        TextStyle textStyle3;
        boolean z21;
        p<? super Composer, ? super Integer, l0> pVar12;
        int i41;
        ScopeUpdateScope scopeUpdateScopeU;
        int i42;
        int i43;
        int i44;
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-288998816);
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
        int i45 = i13 & 4;
        if (i45 == 0) {
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
                if ((i11 & 458752) != 0) {
                    if ((i13 & 32) == 0 || !composerS.k(textStyle)) {
                        i44 = 65536;
                    } else {
                        i44 = 131072;
                    }
                    i14 |= i44;
                }
                i20 = i13 & 64;
                if (i20 != 0) {
                    i14 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(pVar)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 128;
                if (i22 != 0) {
                    i14 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(pVar2)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i14 |= i23;
                }
                i24 = i13 & 256;
                if (i24 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.k(pVar3)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i14 |= i25;
                }
                i26 = i13 & 512;
                if (i26 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.k(pVar4)) {
                        i27 = 536870912;
                    } else {
                        i27 = 268435456;
                    }
                    i14 |= i27;
                }
                i28 = i13 & 1024;
                if (i28 != 0) {
                    i29 = i12 | 6;
                } else if ((i12 & 14) == 0) {
                    if (composerS.m(z11)) {
                        i30 = 4;
                    } else {
                        i30 = 2;
                    }
                    i29 = i12 | i30;
                } else {
                    i29 = i12;
                }
                i31 = i13 & 2048;
                if (i31 != 0) {
                    i29 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i32 = 32;
                    } else {
                        i32 = 16;
                    }
                    i29 |= i32;
                }
                if ((i12 & 896) != 0) {
                    i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0 && composerS.k(keyboardActions)) {
                        i16 = 2048;
                    }
                    i29 |= i16;
                }
                i33 = i29;
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i33 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i33 |= composerS.m(z12) ? 16384 : 8192;
                }
                i35 = i13 & 32768;
                if (i35 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.p(i10)) {
                        i36 = 131072;
                    } else {
                        i36 = 65536;
                    }
                    i33 |= i36;
                }
                i37 = i13 & 65536;
                if (i37 != 0) {
                    i33 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i38 = 1048576;
                    } else {
                        i38 = 524288;
                    }
                    i33 |= i38;
                }
                if ((i12 & 29360128) != 0) {
                    if ((i13 & 131072) == 0 || !composerS.k(shape)) {
                        i43 = 4194304;
                    } else {
                        i43 = 8388608;
                    }
                    i33 |= i43;
                }
                if ((i12 & 234881024) != 0) {
                    if ((i13 & 262144) == 0 || !composerS.k(textFieldColors)) {
                        i42 = 33554432;
                    } else {
                        i42 = 67108864;
                    }
                    i33 |= i42;
                }
                if ((i14 & 1533916891) != 306783378 && (191739611 & i33) == 38347922 && composerS.b()) {
                    composerS.g();
                    modifier3 = modifier;
                    z21 = z6;
                    z18 = z10;
                    textStyle3 = textStyle;
                    pVar9 = pVar2;
                    pVar10 = pVar3;
                    pVar11 = pVar4;
                    z20 = z11;
                    visualTransformation2 = visualTransformation;
                    keyboardOptions2 = keyboardOptions;
                    keyboardActions4 = keyboardActions;
                    z19 = z12;
                    i41 = i10;
                    mutableInteractionSource3 = mutableInteractionSource;
                    shape2 = shape;
                    textFieldColors2 = textFieldColors;
                    composer2 = composerS;
                    pVar12 = pVar;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0 || composerS.h()) {
                        if (i45 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z13 = true;
                        } else {
                            z13 = z6;
                        }
                        if (i18 != 0) {
                            z14 = false;
                        } else {
                            z14 = z10;
                        }
                        if ((i13 & 32) != 0) {
                            textStyle2 = (TextStyle) composerS.x(TextKt.d());
                            i14 &= -458753;
                        } else {
                            textStyle2 = textStyle;
                        }
                        if (i20 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i22 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar4;
                        }
                        if (i28 != 0) {
                            z15 = false;
                        } else {
                            z15 = z11;
                        }
                        if (i31 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if ((i13 & 4096) != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                            i33 &= -897;
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        int i46 = i14;
                        if ((i13 & 8192) != 0) {
                            keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                            i33 &= -7169;
                        } else {
                            keyboardActions2 = keyboardActions;
                        }
                        if (i34 != 0) {
                            z16 = false;
                        } else {
                            z16 = z12;
                        }
                        if (i35 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        keyboardActions3 = keyboardActions2;
                        if (i37 != 0) {
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
                        if ((i13 & 131072) != 0) {
                            shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                            i33 = (-29360129) & i33;
                        } else {
                            shapeF = shape;
                        }
                        if ((262144 & i13) != 0) {
                            textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                            i40 = i33 & (-234881025);
                        } else {
                            i40 = i33;
                            textFieldColorsJ = textFieldColors;
                        }
                        i14 = i46;
                        z17 = z15;
                    } else {
                        composerS.g();
                        if ((i13 & 32) != 0) {
                            i14 &= -458753;
                        }
                        if ((i13 & 4096) != 0) {
                            i33 &= -897;
                        }
                        if ((i13 & 8192) != 0) {
                            i33 &= -7169;
                        }
                        if ((i13 & 131072) != 0) {
                            i33 &= -29360129;
                        }
                        if ((262144 & i13) != 0) {
                            i33 &= -234881025;
                        }
                        modifier2 = modifier;
                        z13 = z6;
                        z14 = z10;
                        textStyle2 = textStyle;
                        pVar5 = pVar;
                        pVar6 = pVar2;
                        pVar7 = pVar3;
                        pVar8 = pVar4;
                        z17 = z11;
                        visualTransformationC = visualTransformation;
                        keyboardOptionsA = keyboardOptions;
                        keyboardActions3 = keyboardActions;
                        z16 = z12;
                        i39 = i10;
                        mutableInteractionSource2 = mutableInteractionSource;
                        shapeF = shape;
                        textFieldColorsJ = textFieldColors;
                        i40 = i33;
                    }
                    composerS.A();
                    composerS.G(1961402586);
                    jG = textStyle2.g();
                    if (jG == Color.Companion.f()) {
                        jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                    }
                    long j6 = jG;
                    composerS.Q();
                    TextStyle textStyleC = textStyle2.C(new TextStyle(j6, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                    if (pVar5 != null) {
                        modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                    } else {
                        modifierM = modifier2;
                    }
                    int i47 = (i40 >> 21) & 112;
                    Modifier modifierA = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i47).getValue().v(), shapeF);
                    TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
                    int i48 = i40 << 12;
                    TextFieldColors textFieldColors3 = textFieldColorsJ;
                    composer2 = composerS;
                    boolean z22 = z17;
                    TextStyle textStyle4 = textStyle2;
                    boolean z23 = z13;
                    BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA, textFieldDefaults.e(), textFieldDefaults.d()), z13, z14, textStyleC, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i47 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i48 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i48) | (234881024 & i48) | (i48 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                    modifier3 = modifier2;
                    z18 = z14;
                    pVar9 = pVar6;
                    pVar10 = pVar7;
                    pVar11 = pVar8;
                    visualTransformation2 = visualTransformationC;
                    keyboardOptions2 = keyboardOptionsA;
                    keyboardActions4 = keyboardActions3;
                    z19 = z16;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeF;
                    textFieldColors2 = textFieldColors3;
                    z20 = z22;
                    textStyle3 = textStyle4;
                    z21 = z23;
                    pVar12 = pVar5;
                    i41 = i39;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$6(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions4, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
            if ((i11 & 458752) != 0) {
                if ((i13 & 32) == 0) {
                    i44 = 65536;
                } else {
                    i44 = 65536;
                }
                i14 |= i44;
            }
            i20 = i13 & 64;
            if (i20 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i14 |= i21;
            }
            i22 = i13 & 128;
            if (i22 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i14 |= i23;
            }
            i24 = i13 & 256;
            if (i24 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(pVar3)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i14 |= i25;
            }
            i26 = i13 & 512;
            if (i26 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.k(pVar4)) {
                    i27 = 536870912;
                } else {
                    i27 = 268435456;
                }
                i14 |= i27;
            }
            i28 = i13 & 1024;
            if (i28 != 0) {
                i29 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.m(z11)) {
                    i30 = 4;
                } else {
                    i30 = 2;
                }
                i29 = i12 | i30;
            } else {
                i29 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i29 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i29 |= i32;
            }
            if ((i12 & 896) != 0) {
                i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i29 |= i16;
            }
            i33 = i29;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i33 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i33 |= composerS.m(z12) ? 16384 : 8192;
            }
            i35 = i13 & 32768;
            if (i35 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.p(i10)) {
                    i36 = 131072;
                } else {
                    i36 = 65536;
                }
                i33 |= i36;
            }
            i37 = i13 & 65536;
            if (i37 != 0) {
                i33 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i38 = 1048576;
                } else {
                    i38 = 524288;
                }
                i33 |= i38;
            }
            if ((i12 & 29360128) != 0) {
                if ((i13 & 131072) == 0) {
                    i43 = 4194304;
                } else {
                    i43 = 4194304;
                }
                i33 |= i43;
            }
            if ((i12 & 234881024) != 0) {
                if ((i13 & 262144) == 0) {
                    i42 = 33554432;
                } else {
                    i42 = 33554432;
                }
                i33 |= i42;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i49 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i49;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i410 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i410;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961402586);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j10 = jG;
                composerS.Q();
                TextStyle textStyleC2 = textStyle2.C(new TextStyle(j10, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i411 = (i40 >> 21) & 112;
                Modifier modifierA2 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i411).getValue().v(), shapeF);
                TextFieldDefaults textFieldDefaults2 = TextFieldDefaults.INSTANCE;
                int i412 = i40 << 12;
                TextFieldColors textFieldColors4 = textFieldColorsJ;
                composer2 = composerS;
                boolean z24 = z17;
                TextStyle textStyle5 = textStyle2;
                boolean z25 = z13;
                BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA2, textFieldDefaults2.e(), textFieldDefaults2.d()), z13, z14, textStyleC2, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i411 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i412 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i412) | (234881024 & i412) | (i412 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions4 = keyboardActions3;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeF;
                textFieldColors2 = textFieldColors4;
                z20 = z24;
                textStyle3 = textStyle5;
                z21 = z25;
                pVar12 = pVar5;
                i41 = i39;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i413 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i413;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i414 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i414;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961402586);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j11 = jG;
                composerS.Q();
                TextStyle textStyleC3 = textStyle2.C(new TextStyle(j11, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i415 = (i40 >> 21) & 112;
                Modifier modifierA3 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i415).getValue().v(), shapeF);
                TextFieldDefaults textFieldDefaults3 = TextFieldDefaults.INSTANCE;
                int i416 = i40 << 12;
                TextFieldColors textFieldColors5 = textFieldColorsJ;
                composer2 = composerS;
                boolean z26 = z17;
                TextStyle textStyle6 = textStyle2;
                boolean z27 = z13;
                BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA3, textFieldDefaults3.e(), textFieldDefaults3.d()), z13, z14, textStyleC3, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i415 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i416 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i416) | (234881024 & i416) | (i416 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions4 = keyboardActions3;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeF;
                textFieldColors2 = textFieldColors5;
                z20 = z26;
                textStyle3 = textStyle6;
                z21 = z27;
                pVar12 = pVar5;
                i41 = i39;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$6(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions4, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
            if ((i11 & 458752) != 0) {
                if ((i13 & 32) == 0) {
                    i44 = 65536;
                } else {
                    i44 = 65536;
                }
                i14 |= i44;
            }
            i20 = i13 & 64;
            if (i20 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i14 |= i21;
            }
            i22 = i13 & 128;
            if (i22 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i14 |= i23;
            }
            i24 = i13 & 256;
            if (i24 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(pVar3)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i14 |= i25;
            }
            i26 = i13 & 512;
            if (i26 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.k(pVar4)) {
                    i27 = 536870912;
                } else {
                    i27 = 268435456;
                }
                i14 |= i27;
            }
            i28 = i13 & 1024;
            if (i28 != 0) {
                i29 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.m(z11)) {
                    i30 = 4;
                } else {
                    i30 = 2;
                }
                i29 = i12 | i30;
            } else {
                i29 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i29 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i29 |= i32;
            }
            if ((i12 & 896) != 0) {
                i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i29 |= i16;
            }
            i33 = i29;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i33 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i33 |= composerS.m(z12) ? 16384 : 8192;
            }
            i35 = i13 & 32768;
            if (i35 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.p(i10)) {
                    i36 = 131072;
                } else {
                    i36 = 65536;
                }
                i33 |= i36;
            }
            i37 = i13 & 65536;
            if (i37 != 0) {
                i33 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i38 = 1048576;
                } else {
                    i38 = 524288;
                }
                i33 |= i38;
            }
            if ((i12 & 29360128) != 0) {
                if ((i13 & 131072) == 0) {
                    i43 = 4194304;
                } else {
                    i43 = 4194304;
                }
                i33 |= i43;
            }
            if ((i12 & 234881024) != 0) {
                if ((i13 & 262144) == 0) {
                    i42 = 33554432;
                } else {
                    i42 = 33554432;
                }
                i33 |= i42;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i417 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i417;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i418 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i418;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961402586);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j12 = jG;
                composerS.Q();
                TextStyle textStyleC4 = textStyle2.C(new TextStyle(j12, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i419 = (i40 >> 21) & 112;
                Modifier modifierA4 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i419).getValue().v(), shapeF);
                TextFieldDefaults textFieldDefaults4 = TextFieldDefaults.INSTANCE;
                int i4110 = i40 << 12;
                TextFieldColors textFieldColors6 = textFieldColorsJ;
                composer2 = composerS;
                boolean z28 = z17;
                TextStyle textStyle7 = textStyle2;
                boolean z29 = z13;
                BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA4, textFieldDefaults4.e(), textFieldDefaults4.d()), z13, z14, textStyleC4, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i419 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4110 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4110) | (234881024 & i4110) | (i4110 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions4 = keyboardActions3;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeF;
                textFieldColors2 = textFieldColors6;
                z20 = z28;
                textStyle3 = textStyle7;
                z21 = z29;
                pVar12 = pVar5;
                i41 = i39;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i4111 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i4111;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i4112 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                        i33 &= -7169;
                    } else {
                        keyboardActions2 = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions3 = keyboardActions2;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                        i33 = (-29360129) & i33;
                    } else {
                        shapeF = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i4112;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961402586);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j13 = jG;
                composerS.Q();
                TextStyle textStyleC5 = textStyle2.C(new TextStyle(j13, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i4113 = (i40 >> 21) & 112;
                Modifier modifierA5 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i4113).getValue().v(), shapeF);
                TextFieldDefaults textFieldDefaults5 = TextFieldDefaults.INSTANCE;
                int i4114 = i40 << 12;
                TextFieldColors textFieldColors7 = textFieldColorsJ;
                composer2 = composerS;
                boolean z210 = z17;
                TextStyle textStyle8 = textStyle2;
                boolean z211 = z13;
                BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA5, textFieldDefaults5.e(), textFieldDefaults5.d()), z13, z14, textStyleC5, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i4113 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4114 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4114) | (234881024 & i4114) | (i4114 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions4 = keyboardActions3;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeF;
                textFieldColors2 = textFieldColors7;
                z20 = z210;
                textStyle3 = textStyle8;
                z21 = z211;
                pVar12 = pVar5;
                i41 = i39;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$6(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions4, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
        if ((i11 & 458752) != 0) {
            if ((i13 & 32) == 0) {
                i44 = 65536;
            } else {
                i44 = 65536;
            }
            i14 |= i44;
        }
        i20 = i13 & 64;
        if (i20 != 0) {
            i14 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(pVar)) {
                i21 = 1048576;
            } else {
                i21 = 524288;
            }
            i14 |= i21;
        }
        i22 = i13 & 128;
        if (i22 != 0) {
            i14 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.k(pVar2)) {
                i23 = 8388608;
            } else {
                i23 = 4194304;
            }
            i14 |= i23;
        }
        i24 = i13 & 256;
        if (i24 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.k(pVar3)) {
                i25 = 67108864;
            } else {
                i25 = 33554432;
            }
            i14 |= i25;
        }
        i26 = i13 & 512;
        if (i26 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.k(pVar4)) {
                i27 = 536870912;
            } else {
                i27 = 268435456;
            }
            i14 |= i27;
        }
        i28 = i13 & 1024;
        if (i28 != 0) {
            i29 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            if (composerS.m(z11)) {
                i30 = 4;
            } else {
                i30 = 2;
            }
            i29 = i12 | i30;
        } else {
            i29 = i12;
        }
        i31 = i13 & 2048;
        if (i31 != 0) {
            i29 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.k(visualTransformation)) {
                i32 = 32;
            } else {
                i32 = 16;
            }
            i29 |= i32;
        }
        if ((i12 & 896) != 0) {
            i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
        }
        if ((i12 & 7168) != 0) {
            if ((i13 & 8192) == 0) {
                i16 = 2048;
            }
            i29 |= i16;
        }
        i33 = i29;
        i34 = i13 & 16384;
        if (i34 != 0) {
            i33 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            i33 |= composerS.m(z12) ? 16384 : 8192;
        }
        i35 = i13 & 32768;
        if (i35 != 0) {
            i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i12 & 458752) == 0) {
            if (composerS.p(i10)) {
                i36 = 131072;
            } else {
                i36 = 65536;
            }
            i33 |= i36;
        }
        i37 = i13 & 65536;
        if (i37 != 0) {
            i33 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i38 = 1048576;
            } else {
                i38 = 524288;
            }
            i33 |= i38;
        }
        if ((i12 & 29360128) != 0) {
            if ((i13 & 131072) == 0) {
                i43 = 4194304;
            } else {
                i43 = 4194304;
            }
            i33 |= i43;
        }
        if ((i12 & 234881024) != 0) {
            if ((i13 & 262144) == 0) {
                i42 = 33554432;
            } else {
                i42 = 33554432;
            }
            i33 |= i42;
        }
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4115 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                    i33 &= -7169;
                } else {
                    keyboardActions2 = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions3 = keyboardActions2;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                    i33 = (-29360129) & i33;
                } else {
                    shapeF = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4115;
                z17 = z15;
            } else {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4116 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                    i33 &= -7169;
                } else {
                    keyboardActions2 = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions3 = keyboardActions2;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                    i33 = (-29360129) & i33;
                } else {
                    shapeF = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4116;
                z17 = z15;
            }
            composerS.A();
            composerS.G(1961402586);
            jG = textStyle2.g();
            if (jG == Color.Companion.f()) {
                jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
            }
            long j14 = jG;
            composerS.Q();
            TextStyle textStyleC6 = textStyle2.C(new TextStyle(j14, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
            if (pVar5 != null) {
                modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
            } else {
                modifierM = modifier2;
            }
            int i4117 = (i40 >> 21) & 112;
            Modifier modifierA6 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i4117).getValue().v(), shapeF);
            TextFieldDefaults textFieldDefaults6 = TextFieldDefaults.INSTANCE;
            int i4118 = i40 << 12;
            TextFieldColors textFieldColors8 = textFieldColorsJ;
            composer2 = composerS;
            boolean z212 = z17;
            TextStyle textStyle9 = textStyle2;
            boolean z213 = z13;
            BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA6, textFieldDefaults6.e(), textFieldDefaults6.d()), z13, z14, textStyleC6, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i4117 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4118 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4118) | (234881024 & i4118) | (i4118 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
            modifier3 = modifier2;
            z18 = z14;
            pVar9 = pVar6;
            pVar10 = pVar7;
            pVar11 = pVar8;
            visualTransformation2 = visualTransformationC;
            keyboardOptions2 = keyboardOptionsA;
            keyboardActions4 = keyboardActions3;
            z19 = z16;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeF;
            textFieldColors2 = textFieldColors8;
            z20 = z212;
            textStyle3 = textStyle9;
            z21 = z213;
            pVar12 = pVar5;
            i41 = i39;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4119 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                    i33 &= -7169;
                } else {
                    keyboardActions2 = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions3 = keyboardActions2;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                    i33 = (-29360129) & i33;
                } else {
                    shapeF = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4119;
                z17 = z15;
            } else {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i41110 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActions2 = new KeyboardActions(null, null, null, null, null, null, 63, null);
                    i33 &= -7169;
                } else {
                    keyboardActions2 = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions3 = keyboardActions2;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeF = TextFieldDefaults.INSTANCE.f(composerS, 6);
                    i33 = (-29360129) & i33;
                } else {
                    shapeF = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i41110;
                z17 = z15;
            }
            composerS.A();
            composerS.G(1961402586);
            jG = textStyle2.g();
            if (jG == Color.Companion.f()) {
                jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
            }
            long j15 = jG;
            composerS.Q();
            TextStyle textStyleC7 = textStyle2.C(new TextStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
            if (pVar5 != null) {
                modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
            } else {
                modifierM = modifier2;
            }
            int i41111 = (i40 >> 21) & 112;
            Modifier modifierA7 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i41111).getValue().v(), shapeF);
            TextFieldDefaults textFieldDefaults7 = TextFieldDefaults.INSTANCE;
            int i41112 = i40 << 12;
            TextFieldColors textFieldColors9 = textFieldColorsJ;
            composer2 = composerS;
            boolean z214 = z17;
            TextStyle textStyle10 = textStyle2;
            boolean z215 = z13;
            BasicTextFieldKt.a(value, onValueChange, SizeKt.g(modifierA7, textFieldDefaults7.e(), textFieldDefaults7.d()), z13, z14, textStyleC7, keyboardOptionsA, keyboardActions3, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i41111 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, -1219079113, true, new OutlinedTextFieldKt$OutlinedTextField$5(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeF)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i41112 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i41112) | (234881024 & i41112) | (i41112 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
            modifier3 = modifier2;
            z18 = z14;
            pVar9 = pVar6;
            pVar10 = pVar7;
            pVar11 = pVar8;
            visualTransformation2 = visualTransformationC;
            keyboardOptions2 = keyboardOptionsA;
            keyboardActions4 = keyboardActions3;
            z19 = z16;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeF;
            textFieldColors2 = textFieldColors9;
            z20 = z214;
            textStyle3 = textStyle10;
            z21 = z215;
            pVar12 = pVar5;
            i41 = i39;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$6(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions4, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x013c  */
    /* JADX WARN: Code duplicated, block: B:102:0x0142  */
    /* JADX WARN: Code duplicated, block: B:103:0x0145  */
    /* JADX WARN: Code duplicated, block: B:107:0x014d  */
    /* JADX WARN: Code duplicated, block: B:108:0x0152  */
    /* JADX WARN: Code duplicated, block: B:110:0x0158  */
    /* JADX WARN: Code duplicated, block: B:112:0x015e  */
    /* JADX WARN: Code duplicated, block: B:113:0x0161  */
    /* JADX WARN: Code duplicated, block: B:115:0x0166  */
    /* JADX WARN: Code duplicated, block: B:118:0x016c  */
    /* JADX WARN: Code duplicated, block: B:119:0x0171  */
    /* JADX WARN: Code duplicated, block: B:121:0x0177  */
    /* JADX WARN: Code duplicated, block: B:123:0x017d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180  */
    /* JADX WARN: Code duplicated, block: B:128:0x0188  */
    /* JADX WARN: Code duplicated, block: B:130:0x018c  */
    /* JADX WARN: Code duplicated, block: B:133:0x0197 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:136:0x019e  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:141:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:147:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:150:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:153:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:156:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:160:0x01de  */
    /* JADX WARN: Code duplicated, block: B:161:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:163:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:165:0x01f3  */
    /* JADX WARN: Code duplicated, block: B:166:0x01f6  */
    /* JADX WARN: Code duplicated, block: B:170:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:171:0x0205  */
    /* JADX WARN: Code duplicated, block: B:173:0x020b  */
    /* JADX WARN: Code duplicated, block: B:175:0x0211  */
    /* JADX WARN: Code duplicated, block: B:176:0x0214  */
    /* JADX WARN: Code duplicated, block: B:180:0x021e  */
    /* JADX WARN: Code duplicated, block: B:182:0x0224  */
    /* JADX WARN: Code duplicated, block: B:185:0x022d  */
    /* JADX WARN: Code duplicated, block: B:187:0x0232  */
    /* JADX WARN: Code duplicated, block: B:190:0x023a  */
    /* JADX WARN: Code duplicated, block: B:192:0x0242  */
    /* JADX WARN: Code duplicated, block: B:195:0x024b  */
    /* JADX WARN: Code duplicated, block: B:197:0x0250  */
    /* JADX WARN: Code duplicated, block: B:200:0x025c  */
    /* JADX WARN: Code duplicated, block: B:206:0x0295  */
    /* JADX WARN: Code duplicated, block: B:208:0x029c  */
    /* JADX WARN: Code duplicated, block: B:227:0x02f0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:228:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:229:0x02f5  */
    /* JADX WARN: Code duplicated, block: B:231:0x02f9  */
    /* JADX WARN: Code duplicated, block: B:232:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:234:0x02ff  */
    /* JADX WARN: Code duplicated, block: B:235:0x0301  */
    /* JADX WARN: Code duplicated, block: B:238:0x0307  */
    /* JADX WARN: Code duplicated, block: B:239:0x0317  */
    /* JADX WARN: Code duplicated, block: B:241:0x031b  */
    /* JADX WARN: Code duplicated, block: B:242:0x031e  */
    /* JADX WARN: Code duplicated, block: B:244:0x0322  */
    /* JADX WARN: Code duplicated, block: B:245:0x0324  */
    /* JADX WARN: Code duplicated, block: B:247:0x0328  */
    /* JADX WARN: Code duplicated, block: B:248:0x032a  */
    /* JADX WARN: Code duplicated, block: B:250:0x032e  */
    /* JADX WARN: Code duplicated, block: B:251:0x0330  */
    /* JADX WARN: Code duplicated, block: B:253:0x0334  */
    /* JADX WARN: Code duplicated, block: B:254:0x0336  */
    /* JADX WARN: Code duplicated, block: B:256:0x033a  */
    /* JADX WARN: Code duplicated, block: B:257:0x0341  */
    /* JADX WARN: Code duplicated, block: B:260:0x0347  */
    /* JADX WARN: Code duplicated, block: B:261:0x0350  */
    /* JADX WARN: Code duplicated, block: B:264:0x0358  */
    /* JADX WARN: Code duplicated, block: B:265:0x0361  */
    /* JADX WARN: Code duplicated, block: B:267:0x0365  */
    /* JADX WARN: Code duplicated, block: B:268:0x0367  */
    /* JADX WARN: Code duplicated, block: B:270:0x036b  */
    /* JADX WARN: Code duplicated, block: B:271:0x0371  */
    /* JADX WARN: Code duplicated, block: B:274:0x0377  */
    /* JADX WARN: Code duplicated, block: B:276:0x038b  */
    /* JADX WARN: Code duplicated, block: B:278:0x0398  */
    /* JADX WARN: Code duplicated, block: B:281:0x03a0  */
    /* JADX WARN: Code duplicated, block: B:282:0x03b3  */
    /* JADX WARN: Code duplicated, block: B:285:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:287:0x0419  */
    /* JADX WARN: Code duplicated, block: B:291:0x044e  */
    /* JADX WARN: Code duplicated, block: B:294:0x049d  */
    /* JADX WARN: Code duplicated, block: B:295:0x04b8  */
    /* JADX WARN: Code duplicated, block: B:300:0x05a6  */
    /* JADX WARN: Code duplicated, block: B:302:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006e  */
    /* JADX WARN: Code duplicated, block: B:38:0x0073  */
    /* JADX WARN: Code duplicated, block: B:40:0x0077  */
    /* JADX WARN: Code duplicated, block: B:42:0x007f  */
    /* JADX WARN: Code duplicated, block: B:43:0x0082  */
    /* JADX WARN: Code duplicated, block: B:47:0x0091  */
    /* JADX WARN: Code duplicated, block: B:48:0x0096  */
    /* JADX WARN: Code duplicated, block: B:50:0x009c  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:53:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:67:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:68:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:70:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00e5  */
    /* JADX WARN: Code duplicated, block: B:77:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:78:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:80:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x0102  */
    /* JADX WARN: Code duplicated, block: B:83:0x0105  */
    /* JADX WARN: Code duplicated, block: B:87:0x010d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0114  */
    /* JADX WARN: Code duplicated, block: B:90:0x011c  */
    /* JADX WARN: Code duplicated, block: B:92:0x0122  */
    /* JADX WARN: Code duplicated, block: B:93:0x0125  */
    /* JADX WARN: Code duplicated, block: B:97:0x012d  */
    /* JADX WARN: Code duplicated, block: B:98:0x0134  */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull String value, @NotNull l<? super String, l0> onValueChange, @Nullable Modifier modifier, boolean z6, boolean z10, @Nullable TextStyle textStyle, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, @Nullable p<? super Composer, ? super Integer, l0> pVar4, boolean z11, @Nullable VisualTransformation visualTransformation, @Nullable KeyboardOptions keyboardOptions, @Nullable KeyboardActions keyboardActions, boolean z12, int i10, @Nullable MutableInteractionSource mutableInteractionSource, @Nullable Shape shape, @Nullable TextFieldColors textFieldColors, @Nullable Composer composer, int i11, int i12, int i13) {
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
        boolean z13;
        boolean z14;
        TextStyle textStyle2;
        p<? super Composer, ? super Integer, l0> pVar5;
        p<? super Composer, ? super Integer, l0> pVar6;
        p<? super Composer, ? super Integer, l0> pVar7;
        p<? super Composer, ? super Integer, l0> pVar8;
        boolean z15;
        VisualTransformation visualTransformationC;
        KeyboardOptions keyboardOptionsA;
        KeyboardActions keyboardActionsA;
        boolean z16;
        int i39;
        KeyboardActions keyboardActions2;
        MutableInteractionSource mutableInteractionSource2;
        Shape shapeC;
        int i40;
        TextFieldColors textFieldColorsJ;
        boolean z17;
        Object objH;
        long jG;
        Modifier modifierM;
        Composer composer2;
        Modifier modifier3;
        boolean z18;
        p<? super Composer, ? super Integer, l0> pVar9;
        p<? super Composer, ? super Integer, l0> pVar10;
        p<? super Composer, ? super Integer, l0> pVar11;
        VisualTransformation visualTransformation2;
        KeyboardOptions keyboardOptions2;
        KeyboardActions keyboardActions3;
        boolean z19;
        MutableInteractionSource mutableInteractionSource3;
        Shape shape2;
        TextFieldColors textFieldColors2;
        boolean z20;
        TextStyle textStyle3;
        boolean z21;
        p<? super Composer, ? super Integer, l0> pVar12;
        int i41;
        ScopeUpdateScope scopeUpdateScopeU;
        int i42;
        int i43;
        int i44;
        t.j(value, "value");
        t.j(onValueChange, "onValueChange");
        Composer composerS = composer.s(-2099955827);
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
        int i45 = i13 & 4;
        if (i45 == 0) {
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
                if ((i11 & 458752) != 0) {
                    if ((i13 & 32) == 0 || !composerS.k(textStyle)) {
                        i44 = 65536;
                    } else {
                        i44 = 131072;
                    }
                    i14 |= i44;
                }
                i20 = i13 & 64;
                if (i20 != 0) {
                    i14 |= 1572864;
                } else if ((i11 & 3670016) == 0) {
                    if (composerS.k(pVar)) {
                        i21 = 1048576;
                    } else {
                        i21 = 524288;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 128;
                if (i22 != 0) {
                    i14 |= 12582912;
                } else if ((i11 & 29360128) == 0) {
                    if (composerS.k(pVar2)) {
                        i23 = 8388608;
                    } else {
                        i23 = 4194304;
                    }
                    i14 |= i23;
                }
                i24 = i13 & 256;
                if (i24 != 0) {
                    i14 |= 100663296;
                } else if ((i11 & 234881024) == 0) {
                    if (composerS.k(pVar3)) {
                        i25 = 67108864;
                    } else {
                        i25 = 33554432;
                    }
                    i14 |= i25;
                }
                i26 = i13 & 512;
                if (i26 != 0) {
                    i14 |= 805306368;
                } else if ((i11 & 1879048192) == 0) {
                    if (composerS.k(pVar4)) {
                        i27 = 536870912;
                    } else {
                        i27 = 268435456;
                    }
                    i14 |= i27;
                }
                i28 = i13 & 1024;
                if (i28 != 0) {
                    i29 = i12 | 6;
                } else if ((i12 & 14) == 0) {
                    if (composerS.m(z11)) {
                        i30 = 4;
                    } else {
                        i30 = 2;
                    }
                    i29 = i12 | i30;
                } else {
                    i29 = i12;
                }
                i31 = i13 & 2048;
                if (i31 != 0) {
                    i29 |= 48;
                } else if ((i12 & 112) == 0) {
                    if (composerS.k(visualTransformation)) {
                        i32 = 32;
                    } else {
                        i32 = 16;
                    }
                    i29 |= i32;
                }
                if ((i12 & 896) != 0) {
                    i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
                }
                if ((i12 & 7168) != 0) {
                    if ((i13 & 8192) == 0 && composerS.k(keyboardActions)) {
                        i16 = 2048;
                    }
                    i29 |= i16;
                }
                i33 = i29;
                i34 = i13 & 16384;
                if (i34 != 0) {
                    i33 |= CpioConstants.C_ISBLK;
                } else if ((i12 & 57344) == 0) {
                    i33 |= composerS.m(z12) ? 16384 : 8192;
                }
                i35 = i13 & 32768;
                if (i35 != 0) {
                    i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                } else if ((i12 & 458752) == 0) {
                    if (composerS.p(i10)) {
                        i36 = 131072;
                    } else {
                        i36 = 65536;
                    }
                    i33 |= i36;
                }
                i37 = i13 & 65536;
                if (i37 != 0) {
                    i33 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(mutableInteractionSource)) {
                        i38 = 1048576;
                    } else {
                        i38 = 524288;
                    }
                    i33 |= i38;
                }
                if ((i12 & 29360128) != 0) {
                    if ((i13 & 131072) == 0 || !composerS.k(shape)) {
                        i43 = 4194304;
                    } else {
                        i43 = 8388608;
                    }
                    i33 |= i43;
                }
                if ((i12 & 234881024) != 0) {
                    if ((i13 & 262144) == 0 || !composerS.k(textFieldColors)) {
                        i42 = 33554432;
                    } else {
                        i42 = 67108864;
                    }
                    i33 |= i42;
                }
                if ((i14 & 1533916891) != 306783378 && (191739611 & i33) == 38347922 && composerS.b()) {
                    composerS.g();
                    modifier3 = modifier;
                    z21 = z6;
                    z18 = z10;
                    textStyle3 = textStyle;
                    pVar9 = pVar2;
                    pVar10 = pVar3;
                    pVar11 = pVar4;
                    z20 = z11;
                    visualTransformation2 = visualTransformation;
                    keyboardOptions2 = keyboardOptions;
                    keyboardActions3 = keyboardActions;
                    z19 = z12;
                    i41 = i10;
                    mutableInteractionSource3 = mutableInteractionSource;
                    shape2 = shape;
                    textFieldColors2 = textFieldColors;
                    composer2 = composerS;
                    pVar12 = pVar;
                } else {
                    composerS.J();
                    if ((i11 & 1) != 0 || composerS.h()) {
                        if (i45 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            z13 = true;
                        } else {
                            z13 = z6;
                        }
                        if (i18 != 0) {
                            z14 = false;
                        } else {
                            z14 = z10;
                        }
                        if ((i13 & 32) != 0) {
                            textStyle2 = (TextStyle) composerS.x(TextKt.d());
                            i14 &= -458753;
                        } else {
                            textStyle2 = textStyle;
                        }
                        if (i20 != 0) {
                            pVar5 = null;
                        } else {
                            pVar5 = pVar;
                        }
                        if (i22 != 0) {
                            pVar6 = null;
                        } else {
                            pVar6 = pVar2;
                        }
                        if (i24 != 0) {
                            pVar7 = null;
                        } else {
                            pVar7 = pVar3;
                        }
                        if (i26 != 0) {
                            pVar8 = null;
                        } else {
                            pVar8 = pVar4;
                        }
                        if (i28 != 0) {
                            z15 = false;
                        } else {
                            z15 = z11;
                        }
                        if (i31 != 0) {
                            visualTransformationC = VisualTransformation.Companion.c();
                        } else {
                            visualTransformationC = visualTransformation;
                        }
                        if ((i13 & 4096) != 0) {
                            keyboardOptionsA = KeyboardOptions.Companion.a();
                            i33 &= -897;
                        } else {
                            keyboardOptionsA = keyboardOptions;
                        }
                        int i46 = i14;
                        if ((i13 & 8192) != 0) {
                            keyboardActionsA = KeyboardActions.Companion.a();
                            i33 &= -7169;
                        } else {
                            keyboardActionsA = keyboardActions;
                        }
                        if (i34 != 0) {
                            z16 = false;
                        } else {
                            z16 = z12;
                        }
                        if (i35 != 0) {
                            i39 = Integer.MAX_VALUE;
                        } else {
                            i39 = i10;
                        }
                        keyboardActions2 = keyboardActionsA;
                        if (i37 != 0) {
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
                        if ((i13 & 131072) != 0) {
                            shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                            i33 = (-29360129) & i33;
                        } else {
                            shapeC = shape;
                        }
                        if ((262144 & i13) != 0) {
                            textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                            i40 = i33 & (-234881025);
                        } else {
                            i40 = i33;
                            textFieldColorsJ = textFieldColors;
                        }
                        i14 = i46;
                        z17 = z15;
                    } else {
                        composerS.g();
                        if ((i13 & 32) != 0) {
                            i14 &= -458753;
                        }
                        if ((i13 & 4096) != 0) {
                            i33 &= -897;
                        }
                        if ((i13 & 8192) != 0) {
                            i33 &= -7169;
                        }
                        if ((i13 & 131072) != 0) {
                            i33 &= -29360129;
                        }
                        if ((262144 & i13) != 0) {
                            i33 &= -234881025;
                        }
                        modifier2 = modifier;
                        z13 = z6;
                        z14 = z10;
                        textStyle2 = textStyle;
                        pVar5 = pVar;
                        pVar6 = pVar2;
                        pVar7 = pVar3;
                        pVar8 = pVar4;
                        z17 = z11;
                        visualTransformationC = visualTransformation;
                        keyboardOptionsA = keyboardOptions;
                        keyboardActions2 = keyboardActions;
                        z16 = z12;
                        i39 = i10;
                        mutableInteractionSource2 = mutableInteractionSource;
                        shapeC = shape;
                        textFieldColorsJ = textFieldColors;
                        i40 = i33;
                    }
                    composerS.A();
                    composerS.G(1961394975);
                    jG = textStyle2.g();
                    if (jG == Color.Companion.f()) {
                        jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                    }
                    long j6 = jG;
                    composerS.Q();
                    TextStyle textStyleC = textStyle2.C(new TextStyle(j6, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                    if (pVar5 != null) {
                        modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                    } else {
                        modifierM = modifier2;
                    }
                    int i47 = (i40 >> 21) & 112;
                    Modifier modifierA = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i47).getValue().v(), shapeC);
                    TextFieldDefaults textFieldDefaults = TextFieldDefaults.INSTANCE;
                    int i48 = i40 << 12;
                    TextFieldColors textFieldColors3 = textFieldColorsJ;
                    composer2 = composerS;
                    boolean z22 = z17;
                    TextStyle textStyle4 = textStyle2;
                    boolean z23 = z13;
                    BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA, textFieldDefaults.e(), textFieldDefaults.d()), z13, z14, textStyleC, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i47 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i48 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i48) | (234881024 & i48) | (i48 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                    modifier3 = modifier2;
                    z18 = z14;
                    pVar9 = pVar6;
                    pVar10 = pVar7;
                    pVar11 = pVar8;
                    visualTransformation2 = visualTransformationC;
                    keyboardOptions2 = keyboardOptionsA;
                    keyboardActions3 = keyboardActions2;
                    z19 = z16;
                    mutableInteractionSource3 = mutableInteractionSource2;
                    shape2 = shapeC;
                    textFieldColors2 = textFieldColors3;
                    z20 = z22;
                    textStyle3 = textStyle4;
                    z21 = z23;
                    pVar12 = pVar5;
                    i41 = i39;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$3(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions3, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
            if ((i11 & 458752) != 0) {
                if ((i13 & 32) == 0) {
                    i44 = 65536;
                } else {
                    i44 = 65536;
                }
                i14 |= i44;
            }
            i20 = i13 & 64;
            if (i20 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i14 |= i21;
            }
            i22 = i13 & 128;
            if (i22 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i14 |= i23;
            }
            i24 = i13 & 256;
            if (i24 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(pVar3)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i14 |= i25;
            }
            i26 = i13 & 512;
            if (i26 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.k(pVar4)) {
                    i27 = 536870912;
                } else {
                    i27 = 268435456;
                }
                i14 |= i27;
            }
            i28 = i13 & 1024;
            if (i28 != 0) {
                i29 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.m(z11)) {
                    i30 = 4;
                } else {
                    i30 = 2;
                }
                i29 = i12 | i30;
            } else {
                i29 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i29 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i29 |= i32;
            }
            if ((i12 & 896) != 0) {
                i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i29 |= i16;
            }
            i33 = i29;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i33 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i33 |= composerS.m(z12) ? 16384 : 8192;
            }
            i35 = i13 & 32768;
            if (i35 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.p(i10)) {
                    i36 = 131072;
                } else {
                    i36 = 65536;
                }
                i33 |= i36;
            }
            i37 = i13 & 65536;
            if (i37 != 0) {
                i33 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i38 = 1048576;
                } else {
                    i38 = 524288;
                }
                i33 |= i38;
            }
            if ((i12 & 29360128) != 0) {
                if ((i13 & 131072) == 0) {
                    i43 = 4194304;
                } else {
                    i43 = 4194304;
                }
                i33 |= i43;
            }
            if ((i12 & 234881024) != 0) {
                if ((i13 & 262144) == 0) {
                    i42 = 33554432;
                } else {
                    i42 = 33554432;
                }
                i33 |= i42;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i49 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i49;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i410 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i410;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961394975);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j10 = jG;
                composerS.Q();
                TextStyle textStyleC2 = textStyle2.C(new TextStyle(j10, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i411 = (i40 >> 21) & 112;
                Modifier modifierA2 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i411).getValue().v(), shapeC);
                TextFieldDefaults textFieldDefaults2 = TextFieldDefaults.INSTANCE;
                int i412 = i40 << 12;
                TextFieldColors textFieldColors4 = textFieldColorsJ;
                composer2 = composerS;
                boolean z24 = z17;
                TextStyle textStyle5 = textStyle2;
                boolean z25 = z13;
                BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA2, textFieldDefaults2.e(), textFieldDefaults2.d()), z13, z14, textStyleC2, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i411 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i412 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i412) | (234881024 & i412) | (i412 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions3 = keyboardActions2;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeC;
                textFieldColors2 = textFieldColors4;
                z20 = z24;
                textStyle3 = textStyle5;
                z21 = z25;
                pVar12 = pVar5;
                i41 = i39;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i413 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i413;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i414 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i414;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961394975);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j11 = jG;
                composerS.Q();
                TextStyle textStyleC3 = textStyle2.C(new TextStyle(j11, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i415 = (i40 >> 21) & 112;
                Modifier modifierA3 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i415).getValue().v(), shapeC);
                TextFieldDefaults textFieldDefaults3 = TextFieldDefaults.INSTANCE;
                int i416 = i40 << 12;
                TextFieldColors textFieldColors5 = textFieldColorsJ;
                composer2 = composerS;
                boolean z26 = z17;
                TextStyle textStyle6 = textStyle2;
                boolean z27 = z13;
                BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA3, textFieldDefaults3.e(), textFieldDefaults3.d()), z13, z14, textStyleC3, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i415 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i416 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i416) | (234881024 & i416) | (i416 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions3 = keyboardActions2;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeC;
                textFieldColors2 = textFieldColors5;
                z20 = z26;
                textStyle3 = textStyle6;
                z21 = z27;
                pVar12 = pVar5;
                i41 = i39;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$3(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions3, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
            if ((i11 & 458752) != 0) {
                if ((i13 & 32) == 0) {
                    i44 = 65536;
                } else {
                    i44 = 65536;
                }
                i14 |= i44;
            }
            i20 = i13 & 64;
            if (i20 != 0) {
                i14 |= 1572864;
            } else if ((i11 & 3670016) == 0) {
                if (composerS.k(pVar)) {
                    i21 = 1048576;
                } else {
                    i21 = 524288;
                }
                i14 |= i21;
            }
            i22 = i13 & 128;
            if (i22 != 0) {
                i14 |= 12582912;
            } else if ((i11 & 29360128) == 0) {
                if (composerS.k(pVar2)) {
                    i23 = 8388608;
                } else {
                    i23 = 4194304;
                }
                i14 |= i23;
            }
            i24 = i13 & 256;
            if (i24 != 0) {
                i14 |= 100663296;
            } else if ((i11 & 234881024) == 0) {
                if (composerS.k(pVar3)) {
                    i25 = 67108864;
                } else {
                    i25 = 33554432;
                }
                i14 |= i25;
            }
            i26 = i13 & 512;
            if (i26 != 0) {
                i14 |= 805306368;
            } else if ((i11 & 1879048192) == 0) {
                if (composerS.k(pVar4)) {
                    i27 = 536870912;
                } else {
                    i27 = 268435456;
                }
                i14 |= i27;
            }
            i28 = i13 & 1024;
            if (i28 != 0) {
                i29 = i12 | 6;
            } else if ((i12 & 14) == 0) {
                if (composerS.m(z11)) {
                    i30 = 4;
                } else {
                    i30 = 2;
                }
                i29 = i12 | i30;
            } else {
                i29 = i12;
            }
            i31 = i13 & 2048;
            if (i31 != 0) {
                i29 |= 48;
            } else if ((i12 & 112) == 0) {
                if (composerS.k(visualTransformation)) {
                    i32 = 32;
                } else {
                    i32 = 16;
                }
                i29 |= i32;
            }
            if ((i12 & 896) != 0) {
                i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
            }
            if ((i12 & 7168) != 0) {
                if ((i13 & 8192) == 0) {
                    i16 = 2048;
                }
                i29 |= i16;
            }
            i33 = i29;
            i34 = i13 & 16384;
            if (i34 != 0) {
                i33 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                i33 |= composerS.m(z12) ? 16384 : 8192;
            }
            i35 = i13 & 32768;
            if (i35 != 0) {
                i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.p(i10)) {
                    i36 = 131072;
                } else {
                    i36 = 65536;
                }
                i33 |= i36;
            }
            i37 = i13 & 65536;
            if (i37 != 0) {
                i33 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(mutableInteractionSource)) {
                    i38 = 1048576;
                } else {
                    i38 = 524288;
                }
                i33 |= i38;
            }
            if ((i12 & 29360128) != 0) {
                if ((i13 & 131072) == 0) {
                    i43 = 4194304;
                } else {
                    i43 = 4194304;
                }
                i33 |= i43;
            }
            if ((i12 & 234881024) != 0) {
                if ((i13 & 262144) == 0) {
                    i42 = 33554432;
                } else {
                    i42 = 33554432;
                }
                i33 |= i42;
            }
            if ((i14 & 1533916891) != 306783378) {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i417 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i417;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i418 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i418;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961394975);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j12 = jG;
                composerS.Q();
                TextStyle textStyleC4 = textStyle2.C(new TextStyle(j12, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i419 = (i40 >> 21) & 112;
                Modifier modifierA4 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i419).getValue().v(), shapeC);
                TextFieldDefaults textFieldDefaults4 = TextFieldDefaults.INSTANCE;
                int i4110 = i40 << 12;
                TextFieldColors textFieldColors6 = textFieldColorsJ;
                composer2 = composerS;
                boolean z28 = z17;
                TextStyle textStyle7 = textStyle2;
                boolean z29 = z13;
                BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA4, textFieldDefaults4.e(), textFieldDefaults4.d()), z13, z14, textStyleC4, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i419 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4110 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4110) | (234881024 & i4110) | (i4110 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions3 = keyboardActions2;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeC;
                textFieldColors2 = textFieldColors6;
                z20 = z28;
                textStyle3 = textStyle7;
                z21 = z29;
                pVar12 = pVar5;
                i41 = i39;
            } else {
                composerS.J();
                if ((i11 & 1) != 0) {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i4111 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i4111;
                    z17 = z15;
                } else {
                    if (i45 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        z13 = true;
                    } else {
                        z13 = z6;
                    }
                    if (i18 != 0) {
                        z14 = false;
                    } else {
                        z14 = z10;
                    }
                    if ((i13 & 32) != 0) {
                        textStyle2 = (TextStyle) composerS.x(TextKt.d());
                        i14 &= -458753;
                    } else {
                        textStyle2 = textStyle;
                    }
                    if (i20 != 0) {
                        pVar5 = null;
                    } else {
                        pVar5 = pVar;
                    }
                    if (i22 != 0) {
                        pVar6 = null;
                    } else {
                        pVar6 = pVar2;
                    }
                    if (i24 != 0) {
                        pVar7 = null;
                    } else {
                        pVar7 = pVar3;
                    }
                    if (i26 != 0) {
                        pVar8 = null;
                    } else {
                        pVar8 = pVar4;
                    }
                    if (i28 != 0) {
                        z15 = false;
                    } else {
                        z15 = z11;
                    }
                    if (i31 != 0) {
                        visualTransformationC = VisualTransformation.Companion.c();
                    } else {
                        visualTransformationC = visualTransformation;
                    }
                    if ((i13 & 4096) != 0) {
                        keyboardOptionsA = KeyboardOptions.Companion.a();
                        i33 &= -897;
                    } else {
                        keyboardOptionsA = keyboardOptions;
                    }
                    int i4112 = i14;
                    if ((i13 & 8192) != 0) {
                        keyboardActionsA = KeyboardActions.Companion.a();
                        i33 &= -7169;
                    } else {
                        keyboardActionsA = keyboardActions;
                    }
                    if (i34 != 0) {
                        z16 = false;
                    } else {
                        z16 = z12;
                    }
                    if (i35 != 0) {
                        i39 = Integer.MAX_VALUE;
                    } else {
                        i39 = i10;
                    }
                    keyboardActions2 = keyboardActionsA;
                    if (i37 != 0) {
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
                    if ((i13 & 131072) != 0) {
                        shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                        i33 = (-29360129) & i33;
                    } else {
                        shapeC = shape;
                    }
                    if ((262144 & i13) != 0) {
                        textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                        i40 = i33 & (-234881025);
                    } else {
                        i40 = i33;
                        textFieldColorsJ = textFieldColors;
                    }
                    i14 = i4112;
                    z17 = z15;
                }
                composerS.A();
                composerS.G(1961394975);
                jG = textStyle2.g();
                if (jG == Color.Companion.f()) {
                    jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
                }
                long j13 = jG;
                composerS.Q();
                TextStyle textStyleC5 = textStyle2.C(new TextStyle(j13, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
                if (pVar5 != null) {
                    modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
                } else {
                    modifierM = modifier2;
                }
                int i4113 = (i40 >> 21) & 112;
                Modifier modifierA5 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i4113).getValue().v(), shapeC);
                TextFieldDefaults textFieldDefaults5 = TextFieldDefaults.INSTANCE;
                int i4114 = i40 << 12;
                TextFieldColors textFieldColors7 = textFieldColorsJ;
                composer2 = composerS;
                boolean z210 = z17;
                TextStyle textStyle8 = textStyle2;
                boolean z211 = z13;
                BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA5, textFieldDefaults5.e(), textFieldDefaults5.d()), z13, z14, textStyleC5, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i4113 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4114 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4114) | (234881024 & i4114) | (i4114 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
                modifier3 = modifier2;
                z18 = z14;
                pVar9 = pVar6;
                pVar10 = pVar7;
                pVar11 = pVar8;
                visualTransformation2 = visualTransformationC;
                keyboardOptions2 = keyboardOptionsA;
                keyboardActions3 = keyboardActions2;
                z19 = z16;
                mutableInteractionSource3 = mutableInteractionSource2;
                shape2 = shapeC;
                textFieldColors2 = textFieldColors7;
                z20 = z210;
                textStyle3 = textStyle8;
                z21 = z211;
                pVar12 = pVar5;
                i41 = i39;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$3(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions3, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
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
        if ((i11 & 458752) != 0) {
            if ((i13 & 32) == 0) {
                i44 = 65536;
            } else {
                i44 = 65536;
            }
            i14 |= i44;
        }
        i20 = i13 & 64;
        if (i20 != 0) {
            i14 |= 1572864;
        } else if ((i11 & 3670016) == 0) {
            if (composerS.k(pVar)) {
                i21 = 1048576;
            } else {
                i21 = 524288;
            }
            i14 |= i21;
        }
        i22 = i13 & 128;
        if (i22 != 0) {
            i14 |= 12582912;
        } else if ((i11 & 29360128) == 0) {
            if (composerS.k(pVar2)) {
                i23 = 8388608;
            } else {
                i23 = 4194304;
            }
            i14 |= i23;
        }
        i24 = i13 & 256;
        if (i24 != 0) {
            i14 |= 100663296;
        } else if ((i11 & 234881024) == 0) {
            if (composerS.k(pVar3)) {
                i25 = 67108864;
            } else {
                i25 = 33554432;
            }
            i14 |= i25;
        }
        i26 = i13 & 512;
        if (i26 != 0) {
            i14 |= 805306368;
        } else if ((i11 & 1879048192) == 0) {
            if (composerS.k(pVar4)) {
                i27 = 536870912;
            } else {
                i27 = 268435456;
            }
            i14 |= i27;
        }
        i28 = i13 & 1024;
        if (i28 != 0) {
            i29 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            if (composerS.m(z11)) {
                i30 = 4;
            } else {
                i30 = 2;
            }
            i29 = i12 | i30;
        } else {
            i29 = i12;
        }
        i31 = i13 & 2048;
        if (i31 != 0) {
            i29 |= 48;
        } else if ((i12 & 112) == 0) {
            if (composerS.k(visualTransformation)) {
                i32 = 32;
            } else {
                i32 = 16;
            }
            i29 |= i32;
        }
        if ((i12 & 896) != 0) {
            i29 |= ((i13 & 4096) == 0 || !composerS.k(keyboardOptions)) ? 128 : 256;
        }
        if ((i12 & 7168) != 0) {
            if ((i13 & 8192) == 0) {
                i16 = 2048;
            }
            i29 |= i16;
        }
        i33 = i29;
        i34 = i13 & 16384;
        if (i34 != 0) {
            i33 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            i33 |= composerS.m(z12) ? 16384 : 8192;
        }
        i35 = i13 & 32768;
        if (i35 != 0) {
            i33 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i12 & 458752) == 0) {
            if (composerS.p(i10)) {
                i36 = 131072;
            } else {
                i36 = 65536;
            }
            i33 |= i36;
        }
        i37 = i13 & 65536;
        if (i37 != 0) {
            i33 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.k(mutableInteractionSource)) {
                i38 = 1048576;
            } else {
                i38 = 524288;
            }
            i33 |= i38;
        }
        if ((i12 & 29360128) != 0) {
            if ((i13 & 131072) == 0) {
                i43 = 4194304;
            } else {
                i43 = 4194304;
            }
            i33 |= i43;
        }
        if ((i12 & 234881024) != 0) {
            if ((i13 & 262144) == 0) {
                i42 = 33554432;
            } else {
                i42 = 33554432;
            }
            i33 |= i42;
        }
        if ((i14 & 1533916891) != 306783378) {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4115 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                    i33 &= -7169;
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions2 = keyboardActionsA;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i33 = (-29360129) & i33;
                } else {
                    shapeC = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4115;
                z17 = z15;
            } else {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4116 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                    i33 &= -7169;
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions2 = keyboardActionsA;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i33 = (-29360129) & i33;
                } else {
                    shapeC = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4116;
                z17 = z15;
            }
            composerS.A();
            composerS.G(1961394975);
            jG = textStyle2.g();
            if (jG == Color.Companion.f()) {
                jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
            }
            long j14 = jG;
            composerS.Q();
            TextStyle textStyleC6 = textStyle2.C(new TextStyle(j14, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
            if (pVar5 != null) {
                modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
            } else {
                modifierM = modifier2;
            }
            int i4117 = (i40 >> 21) & 112;
            Modifier modifierA6 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i4117).getValue().v(), shapeC);
            TextFieldDefaults textFieldDefaults6 = TextFieldDefaults.INSTANCE;
            int i4118 = i40 << 12;
            TextFieldColors textFieldColors8 = textFieldColorsJ;
            composer2 = composerS;
            boolean z212 = z17;
            TextStyle textStyle9 = textStyle2;
            boolean z213 = z13;
            BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA6, textFieldDefaults6.e(), textFieldDefaults6.d()), z13, z14, textStyleC6, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i4117 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i4118 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i4118) | (234881024 & i4118) | (i4118 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
            modifier3 = modifier2;
            z18 = z14;
            pVar9 = pVar6;
            pVar10 = pVar7;
            pVar11 = pVar8;
            visualTransformation2 = visualTransformationC;
            keyboardOptions2 = keyboardOptionsA;
            keyboardActions3 = keyboardActions2;
            z19 = z16;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeC;
            textFieldColors2 = textFieldColors8;
            z20 = z212;
            textStyle3 = textStyle9;
            z21 = z213;
            pVar12 = pVar5;
            i41 = i39;
        } else {
            composerS.J();
            if ((i11 & 1) != 0) {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i4119 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                    i33 &= -7169;
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions2 = keyboardActionsA;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i33 = (-29360129) & i33;
                } else {
                    shapeC = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i4119;
                z17 = z15;
            } else {
                if (i45 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    z13 = true;
                } else {
                    z13 = z6;
                }
                if (i18 != 0) {
                    z14 = false;
                } else {
                    z14 = z10;
                }
                if ((i13 & 32) != 0) {
                    textStyle2 = (TextStyle) composerS.x(TextKt.d());
                    i14 &= -458753;
                } else {
                    textStyle2 = textStyle;
                }
                if (i20 != 0) {
                    pVar5 = null;
                } else {
                    pVar5 = pVar;
                }
                if (i22 != 0) {
                    pVar6 = null;
                } else {
                    pVar6 = pVar2;
                }
                if (i24 != 0) {
                    pVar7 = null;
                } else {
                    pVar7 = pVar3;
                }
                if (i26 != 0) {
                    pVar8 = null;
                } else {
                    pVar8 = pVar4;
                }
                if (i28 != 0) {
                    z15 = false;
                } else {
                    z15 = z11;
                }
                if (i31 != 0) {
                    visualTransformationC = VisualTransformation.Companion.c();
                } else {
                    visualTransformationC = visualTransformation;
                }
                if ((i13 & 4096) != 0) {
                    keyboardOptionsA = KeyboardOptions.Companion.a();
                    i33 &= -897;
                } else {
                    keyboardOptionsA = keyboardOptions;
                }
                int i41110 = i14;
                if ((i13 & 8192) != 0) {
                    keyboardActionsA = KeyboardActions.Companion.a();
                    i33 &= -7169;
                } else {
                    keyboardActionsA = keyboardActions;
                }
                if (i34 != 0) {
                    z16 = false;
                } else {
                    z16 = z12;
                }
                if (i35 != 0) {
                    i39 = Integer.MAX_VALUE;
                } else {
                    i39 = i10;
                }
                keyboardActions2 = keyboardActionsA;
                if (i37 != 0) {
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
                if ((i13 & 131072) != 0) {
                    shapeC = MaterialTheme.INSTANCE.b(composerS, 6).c();
                    i33 = (-29360129) & i33;
                } else {
                    shapeC = shape;
                }
                if ((262144 & i13) != 0) {
                    textFieldColorsJ = TextFieldDefaults.INSTANCE.j(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L, composerS, 0, 0, 48, 2097151);
                    i40 = i33 & (-234881025);
                } else {
                    i40 = i33;
                    textFieldColorsJ = textFieldColors;
                }
                i14 = i41110;
                z17 = z15;
            }
            composerS.A();
            composerS.G(1961394975);
            jG = textStyle2.g();
            if (jG == Color.Companion.f()) {
                jG = textFieldColorsJ.h(z13, composerS, ((i14 >> 9) & 14) | ((i40 >> 21) & 112)).getValue().v();
            }
            long j15 = jG;
            composerS.Q();
            TextStyle textStyleC7 = textStyle2.C(new TextStyle(j15, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, (TextAlign) null, (TextDirection) null, 0L, (TextIndent) null, 262142, (k) null));
            if (pVar5 != null) {
                modifierM = PaddingKt.m(modifier2, 0.0f, OutlinedTextFieldTopPadding, 0.0f, 0.0f, 13, null);
            } else {
                modifierM = modifier2;
            }
            int i41111 = (i40 >> 21) & 112;
            Modifier modifierA7 = BackgroundKt.a(modifierM, textFieldColorsJ.a(z13, composerS, ((i14 >> 9) & 14) | i41111).getValue().v(), shapeC);
            TextFieldDefaults textFieldDefaults7 = TextFieldDefaults.INSTANCE;
            int i41112 = i40 << 12;
            TextFieldColors textFieldColors9 = textFieldColorsJ;
            composer2 = composerS;
            boolean z214 = z17;
            TextStyle textStyle10 = textStyle2;
            boolean z215 = z13;
            BasicTextFieldKt.b(value, onValueChange, SizeKt.g(modifierA7, textFieldDefaults7.e(), textFieldDefaults7.d()), z13, z14, textStyleC7, keyboardOptionsA, keyboardActions2, z16, i39, visualTransformationC, null, mutableInteractionSource2, new SolidColor(textFieldColorsJ.i(z17, composerS, i41111 | (i40 & 14)).getValue().v(), null), ComposableLambdaKt.b(composerS, 986454116, true, new OutlinedTextFieldKt$OutlinedTextField$2(value, z13, z16, visualTransformationC, mutableInteractionSource2, z17, pVar5, pVar6, pVar7, pVar8, textFieldColorsJ, i14, i40, shapeC)), composer2, (i14 & 57344) | (i14 & 14) | (i14 & 112) | (i14 & 7168) | (i41112 & 3670016) | (KeyboardActions.$stable << 21) | (29360128 & i41112) | (234881024 & i41112) | (i41112 & 1879048192), ((i40 >> 3) & 14) | CpioConstants.C_ISBLK | ((i40 >> 12) & 896), 2048);
            modifier3 = modifier2;
            z18 = z14;
            pVar9 = pVar6;
            pVar10 = pVar7;
            pVar11 = pVar8;
            visualTransformation2 = visualTransformationC;
            keyboardOptions2 = keyboardOptionsA;
            keyboardActions3 = keyboardActions2;
            z19 = z16;
            mutableInteractionSource3 = mutableInteractionSource2;
            shape2 = shapeC;
            textFieldColors2 = textFieldColors9;
            z20 = z214;
            textStyle3 = textStyle10;
            z21 = z215;
            pVar12 = pVar5;
            i41 = i39;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextField$3(value, onValueChange, modifier3, z21, z18, textStyle3, pVar12, pVar9, pVar10, pVar11, z20, visualTransformation2, keyboardOptions2, keyboardActions3, z19, i41, mutableInteractionSource3, shape2, textFieldColors2, i11, i12, i13));
    }

    @Composable
    @ComposableInferredTarget
    public static final void c(@NotNull Modifier modifier, @NotNull p<? super Composer, ? super Integer, l0> textField, @Nullable q<? super Modifier, ? super Composer, ? super Integer, l0> qVar, @Nullable p<? super Composer, ? super Integer, l0> pVar, @Nullable p<? super Composer, ? super Integer, l0> pVar2, @Nullable p<? super Composer, ? super Integer, l0> pVar3, boolean z6, float f, @NotNull l<? super Size, l0> onLabelMeasured, @NotNull p<? super Composer, ? super Integer, l0> border, @NotNull PaddingValues paddingValues, @Nullable Composer composer, int i10, int i11) {
        int i12;
        t.j(modifier, "modifier");
        t.j(textField, "textField");
        t.j(onLabelMeasured, "onLabelMeasured");
        t.j(border, "border");
        t.j(paddingValues, "paddingValues");
        Composer composerS = composer.s(-2049536174);
        int i13 = (i10 & 14) == 0 ? (composerS.k(modifier) ? 4 : 2) | i10 : i10;
        if ((i10 & 112) == 0) {
            i13 |= composerS.k(textField) ? 32 : 16;
        }
        if ((i10 & 896) == 0) {
            i13 |= composerS.k(qVar) ? 256 : 128;
        }
        if ((i10 & 7168) == 0) {
            i13 |= composerS.k(pVar) ? 2048 : 1024;
        }
        if ((57344 & i10) == 0) {
            i13 |= composerS.k(pVar2) ? 16384 : 8192;
        }
        if ((458752 & i10) == 0) {
            i13 |= composerS.k(pVar3) ? 131072 : 65536;
        }
        if ((3670016 & i10) == 0) {
            i13 |= composerS.m(z6) ? 1048576 : 524288;
        }
        if ((29360128 & i10) == 0) {
            i13 |= composerS.n(f) ? 8388608 : 4194304;
        }
        if ((234881024 & i10) == 0) {
            i13 |= composerS.k(onLabelMeasured) ? 67108864 : 33554432;
        }
        if ((1879048192 & i10) == 0) {
            i13 |= composerS.k(border) ? 536870912 : 268435456;
        }
        int i14 = (i11 & 14) == 0 ? i11 | (composerS.k(paddingValues) ? 4 : 2) : i11;
        if ((i13 & 1533916891) == 306783378 && (i14 & 11) == 2 && composerS.b()) {
            composerS.g();
        } else {
            Object[] objArr = {onLabelMeasured, Boolean.valueOf(z6), Float.valueOf(f), paddingValues};
            composerS.G(-568225417);
            int i15 = 0;
            boolean zK = false;
            for (int i16 = 4; i15 < i16; i16 = 4) {
                zK |= composerS.k(objArr[i15]);
                i15++;
            }
            Object objH = composerS.H();
            if (zK || objH == Composer.Companion.a()) {
                objH = new OutlinedTextFieldMeasurePolicy(onLabelMeasured, z6, f, paddingValues);
                composerS.z(objH);
            }
            composerS.Q();
            OutlinedTextFieldMeasurePolicy outlinedTextFieldMeasurePolicy = (OutlinedTextFieldMeasurePolicy) objH;
            LayoutDirection layoutDirection = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            composerS.G(-1323940314);
            Density density = (Density) composerS.x(CompositionLocalsKt.e());
            LayoutDirection layoutDirection2 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
            ViewConfiguration viewConfiguration = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
            ComposeUiNode.Companion companion = ComposeUiNode.Companion;
            a<ComposeUiNode> aVarA = companion.a();
            q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC = LayoutKt.c(modifier);
            int i17 = ((((i13 << 3) & 112) << 9) & 7168) | 6;
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
            Updater.e(composerA, outlinedTextFieldMeasurePolicy, companion.d());
            Updater.e(composerA, density, companion.b());
            Updater.e(composerA, layoutDirection2, companion.c());
            Updater.e(composerA, viewConfiguration, companion.f());
            composerS.o();
            qVarC.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, Integer.valueOf((i17 >> 3) & 112));
            composerS.G(2058660585);
            composerS.G(118153609);
            if (((i17 >> 9) & 10) == 2 && composerS.b()) {
                composerS.g();
            } else {
                border.invoke(composerS, Integer.valueOf((i13 >> 27) & 14));
                composerS.G(1169914108);
                if (pVar2 != null) {
                    Modifier modifierB = LayoutIdKt.b(Modifier.Companion, TextFieldImplKt.LeadingId).B(TextFieldImplKt.d());
                    Alignment alignmentE = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH = BoxKt.h(alignmentE, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection3 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration2 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    a<ComposeUiNode> aVarA2 = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC2 = LayoutKt.c(modifierB);
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
                    Updater.e(composerA2, measurePolicyH, companion.d());
                    Updater.e(composerA2, density2, companion.b());
                    Updater.e(composerA2, layoutDirection3, companion.c());
                    Updater.e(composerA2, viewConfiguration2, companion.f());
                    composerS.o();
                    qVarC2.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                    composerS.G(1691709354);
                    pVar2.invoke(composerS, Integer.valueOf((i13 >> 12) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                composerS.G(1169914393);
                if (pVar3 != null) {
                    Modifier modifierB2 = LayoutIdKt.b(Modifier.Companion, TextFieldImplKt.TrailingId).B(TextFieldImplKt.d());
                    Alignment alignmentE2 = Alignment.Companion.e();
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH2 = BoxKt.h(alignmentE2, false, composerS, 6);
                    composerS.G(-1323940314);
                    Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection4 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration3 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    a<ComposeUiNode> aVarA3 = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC3 = LayoutKt.c(modifierB2);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA3);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA3 = Updater.a(composerS);
                    Updater.e(composerA3, measurePolicyH2, companion.d());
                    Updater.e(composerA3, density3, companion.b());
                    Updater.e(composerA3, layoutDirection4, companion.c());
                    Updater.e(composerA3, viewConfiguration3, companion.f());
                    composerS.o();
                    qVarC3.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
                    composerS.G(-1351586719);
                    pVar3.invoke(composerS, Integer.valueOf((i13 >> 15) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
                composerS.Q();
                float fG = PaddingKt.g(paddingValues, layoutDirection);
                float f6 = PaddingKt.f(paddingValues, layoutDirection);
                Modifier.Companion companion2 = Modifier.Companion;
                if (pVar2 != null) {
                    i12 = 0;
                    fG = Dp.f(o.d(Dp.f(fG - TextFieldImplKt.c()), Dp.f(0)));
                } else {
                    i12 = 0;
                }
                float f7 = fG;
                if (pVar3 != null) {
                    f6 = Dp.f(o.d(Dp.f(f6 - TextFieldImplKt.c()), Dp.f(i12)));
                }
                Modifier modifierM = PaddingKt.m(companion2, f7, 0.0f, f6, 0.0f, 10, null);
                composerS.G(1169915404);
                if (qVar != null) {
                    qVar.invoke(LayoutIdKt.b(companion2, TextFieldImplKt.PlaceholderId).B(modifierM), composerS, Integer.valueOf((i13 >> 3) & 112));
                }
                composerS.Q();
                Modifier modifierB3 = LayoutIdKt.b(companion2, TextFieldImplKt.TextFieldId).B(modifierM);
                composerS.G(733328855);
                Alignment.Companion companion3 = Alignment.Companion;
                MeasurePolicy measurePolicyH3 = BoxKt.h(companion3.o(), true, composerS, 48);
                composerS.G(-1323940314);
                Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                LayoutDirection layoutDirection5 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                a<ComposeUiNode> aVarA4 = companion.a();
                q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC4 = LayoutKt.c(modifierB3);
                if (!(composerS.t() instanceof Applier)) {
                    ComposablesKt.c();
                }
                composerS.e();
                if (composerS.r()) {
                    composerS.w(aVarA4);
                } else {
                    composerS.c();
                }
                composerS.L();
                Composer composerA4 = Updater.a(composerS);
                Updater.e(composerA4, measurePolicyH3, companion.d());
                Updater.e(composerA4, density4, companion.b());
                Updater.e(composerA4, layoutDirection5, companion.c());
                Updater.e(composerA4, viewConfiguration4, companion.f());
                composerS.o();
                qVarC4.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                composerS.G(2058660585);
                composerS.G(-2137368960);
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                composerS.G(-1205597937);
                textField.invoke(composerS, Integer.valueOf((i13 >> 3) & 14));
                composerS.Q();
                composerS.Q();
                composerS.Q();
                composerS.d();
                composerS.Q();
                composerS.Q();
                if (pVar != null) {
                    Modifier modifierB4 = LayoutIdKt.b(companion2, TextFieldImplKt.LabelId);
                    composerS.G(733328855);
                    MeasurePolicy measurePolicyH4 = BoxKt.h(companion3.o(), false, composerS, 0);
                    composerS.G(-1323940314);
                    Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                    LayoutDirection layoutDirection6 = (LayoutDirection) composerS.x(CompositionLocalsKt.j());
                    ViewConfiguration viewConfiguration5 = (ViewConfiguration) composerS.x(CompositionLocalsKt.n());
                    a<ComposeUiNode> aVarA5 = companion.a();
                    q<SkippableUpdater<ComposeUiNode>, Composer, Integer, l0> qVarC5 = LayoutKt.c(modifierB4);
                    if (!(composerS.t() instanceof Applier)) {
                        ComposablesKt.c();
                    }
                    composerS.e();
                    if (composerS.r()) {
                        composerS.w(aVarA5);
                    } else {
                        composerS.c();
                    }
                    composerS.L();
                    Composer composerA5 = Updater.a(composerS);
                    Updater.e(composerA5, measurePolicyH4, companion.d());
                    Updater.e(composerA5, density5, companion.b());
                    Updater.e(composerA5, layoutDirection6, companion.c());
                    Updater.e(composerA5, viewConfiguration5, companion.f());
                    composerS.o();
                    qVarC5.invoke(SkippableUpdater.a(SkippableUpdater.b(composerS)), composerS, 0);
                    composerS.G(2058660585);
                    composerS.G(-2137368960);
                    composerS.G(-55131805);
                    pVar.invoke(composerS, Integer.valueOf((i13 >> 9) & 14));
                    composerS.Q();
                    composerS.Q();
                    composerS.Q();
                    composerS.d();
                    composerS.Q();
                    composerS.Q();
                }
            }
            composerS.Q();
            composerS.Q();
            composerS.d();
            composerS.Q();
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new OutlinedTextFieldKt$OutlinedTextFieldLayout$2(modifier, textField, qVar, pVar, pVar2, pVar3, z6, f, onLabelMeasured, border, paddingValues, i10, i11));
    }

    @NotNull
    public static final Modifier j(@NotNull Modifier outlineCutout, long j6, @NotNull PaddingValues paddingValues) {
        t.j(outlineCutout, "$this$outlineCutout");
        t.j(paddingValues, "paddingValues");
        return DrawModifierKt.c(outlineCutout, new OutlinedTextFieldKt$outlineCutout$1(j6, paddingValues));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(Placeable.PlacementScope placementScope, int i10, int i11, Placeable placeable, Placeable placeable2, Placeable placeable3, Placeable placeable4, Placeable placeable5, Placeable placeable6, float f, boolean z6, float f6, LayoutDirection layoutDirection, PaddingValues paddingValues) {
        int iC = c.c(paddingValues.d() * f6);
        int iC2 = c.c(PaddingKt.g(paddingValues, layoutDirection) * f6);
        float fC = TextFieldImplKt.c() * f6;
        if (placeable != null) {
            Placeable.PlacementScope.n(placementScope, placeable, 0, Alignment.Companion.i().a(placeable.B0(), i10), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.n(placementScope, placeable2, i11 - placeable2.Q0(), Alignment.Companion.i().a(placeable2.B0(), i10), 0.0f, 4, null);
        }
        if (placeable4 != null) {
            float f7 = 1 - f;
            Placeable.PlacementScope.n(placementScope, placeable4, c.c(placeable == null ? 0.0f : f7 * (TextFieldImplKt.i(placeable) - fC)) + iC2, c.c(((z6 ? Alignment.Companion.i().a(placeable4.B0(), i10) : iC) * f7) - ((placeable4.B0() / 2) * f)), 0.0f, 4, null);
        }
        Placeable.PlacementScope.n(placementScope, placeable3, TextFieldImplKt.i(placeable), Math.max(z6 ? Alignment.Companion.i().a(placeable3.B0(), i10) : iC, TextFieldImplKt.h(placeable4) / 2), 0.0f, 4, null);
        if (placeable5 != null) {
            if (z6) {
                iC = Alignment.Companion.i().a(placeable5.B0(), i10);
            }
            Placeable.PlacementScope.n(placementScope, placeable5, TextFieldImplKt.i(placeable), iC, 0.0f, 4, null);
        }
        Placeable.PlacementScope.l(placementScope, placeable6, IntOffset.Companion.a(), 0.0f, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int h(int i10, int i11, int i12, int i13, int i14, long j6, float f, PaddingValues paddingValues) {
        return Math.max(Constraints.o(j6), Math.max(i10, Math.max(i11, c.c(Math.max(i12, i14) + (paddingValues.a() * f) + Math.max(paddingValues.d() * f, i13 / 2.0f)))));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int i(int i10, int i11, int i12, int i13, int i14, long j6) {
        return Math.max(i10 + Math.max(i12, Math.max(i13, i14)) + i11, Constraints.p(j6));
    }
}
