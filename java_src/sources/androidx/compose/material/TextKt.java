package androidx.compose.material;

import androidx.compose.foundation.text.BasicTextKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextAlign;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextDirection;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.compose.ui.unit.TextUnit;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class TextKt {

    @NotNull
    private static final ProvidableCompositionLocal<TextStyle> LocalTextStyle = CompositionLocalKt.c(SnapshotStateKt.p(), TextKt$LocalTextStyle$1.INSTANCE);

    /* JADX WARN: Code duplicated, block: B:101:0x013e  */
    /* JADX WARN: Code duplicated, block: B:102:0x0141  */
    /* JADX WARN: Code duplicated, block: B:106:0x0149  */
    /* JADX WARN: Code duplicated, block: B:107:0x014e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0154  */
    /* JADX WARN: Code duplicated, block: B:111:0x015a  */
    /* JADX WARN: Code duplicated, block: B:112:0x015d  */
    /* JADX WARN: Code duplicated, block: B:114:0x0162  */
    /* JADX WARN: Code duplicated, block: B:117:0x0168  */
    /* JADX WARN: Code duplicated, block: B:119:0x016d  */
    /* JADX WARN: Code duplicated, block: B:121:0x0171  */
    /* JADX WARN: Code duplicated, block: B:123:0x0179  */
    /* JADX WARN: Code duplicated, block: B:124:0x017c  */
    /* JADX WARN: Code duplicated, block: B:126:0x0181  */
    /* JADX WARN: Code duplicated, block: B:129:0x0188  */
    /* JADX WARN: Code duplicated, block: B:131:0x018d  */
    /* JADX WARN: Code duplicated, block: B:133:0x0191  */
    /* JADX WARN: Code duplicated, block: B:135:0x0199  */
    /* JADX WARN: Code duplicated, block: B:136:0x019c  */
    /* JADX WARN: Code duplicated, block: B:140:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:142:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:144:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:146:0x01b5  */
    /* JADX WARN: Code duplicated, block: B:150:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:155:0x01cf  */
    /* JADX WARN: Code duplicated, block: B:157:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:159:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:160:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:164:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:166:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:169:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:172:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:174:0x0203  */
    /* JADX WARN: Code duplicated, block: B:182:0x0241  */
    /* JADX WARN: Code duplicated, block: B:184:0x0248  */
    /* JADX WARN: Code duplicated, block: B:194:0x027e A[PHI: r1 r3 r5 r6 r7 r8 r9 r10 r11 r12 r15 r17 r19 r20 r21 r26
      0x027e: PHI (r1v16 androidx.compose.ui.text.style.TextDecoration) = (r1v3 androidx.compose.ui.text.style.TextDecoration), (r1v18 androidx.compose.ui.text.style.TextDecoration) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r3v11 long) = (r3v6 long), (r3v12 long) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r5v6 androidx.compose.ui.Modifier) = (r5v2 androidx.compose.ui.Modifier), (r5v7 androidx.compose.ui.Modifier) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r6v8 int) = (r6v3 int), (r6v9 int) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r7v8 boolean) = (r7v4 boolean), (r7v9 boolean) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r8v20 int) = (r8v14 int), (r8v23 int) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r9v12 androidx.compose.ui.text.style.TextAlign) = (r9v6 androidx.compose.ui.text.style.TextAlign), (r9v13 androidx.compose.ui.text.style.TextAlign) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r10v7 int) = (r10v3 int), (r10v8 int) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r11v12 androidx.compose.ui.text.font.FontStyle) = (r11v9 androidx.compose.ui.text.font.FontStyle), (r11v14 androidx.compose.ui.text.font.FontStyle) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r12v10 java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent>) = 
      (r12v6 java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent>)
      (r12v11 java.util.Map<java.lang.String, androidx.compose.foundation.text.InlineTextContent>)
     binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r15v6 long) = (r15v2 long), (r15v7 long) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r17v10 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>) = 
      (r17v6 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>)
      (r17v11 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>)
     binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r19v15 androidx.compose.ui.text.font.FontWeight) = (r19v11 androidx.compose.ui.text.font.FontWeight), (r19v16 androidx.compose.ui.text.font.FontWeight) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r20v10 androidx.compose.ui.text.font.FontFamily) = (r20v6 androidx.compose.ui.text.font.FontFamily), (r20v11 androidx.compose.ui.text.font.FontFamily) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r21v5 long) = (r21v1 long), (r21v6 long) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]
      0x027e: PHI (r26v8 long) = (r26v5 long), (r26v9 long) binds: [B:242:0x0309, B:193:0x0260] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:195:0x0284 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:196:0x0286  */
    /* JADX WARN: Code duplicated, block: B:197:0x0289  */
    /* JADX WARN: Code duplicated, block: B:199:0x028d  */
    /* JADX WARN: Code duplicated, block: B:200:0x0294  */
    /* JADX WARN: Code duplicated, block: B:202:0x0298  */
    /* JADX WARN: Code duplicated, block: B:203:0x029f  */
    /* JADX WARN: Code duplicated, block: B:206:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:207:0x02a6  */
    /* JADX WARN: Code duplicated, block: B:209:0x02aa  */
    /* JADX WARN: Code duplicated, block: B:210:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:212:0x02b1  */
    /* JADX WARN: Code duplicated, block: B:213:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:215:0x02b8  */
    /* JADX WARN: Code duplicated, block: B:216:0x02bf  */
    /* JADX WARN: Code duplicated, block: B:218:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:219:0x02c5  */
    /* JADX WARN: Code duplicated, block: B:222:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:224:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:225:0x02d5  */
    /* JADX WARN: Code duplicated, block: B:227:0x02d9  */
    /* JADX WARN: Code duplicated, block: B:228:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:230:0x02e4  */
    /* JADX WARN: Code duplicated, block: B:231:0x02e6  */
    /* JADX WARN: Code duplicated, block: B:233:0x02ea  */
    /* JADX WARN: Code duplicated, block: B:234:0x02ee  */
    /* JADX WARN: Code duplicated, block: B:236:0x02f2  */
    /* JADX WARN: Code duplicated, block: B:237:0x02fc  */
    /* JADX WARN: Code duplicated, block: B:239:0x0300  */
    /* JADX WARN: Code duplicated, block: B:240:0x0303  */
    /* JADX WARN: Code duplicated, block: B:243:0x030b  */
    /* JADX WARN: Code duplicated, block: B:246:0x0330  */
    /* JADX WARN: Code duplicated, block: B:247:0x0333  */
    /* JADX WARN: Code duplicated, block: B:250:0x0340  */
    /* JADX WARN: Code duplicated, block: B:256:0x040e  */
    /* JADX WARN: Code duplicated, block: B:258:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:0x0089  */
    /* JADX WARN: Code duplicated, block: B:47:0x008e  */
    /* JADX WARN: Code duplicated, block: B:49:0x0097  */
    /* JADX WARN: Code duplicated, block: B:51:0x009d  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a0  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:59:0x00b9  */
    /* JADX WARN: Code duplicated, block: B:61:0x00bf  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:66:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:71:0x00df  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e2  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:82:0x0102  */
    /* JADX WARN: Code duplicated, block: B:86:0x010a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0111  */
    /* JADX WARN: Code duplicated, block: B:89:0x0119  */
    /* JADX WARN: Code duplicated, block: B:91:0x011f  */
    /* JADX WARN: Code duplicated, block: B:92:0x0122  */
    /* JADX WARN: Code duplicated, block: B:96:0x0129  */
    /* JADX WARN: Code duplicated, block: B:97:0x0130  */
    /* JADX WARN: Code duplicated, block: B:99:0x0138  */
    @ComposableTarget
    @Composable
    public static final void b(@NotNull AnnotatedString text, @Nullable Modifier modifier, long j6, long j10, @Nullable FontStyle fontStyle, @Nullable FontWeight fontWeight, @Nullable FontFamily fontFamily, long j11, @Nullable TextDecoration textDecoration, @Nullable TextAlign textAlign, long j12, int i10, boolean z6, int i11, @Nullable Map<String, InlineTextContent> map, @Nullable l<? super TextLayoutResult, l0> lVar, @Nullable TextStyle textStyle, @Nullable Composer composer, int i12, int i13, int i14) {
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
        int i40;
        int i41;
        int i42;
        int i43;
        Modifier modifier2;
        long jF;
        long jA;
        FontStyle fontStyle2;
        FontWeight fontWeight2;
        FontFamily fontFamily2;
        long jA2;
        TextDecoration textDecoration2;
        TextAlign textAlign2;
        long jA3;
        int iA;
        boolean z10;
        int i44;
        Map<String, InlineTextContent> mapH;
        l<? super TextLayoutResult, l0> lVar2;
        TextDecoration textDecoration3;
        int i45;
        TextStyle textStyle2;
        Color.Companion companion;
        long jG;
        long j13;
        Modifier modifier3;
        boolean z11;
        TextAlign textAlign3;
        FontStyle fontStyle3;
        FontFamily fontFamily3;
        Map<String, InlineTextContent> map2;
        TextDecoration textDecoration4;
        int i46;
        long j14;
        long j15;
        long j16;
        TextStyle textStyle3;
        l<? super TextLayoutResult, l0> lVar3;
        FontWeight fontWeight3;
        int i47;
        long j17;
        ScopeUpdateScope scopeUpdateScopeU;
        int i48;
        t.j(text, "text");
        Composer composerS = composer.s(-422393234);
        if ((i14 & 1) != 0) {
            i15 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            i15 = (composerS.k(text) ? 4 : 2) | i12;
        } else {
            i15 = i12;
        }
        int i49 = i14 & 2;
        if (i49 == 0) {
            if ((i12 & 112) == 0) {
                i15 |= composerS.k(modifier) ? 32 : 16;
            }
            i16 = i14 & 4;
            if (i16 != 0) {
                i15 |= 384;
            } else if ((i12 & 896) == 0) {
                if (composerS.q(j6)) {
                    i17 = 256;
                } else {
                    i17 = 128;
                }
                i15 |= i17;
            }
            i18 = i14 & 8;
            if (i18 != 0) {
                i15 |= 3072;
            } else if ((i12 & 7168) == 0) {
                if (composerS.q(j10)) {
                    i19 = 2048;
                } else {
                    i19 = 1024;
                }
                i15 |= i19;
            }
            i20 = i14 & 16;
            if (i20 != 0) {
                i15 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                if (composerS.k(fontStyle)) {
                    i21 = 16384;
                } else {
                    i21 = 8192;
                }
                i15 |= i21;
            }
            i22 = i14 & 32;
            if (i22 != 0) {
                i15 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.k(fontWeight)) {
                    i23 = 131072;
                } else {
                    i23 = 65536;
                }
                i15 |= i23;
            }
            i24 = i14 & 64;
            if (i24 != 0) {
                i15 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(fontFamily)) {
                    i25 = 1048576;
                } else {
                    i25 = 524288;
                }
                i15 |= i25;
            }
            i26 = i14 & 128;
            if (i26 != 0) {
                i15 |= 12582912;
            } else if ((i12 & 29360128) == 0) {
                if (composerS.q(j11)) {
                    i27 = 8388608;
                } else {
                    i27 = 4194304;
                }
                i15 |= i27;
            }
            i28 = i14 & 256;
            if (i28 != 0) {
                i15 |= 100663296;
            } else if ((i12 & 234881024) == 0) {
                if (composerS.k(textDecoration)) {
                    i29 = 67108864;
                } else {
                    i29 = 33554432;
                }
                i15 |= i29;
            }
            i30 = i14 & 512;
            if (i30 != 0) {
                i15 |= 805306368;
            } else if ((i12 & 1879048192) == 0) {
                if (composerS.k(textAlign)) {
                    i31 = 536870912;
                } else {
                    i31 = 268435456;
                }
                i15 |= i31;
            }
            i32 = i14 & 1024;
            if (i32 != 0) {
                i33 = i13 | 6;
            } else if ((i13 & 14) == 0) {
                if (composerS.q(j12)) {
                    i34 = 4;
                } else {
                    i34 = 2;
                }
                i33 = i13 | i34;
            } else {
                i33 = i13;
            }
            i35 = i14 & 2048;
            if (i35 != 0) {
                i33 |= 48;
            } else if ((i13 & 112) != 0) {
                if (composerS.p(i10)) {
                    i36 = 32;
                } else {
                    i36 = 16;
                }
                i33 |= i36;
            }
            i37 = i33;
            i38 = i14 & 4096;
            if (i38 != 0) {
                if ((i13 & 896) == 0) {
                    if (composerS.m(z6)) {
                        i39 = 256;
                    } else {
                        i39 = 128;
                    }
                    i37 |= i39;
                }
                i40 = i14 & 8192;
                if (i40 != 0) {
                    if ((i13 & 7168) == 0) {
                        i37 |= composerS.p(i11) ? 2048 : 1024;
                    }
                    i41 = i14 & 16384;
                    if (i41 != 0) {
                        i37 |= 8192;
                    }
                    i42 = i14 & 32768;
                    if (i42 != 0) {
                        if ((i13 & 458752) == 0) {
                            if (composerS.k(lVar)) {
                                i43 = 131072;
                            } else {
                                i43 = 65536;
                            }
                            i37 |= i43;
                        }
                        if ((i13 & 3670016) != 0) {
                            if ((i14 & 65536) == 0 || !composerS.k(textStyle)) {
                                i48 = 524288;
                            } else {
                                i48 = 1048576;
                            }
                            i37 |= i48;
                        }
                        if (i41 != 16384 && (1533916891 & i15) == 306783378 && (2995931 & i37) == 599186 && composerS.b()) {
                            composerS.g();
                            modifier3 = modifier;
                            j16 = j6;
                            j14 = j10;
                            fontStyle3 = fontStyle;
                            fontWeight3 = fontWeight;
                            fontFamily3 = fontFamily;
                            j17 = j11;
                            textDecoration4 = textDecoration;
                            textAlign3 = textAlign;
                            j15 = j12;
                            i46 = i10;
                            z11 = z6;
                            i47 = i11;
                            map2 = map;
                            lVar3 = lVar;
                            textStyle3 = textStyle;
                        } else {
                            composerS.J();
                            if ((i12 & 1) != 0 || composerS.h()) {
                                if (i49 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i16 != 0) {
                                    jF = Color.Companion.f();
                                } else {
                                    jF = j6;
                                }
                                if (i18 != 0) {
                                    jA = TextUnit.Companion.a();
                                } else {
                                    jA = j10;
                                }
                                if (i20 != 0) {
                                    fontStyle2 = null;
                                } else {
                                    fontStyle2 = fontStyle;
                                }
                                if (i22 != 0) {
                                    fontWeight2 = null;
                                } else {
                                    fontWeight2 = fontWeight;
                                }
                                if (i24 != 0) {
                                    fontFamily2 = null;
                                } else {
                                    fontFamily2 = fontFamily;
                                }
                                if (i26 != 0) {
                                    jA2 = TextUnit.Companion.a();
                                } else {
                                    jA2 = j11;
                                }
                                if (i28 != 0) {
                                    textDecoration2 = null;
                                } else {
                                    textDecoration2 = textDecoration;
                                }
                                textAlign2 = i30 == 0 ? textAlign : null;
                                if (i32 != 0) {
                                    jA3 = TextUnit.Companion.a();
                                } else {
                                    jA3 = j12;
                                }
                                if (i35 != 0) {
                                    iA = TextOverflow.Companion.a();
                                } else {
                                    iA = i10;
                                }
                                if (i38 != 0) {
                                    z10 = true;
                                } else {
                                    z10 = z6;
                                }
                                if (i40 != 0) {
                                    i44 = Integer.MAX_VALUE;
                                } else {
                                    i44 = i11;
                                }
                                if (i41 != 0) {
                                    mapH = s0.h();
                                    i37 &= -57345;
                                } else {
                                    mapH = map;
                                }
                                if (i42 != 0) {
                                    lVar2 = TextKt$Text$3.INSTANCE;
                                } else {
                                    lVar2 = lVar;
                                }
                                textDecoration3 = textDecoration2;
                                if ((i14 & 65536) != 0) {
                                    i45 = i37 & (-3670017);
                                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                    textDecoration2 = textDecoration3;
                                }
                                composerS.A();
                                composerS.G(1557618192);
                                companion = Color.Companion;
                                if (jF != companion.f()) {
                                    j13 = jF;
                                } else {
                                    jG = textStyle2.g();
                                    if (jG == companion.f()) {
                                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                                    }
                                    j13 = jG;
                                }
                                composerS.Q();
                                TextStyle textStyleC = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                                TextDecoration textDecoration5 = textDecoration2;
                                int i50 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                                int i51 = i45 << 9;
                                BasicTextKt.a(text, modifier2, textStyleC, lVar2, iA, z10, i44, mapH, composerS, i50 | (i51 & 57344) | (i51 & 458752) | (i51 & 3670016), 0);
                                modifier3 = modifier2;
                                z11 = z10;
                                textAlign3 = textAlign2;
                                fontStyle3 = fontStyle2;
                                fontFamily3 = fontFamily2;
                                map2 = mapH;
                                textDecoration4 = textDecoration5;
                                l<? super TextLayoutResult, l0> lVar4 = lVar2;
                                i46 = iA;
                                j14 = jA;
                                j15 = jA3;
                                j16 = jF;
                                textStyle3 = textStyle2;
                                lVar3 = lVar4;
                                fontWeight3 = fontWeight2;
                                i47 = i44;
                                j17 = jA2;
                            } else {
                                composerS.g();
                                if (i41 != 0) {
                                    i37 &= -57345;
                                }
                                if ((i14 & 65536) != 0) {
                                    i37 &= -3670017;
                                }
                                modifier2 = modifier;
                                jF = j6;
                                jA = j10;
                                fontStyle2 = fontStyle;
                                fontWeight2 = fontWeight;
                                fontFamily2 = fontFamily;
                                jA2 = j11;
                                textDecoration2 = textDecoration;
                                textAlign2 = textAlign;
                                jA3 = j12;
                                iA = i10;
                                z10 = z6;
                                i44 = i11;
                                mapH = map;
                                lVar2 = lVar;
                            }
                            i45 = i37;
                            textStyle2 = textStyle;
                            composerS.A();
                            composerS.G(1557618192);
                            companion = Color.Companion;
                            if (jF != companion.f()) {
                                j13 = jF;
                            } else {
                                jG = textStyle2.g();
                                if (jG == companion.f()) {
                                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                                }
                                j13 = jG;
                            }
                            composerS.Q();
                            TextStyle textStyleC2 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                            TextDecoration textDecoration6 = textDecoration2;
                            int i52 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                            int i53 = i45 << 9;
                            BasicTextKt.a(text, modifier2, textStyleC2, lVar2, iA, z10, i44, mapH, composerS, i52 | (i53 & 57344) | (i53 & 458752) | (i53 & 3670016), 0);
                            modifier3 = modifier2;
                            z11 = z10;
                            textAlign3 = textAlign2;
                            fontStyle3 = fontStyle2;
                            fontFamily3 = fontFamily2;
                            map2 = mapH;
                            textDecoration4 = textDecoration6;
                            l<? super TextLayoutResult, l0> lVar5 = lVar2;
                            i46 = iA;
                            j14 = jA;
                            j15 = jA3;
                            j16 = jF;
                            textStyle3 = textStyle2;
                            lVar3 = lVar5;
                            fontWeight3 = fontWeight2;
                            i47 = i44;
                            j17 = jA2;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
                    }
                    i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    if ((i13 & 3670016) != 0) {
                        if ((i14 & 65536) == 0) {
                            i48 = 524288;
                        } else {
                            i48 = 524288;
                        }
                        i37 |= i48;
                    }
                    if (i41 != 16384) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC3 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration7 = textDecoration2;
                        int i54 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i55 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC3, lVar2, iA, z10, i44, mapH, composerS, i54 | (i55 & 57344) | (i55 & 458752) | (i55 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration7;
                        l<? super TextLayoutResult, l0> lVar6 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar6;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC4 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration8 = textDecoration2;
                        int i56 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i57 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC4, lVar2, iA, z10, i44, mapH, composerS, i56 | (i57 & 57344) | (i57 & 458752) | (i57 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration8;
                        l<? super TextLayoutResult, l0> lVar7 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar7;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= 3072;
                i41 = i14 & 16384;
                if (i41 != 0) {
                    i37 |= 8192;
                }
                i42 = i14 & 32768;
                if (i42 != 0) {
                    if ((i13 & 458752) == 0) {
                        if (composerS.k(lVar)) {
                            i43 = 131072;
                        } else {
                            i43 = 65536;
                        }
                        i37 |= i43;
                    }
                    if ((i13 & 3670016) != 0) {
                        if ((i14 & 65536) == 0) {
                            i48 = 524288;
                        } else {
                            i48 = 524288;
                        }
                        i37 |= i48;
                    }
                    if (i41 != 16384) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC5 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration9 = textDecoration2;
                        int i58 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i59 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC5, lVar2, iA, z10, i44, mapH, composerS, i58 | (i59 & 57344) | (i59 & 458752) | (i59 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration9;
                        l<? super TextLayoutResult, l0> lVar8 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar8;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC6 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration10 = textDecoration2;
                        int i510 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i511 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC6, lVar2, iA, z10, i44, mapH, composerS, i510 | (i511 & 57344) | (i511 & 458752) | (i511 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration10;
                        l<? super TextLayoutResult, l0> lVar9 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar9;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC7 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration11 = textDecoration2;
                    int i512 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i513 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC7, lVar2, iA, z10, i44, mapH, composerS, i512 | (i513 & 57344) | (i513 & 458752) | (i513 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration11;
                    l<? super TextLayoutResult, l0> lVar10 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar10;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC8 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration12 = textDecoration2;
                    int i514 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i515 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC8, lVar2, iA, z10, i44, mapH, composerS, i514 | (i515 & 57344) | (i515 & 458752) | (i515 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration12;
                    l<? super TextLayoutResult, l0> lVar11 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar11;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 384;
            i40 = i14 & 8192;
            if (i40 != 0) {
                if ((i13 & 7168) == 0) {
                    i37 |= composerS.p(i11) ? 2048 : 1024;
                }
                i41 = i14 & 16384;
                if (i41 != 0) {
                    i37 |= 8192;
                }
                i42 = i14 & 32768;
                if (i42 != 0) {
                    if ((i13 & 458752) == 0) {
                        if (composerS.k(lVar)) {
                            i43 = 131072;
                        } else {
                            i43 = 65536;
                        }
                        i37 |= i43;
                    }
                    if ((i13 & 3670016) != 0) {
                        if ((i14 & 65536) == 0) {
                            i48 = 524288;
                        } else {
                            i48 = 524288;
                        }
                        i37 |= i48;
                    }
                    if (i41 != 16384) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC9 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration13 = textDecoration2;
                        int i516 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i517 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC9, lVar2, iA, z10, i44, mapH, composerS, i516 | (i517 & 57344) | (i517 & 458752) | (i517 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration13;
                        l<? super TextLayoutResult, l0> lVar12 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar12;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC10 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration14 = textDecoration2;
                        int i518 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i519 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC10, lVar2, iA, z10, i44, mapH, composerS, i518 | (i519 & 57344) | (i519 & 458752) | (i519 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration14;
                        l<? super TextLayoutResult, l0> lVar13 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar13;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC11 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration15 = textDecoration2;
                    int i5110 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i5111 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC11, lVar2, iA, z10, i44, mapH, composerS, i5110 | (i5111 & 57344) | (i5111 & 458752) | (i5111 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration15;
                    l<? super TextLayoutResult, l0> lVar14 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar14;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC12 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration16 = textDecoration2;
                    int i5112 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i5113 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC12, lVar2, iA, z10, i44, mapH, composerS, i5112 | (i5113 & 57344) | (i5113 & 458752) | (i5113 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration16;
                    l<? super TextLayoutResult, l0> lVar15 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar15;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 3072;
            i41 = i14 & 16384;
            if (i41 != 0) {
                i37 |= 8192;
            }
            i42 = i14 & 32768;
            if (i42 != 0) {
                if ((i13 & 458752) == 0) {
                    if (composerS.k(lVar)) {
                        i43 = 131072;
                    } else {
                        i43 = 65536;
                    }
                    i37 |= i43;
                }
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC13 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration17 = textDecoration2;
                    int i5114 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i5115 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC13, lVar2, iA, z10, i44, mapH, composerS, i5114 | (i5115 & 57344) | (i5115 & 458752) | (i5115 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration17;
                    l<? super TextLayoutResult, l0> lVar16 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar16;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC14 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration18 = textDecoration2;
                    int i5116 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i5117 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC14, lVar2, iA, z10, i44, mapH, composerS, i5116 | (i5117 & 57344) | (i5117 & 458752) | (i5117 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration18;
                    l<? super TextLayoutResult, l0> lVar17 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar17;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i13 & 3670016) != 0) {
                if ((i14 & 65536) == 0) {
                    i48 = 524288;
                } else {
                    i48 = 524288;
                }
                i37 |= i48;
            }
            if (i41 != 16384) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC15 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration19 = textDecoration2;
                int i5118 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i5119 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC15, lVar2, iA, z10, i44, mapH, composerS, i5118 | (i5119 & 57344) | (i5119 & 458752) | (i5119 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration19;
                l<? super TextLayoutResult, l0> lVar18 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar18;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC16 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration110 = textDecoration2;
                int i51110 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i51111 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC16, lVar2, iA, z10, i44, mapH, composerS, i51110 | (i51111 & 57344) | (i51111 & 458752) | (i51111 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration110;
                l<? super TextLayoutResult, l0> lVar19 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar19;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
        }
        i15 |= 48;
        i16 = i14 & 4;
        if (i16 != 0) {
            i15 |= 384;
        } else if ((i12 & 896) == 0) {
            if (composerS.q(j6)) {
                i17 = 256;
            } else {
                i17 = 128;
            }
            i15 |= i17;
        }
        i18 = i14 & 8;
        if (i18 != 0) {
            i15 |= 3072;
        } else if ((i12 & 7168) == 0) {
            if (composerS.q(j10)) {
                i19 = 2048;
            } else {
                i19 = 1024;
            }
            i15 |= i19;
        }
        i20 = i14 & 16;
        if (i20 != 0) {
            i15 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            if (composerS.k(fontStyle)) {
                i21 = 16384;
            } else {
                i21 = 8192;
            }
            i15 |= i21;
        }
        i22 = i14 & 32;
        if (i22 != 0) {
            i15 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i12 & 458752) == 0) {
            if (composerS.k(fontWeight)) {
                i23 = 131072;
            } else {
                i23 = 65536;
            }
            i15 |= i23;
        }
        i24 = i14 & 64;
        if (i24 != 0) {
            i15 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.k(fontFamily)) {
                i25 = 1048576;
            } else {
                i25 = 524288;
            }
            i15 |= i25;
        }
        i26 = i14 & 128;
        if (i26 != 0) {
            i15 |= 12582912;
        } else if ((i12 & 29360128) == 0) {
            if (composerS.q(j11)) {
                i27 = 8388608;
            } else {
                i27 = 4194304;
            }
            i15 |= i27;
        }
        i28 = i14 & 256;
        if (i28 != 0) {
            i15 |= 100663296;
        } else if ((i12 & 234881024) == 0) {
            if (composerS.k(textDecoration)) {
                i29 = 67108864;
            } else {
                i29 = 33554432;
            }
            i15 |= i29;
        }
        i30 = i14 & 512;
        if (i30 != 0) {
            i15 |= 805306368;
        } else if ((i12 & 1879048192) == 0) {
            if (composerS.k(textAlign)) {
                i31 = 536870912;
            } else {
                i31 = 268435456;
            }
            i15 |= i31;
        }
        i32 = i14 & 1024;
        if (i32 != 0) {
            i33 = i13 | 6;
        } else if ((i13 & 14) == 0) {
            if (composerS.q(j12)) {
                i34 = 4;
            } else {
                i34 = 2;
            }
            i33 = i13 | i34;
        } else {
            i33 = i13;
        }
        i35 = i14 & 2048;
        if (i35 != 0) {
            i33 |= 48;
        } else if ((i13 & 112) != 0) {
            if (composerS.p(i10)) {
                i36 = 32;
            } else {
                i36 = 16;
            }
            i33 |= i36;
        }
        i37 = i33;
        i38 = i14 & 4096;
        if (i38 != 0) {
            if ((i13 & 896) == 0) {
                if (composerS.m(z6)) {
                    i39 = 256;
                } else {
                    i39 = 128;
                }
                i37 |= i39;
            }
            i40 = i14 & 8192;
            if (i40 != 0) {
                if ((i13 & 7168) == 0) {
                    i37 |= composerS.p(i11) ? 2048 : 1024;
                }
                i41 = i14 & 16384;
                if (i41 != 0) {
                    i37 |= 8192;
                }
                i42 = i14 & 32768;
                if (i42 != 0) {
                    if ((i13 & 458752) == 0) {
                        if (composerS.k(lVar)) {
                            i43 = 131072;
                        } else {
                            i43 = 65536;
                        }
                        i37 |= i43;
                    }
                    if ((i13 & 3670016) != 0) {
                        if ((i14 & 65536) == 0) {
                            i48 = 524288;
                        } else {
                            i48 = 524288;
                        }
                        i37 |= i48;
                    }
                    if (i41 != 16384) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC17 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration111 = textDecoration2;
                        int i51112 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i51113 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC17, lVar2, iA, z10, i44, mapH, composerS, i51112 | (i51113 & 57344) | (i51113 & 458752) | (i51113 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration111;
                        l<? super TextLayoutResult, l0> lVar110 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar110;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i49 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i44 = Integer.MAX_VALUE;
                            } else {
                                i44 = i11;
                            }
                            if (i41 != 0) {
                                mapH = s0.h();
                                i37 &= -57345;
                            } else {
                                mapH = map;
                            }
                            if (i42 != 0) {
                                lVar2 = TextKt$Text$3.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 65536) != 0) {
                                i45 = i37 & (-3670017);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i45 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557618192);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC18 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration112 = textDecoration2;
                        int i51114 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                        int i51115 = i45 << 9;
                        BasicTextKt.a(text, modifier2, textStyleC18, lVar2, iA, z10, i44, mapH, composerS, i51114 | (i51115 & 57344) | (i51115 & 458752) | (i51115 & 3670016), 0);
                        modifier3 = modifier2;
                        z11 = z10;
                        textAlign3 = textAlign2;
                        fontStyle3 = fontStyle2;
                        fontFamily3 = fontFamily2;
                        map2 = mapH;
                        textDecoration4 = textDecoration112;
                        l<? super TextLayoutResult, l0> lVar111 = lVar2;
                        i46 = iA;
                        j14 = jA;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        lVar3 = lVar111;
                        fontWeight3 = fontWeight2;
                        i47 = i44;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC19 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration113 = textDecoration2;
                    int i51116 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i51117 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC19, lVar2, iA, z10, i44, mapH, composerS, i51116 | (i51117 & 57344) | (i51117 & 458752) | (i51117 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration113;
                    l<? super TextLayoutResult, l0> lVar112 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar112;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC110 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration114 = textDecoration2;
                    int i51118 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i51119 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC110, lVar2, iA, z10, i44, mapH, composerS, i51118 | (i51119 & 57344) | (i51119 & 458752) | (i51119 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration114;
                    l<? super TextLayoutResult, l0> lVar113 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar113;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 3072;
            i41 = i14 & 16384;
            if (i41 != 0) {
                i37 |= 8192;
            }
            i42 = i14 & 32768;
            if (i42 != 0) {
                if ((i13 & 458752) == 0) {
                    if (composerS.k(lVar)) {
                        i43 = 131072;
                    } else {
                        i43 = 65536;
                    }
                    i37 |= i43;
                }
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC111 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration115 = textDecoration2;
                    int i511110 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i511111 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC111, lVar2, iA, z10, i44, mapH, composerS, i511110 | (i511111 & 57344) | (i511111 & 458752) | (i511111 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration115;
                    l<? super TextLayoutResult, l0> lVar114 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar114;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC112 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration116 = textDecoration2;
                    int i511112 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i511113 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC112, lVar2, iA, z10, i44, mapH, composerS, i511112 | (i511113 & 57344) | (i511113 & 458752) | (i511113 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration116;
                    l<? super TextLayoutResult, l0> lVar115 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar115;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i13 & 3670016) != 0) {
                if ((i14 & 65536) == 0) {
                    i48 = 524288;
                } else {
                    i48 = 524288;
                }
                i37 |= i48;
            }
            if (i41 != 16384) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC113 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration117 = textDecoration2;
                int i511114 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i511115 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC113, lVar2, iA, z10, i44, mapH, composerS, i511114 | (i511115 & 57344) | (i511115 & 458752) | (i511115 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration117;
                l<? super TextLayoutResult, l0> lVar116 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar116;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC114 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration118 = textDecoration2;
                int i511116 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i511117 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC114, lVar2, iA, z10, i44, mapH, composerS, i511116 | (i511117 & 57344) | (i511117 & 458752) | (i511117 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration118;
                l<? super TextLayoutResult, l0> lVar117 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar117;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= 384;
        i40 = i14 & 8192;
        if (i40 != 0) {
            if ((i13 & 7168) == 0) {
                i37 |= composerS.p(i11) ? 2048 : 1024;
            }
            i41 = i14 & 16384;
            if (i41 != 0) {
                i37 |= 8192;
            }
            i42 = i14 & 32768;
            if (i42 != 0) {
                if ((i13 & 458752) == 0) {
                    if (composerS.k(lVar)) {
                        i43 = 131072;
                    } else {
                        i43 = 65536;
                    }
                    i37 |= i43;
                }
                if ((i13 & 3670016) != 0) {
                    if ((i14 & 65536) == 0) {
                        i48 = 524288;
                    } else {
                        i48 = 524288;
                    }
                    i37 |= i48;
                }
                if (i41 != 16384) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC115 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration119 = textDecoration2;
                    int i511118 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i511119 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC115, lVar2, iA, z10, i44, mapH, composerS, i511118 | (i511119 & 57344) | (i511119 & 458752) | (i511119 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration119;
                    l<? super TextLayoutResult, l0> lVar118 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar118;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i49 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i44 = Integer.MAX_VALUE;
                        } else {
                            i44 = i11;
                        }
                        if (i41 != 0) {
                            mapH = s0.h();
                            i37 &= -57345;
                        } else {
                            mapH = map;
                        }
                        if (i42 != 0) {
                            lVar2 = TextKt$Text$3.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 65536) != 0) {
                            i45 = i37 & (-3670017);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i45 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557618192);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC116 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration1110 = textDecoration2;
                    int i5111110 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                    int i5111111 = i45 << 9;
                    BasicTextKt.a(text, modifier2, textStyleC116, lVar2, iA, z10, i44, mapH, composerS, i5111110 | (i5111111 & 57344) | (i5111111 & 458752) | (i5111111 & 3670016), 0);
                    modifier3 = modifier2;
                    z11 = z10;
                    textAlign3 = textAlign2;
                    fontStyle3 = fontStyle2;
                    fontFamily3 = fontFamily2;
                    map2 = mapH;
                    textDecoration4 = textDecoration1110;
                    l<? super TextLayoutResult, l0> lVar119 = lVar2;
                    i46 = iA;
                    j14 = jA;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    lVar3 = lVar119;
                    fontWeight3 = fontWeight2;
                    i47 = i44;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            if ((i13 & 3670016) != 0) {
                if ((i14 & 65536) == 0) {
                    i48 = 524288;
                } else {
                    i48 = 524288;
                }
                i37 |= i48;
            }
            if (i41 != 16384) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC117 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1111 = textDecoration2;
                int i5111112 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i5111113 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC117, lVar2, iA, z10, i44, mapH, composerS, i5111112 | (i5111113 & 57344) | (i5111113 & 458752) | (i5111113 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration1111;
                l<? super TextLayoutResult, l0> lVar1110 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar1110;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC118 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1112 = textDecoration2;
                int i5111114 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i5111115 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC118, lVar2, iA, z10, i44, mapH, composerS, i5111114 | (i5111115 & 57344) | (i5111115 & 458752) | (i5111115 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration1112;
                l<? super TextLayoutResult, l0> lVar1111 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar1111;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= 3072;
        i41 = i14 & 16384;
        if (i41 != 0) {
            i37 |= 8192;
        }
        i42 = i14 & 32768;
        if (i42 != 0) {
            if ((i13 & 458752) == 0) {
                if (composerS.k(lVar)) {
                    i43 = 131072;
                } else {
                    i43 = 65536;
                }
                i37 |= i43;
            }
            if ((i13 & 3670016) != 0) {
                if ((i14 & 65536) == 0) {
                    i48 = 524288;
                } else {
                    i48 = 524288;
                }
                i37 |= i48;
            }
            if (i41 != 16384) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC119 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1113 = textDecoration2;
                int i5111116 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i5111117 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC119, lVar2, iA, z10, i44, mapH, composerS, i5111116 | (i5111117 & 57344) | (i5111117 & 458752) | (i5111117 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration1113;
                l<? super TextLayoutResult, l0> lVar1112 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar1112;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i49 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i44 = Integer.MAX_VALUE;
                    } else {
                        i44 = i11;
                    }
                    if (i41 != 0) {
                        mapH = s0.h();
                        i37 &= -57345;
                    } else {
                        mapH = map;
                    }
                    if (i42 != 0) {
                        lVar2 = TextKt$Text$3.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 65536) != 0) {
                        i45 = i37 & (-3670017);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i45 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557618192);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC1110 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1114 = textDecoration2;
                int i5111118 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
                int i5111119 = i45 << 9;
                BasicTextKt.a(text, modifier2, textStyleC1110, lVar2, iA, z10, i44, mapH, composerS, i5111118 | (i5111119 & 57344) | (i5111119 & 458752) | (i5111119 & 3670016), 0);
                modifier3 = modifier2;
                z11 = z10;
                textAlign3 = textAlign2;
                fontStyle3 = fontStyle2;
                fontFamily3 = fontFamily2;
                map2 = mapH;
                textDecoration4 = textDecoration1114;
                l<? super TextLayoutResult, l0> lVar1113 = lVar2;
                i46 = iA;
                j14 = jA;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                lVar3 = lVar1113;
                fontWeight3 = fontWeight2;
                i47 = i44;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        if ((i13 & 3670016) != 0) {
            if ((i14 & 65536) == 0) {
                i48 = 524288;
            } else {
                i48 = 524288;
            }
            i37 |= i48;
        }
        if (i41 != 16384) {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i49 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i44 = Integer.MAX_VALUE;
                } else {
                    i44 = i11;
                }
                if (i41 != 0) {
                    mapH = s0.h();
                    i37 &= -57345;
                } else {
                    mapH = map;
                }
                if (i42 != 0) {
                    lVar2 = TextKt$Text$3.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 65536) != 0) {
                    i45 = i37 & (-3670017);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i45 = i37;
                    textStyle2 = textStyle;
                }
            } else {
                if (i49 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i44 = Integer.MAX_VALUE;
                } else {
                    i44 = i11;
                }
                if (i41 != 0) {
                    mapH = s0.h();
                    i37 &= -57345;
                } else {
                    mapH = map;
                }
                if (i42 != 0) {
                    lVar2 = TextKt$Text$3.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 65536) != 0) {
                    i45 = i37 & (-3670017);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i45 = i37;
                    textStyle2 = textStyle;
                }
            }
            composerS.A();
            composerS.G(1557618192);
            companion = Color.Companion;
            if (jF != companion.f()) {
                j13 = jF;
            } else {
                jG = textStyle2.g();
                if (jG == companion.f()) {
                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                }
                j13 = jG;
            }
            composerS.Q();
            TextStyle textStyleC1111 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
            TextDecoration textDecoration1115 = textDecoration2;
            int i51111110 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
            int i51111111 = i45 << 9;
            BasicTextKt.a(text, modifier2, textStyleC1111, lVar2, iA, z10, i44, mapH, composerS, i51111110 | (i51111111 & 57344) | (i51111111 & 458752) | (i51111111 & 3670016), 0);
            modifier3 = modifier2;
            z11 = z10;
            textAlign3 = textAlign2;
            fontStyle3 = fontStyle2;
            fontFamily3 = fontFamily2;
            map2 = mapH;
            textDecoration4 = textDecoration1115;
            l<? super TextLayoutResult, l0> lVar1114 = lVar2;
            i46 = iA;
            j14 = jA;
            j15 = jA3;
            j16 = jF;
            textStyle3 = textStyle2;
            lVar3 = lVar1114;
            fontWeight3 = fontWeight2;
            i47 = i44;
            j17 = jA2;
        } else {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i49 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i44 = Integer.MAX_VALUE;
                } else {
                    i44 = i11;
                }
                if (i41 != 0) {
                    mapH = s0.h();
                    i37 &= -57345;
                } else {
                    mapH = map;
                }
                if (i42 != 0) {
                    lVar2 = TextKt$Text$3.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 65536) != 0) {
                    i45 = i37 & (-3670017);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i45 = i37;
                    textStyle2 = textStyle;
                }
            } else {
                if (i49 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i44 = Integer.MAX_VALUE;
                } else {
                    i44 = i11;
                }
                if (i41 != 0) {
                    mapH = s0.h();
                    i37 &= -57345;
                } else {
                    mapH = map;
                }
                if (i42 != 0) {
                    lVar2 = TextKt$Text$3.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 65536) != 0) {
                    i45 = i37 & (-3670017);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i45 = i37;
                    textStyle2 = textStyle;
                }
            }
            composerS.A();
            composerS.G(1557618192);
            companion = Color.Companion;
            if (jF != companion.f()) {
                j13 = jF;
            } else {
                jG = textStyle2.g();
                if (jG == companion.f()) {
                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                }
                j13 = jG;
            }
            composerS.Q();
            TextStyle textStyleC1112 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
            TextDecoration textDecoration1116 = textDecoration2;
            int i51111112 = ((i45 >> 6) & 7168) | (i15 & 14) | 16777216 | (i15 & 112);
            int i51111113 = i45 << 9;
            BasicTextKt.a(text, modifier2, textStyleC1112, lVar2, iA, z10, i44, mapH, composerS, i51111112 | (i51111113 & 57344) | (i51111113 & 458752) | (i51111113 & 3670016), 0);
            modifier3 = modifier2;
            z11 = z10;
            textAlign3 = textAlign2;
            fontStyle3 = fontStyle2;
            fontFamily3 = fontFamily2;
            map2 = mapH;
            textDecoration4 = textDecoration1116;
            l<? super TextLayoutResult, l0> lVar1115 = lVar2;
            i46 = iA;
            j14 = jA;
            j15 = jA3;
            j16 = jF;
            textStyle3 = textStyle2;
            lVar3 = lVar1115;
            fontWeight3 = fontWeight2;
            i47 = i44;
            j17 = jA2;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextKt$Text$4(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i46, z11, i47, map2, lVar3, textStyle3, i12, i13, i14));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0140  */
    /* JADX WARN: Code duplicated, block: B:102:0x0143  */
    /* JADX WARN: Code duplicated, block: B:106:0x014b  */
    /* JADX WARN: Code duplicated, block: B:107:0x0150  */
    /* JADX WARN: Code duplicated, block: B:109:0x0156  */
    /* JADX WARN: Code duplicated, block: B:111:0x015c  */
    /* JADX WARN: Code duplicated, block: B:112:0x015f  */
    /* JADX WARN: Code duplicated, block: B:114:0x0164  */
    /* JADX WARN: Code duplicated, block: B:117:0x016a  */
    /* JADX WARN: Code duplicated, block: B:119:0x0171  */
    /* JADX WARN: Code duplicated, block: B:121:0x0177  */
    /* JADX WARN: Code duplicated, block: B:123:0x017d  */
    /* JADX WARN: Code duplicated, block: B:124:0x0180  */
    /* JADX WARN: Code duplicated, block: B:128:0x0189  */
    /* JADX WARN: Code duplicated, block: B:130:0x018e  */
    /* JADX WARN: Code duplicated, block: B:132:0x0192  */
    /* JADX WARN: Code duplicated, block: B:134:0x019a  */
    /* JADX WARN: Code duplicated, block: B:135:0x019d  */
    /* JADX WARN: Code duplicated, block: B:139:0x01a5  */
    /* JADX WARN: Code duplicated, block: B:141:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:143:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:149:0x01be  */
    /* JADX WARN: Code duplicated, block: B:151:0x01c5  */
    /* JADX WARN: Code duplicated, block: B:153:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:155:0x01d3  */
    /* JADX WARN: Code duplicated, block: B:159:0x01de  */
    /* JADX WARN: Code duplicated, block: B:161:0x01e4  */
    /* JADX WARN: Code duplicated, block: B:164:0x01ed  */
    /* JADX WARN: Code duplicated, block: B:166:0x01f2  */
    /* JADX WARN: Code duplicated, block: B:169:0x01fe  */
    /* JADX WARN: Code duplicated, block: B:175:0x0231  */
    /* JADX WARN: Code duplicated, block: B:177:0x0238  */
    /* JADX WARN: Code duplicated, block: B:184:0x0266 A[PHI: r1 r3 r5 r6 r7 r8 r9 r10 r11 r12 r15 r18 r20 r21 r24
      0x0266: PHI (r1v16 androidx.compose.ui.text.style.TextDecoration) = (r1v3 androidx.compose.ui.text.style.TextDecoration), (r1v18 androidx.compose.ui.text.style.TextDecoration) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r3v11 long) = (r3v6 long), (r3v12 long) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r5v6 androidx.compose.ui.Modifier) = (r5v2 androidx.compose.ui.Modifier), (r5v7 androidx.compose.ui.Modifier) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r6v9 boolean) = (r6v6 boolean), (r6v10 boolean) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r7v14 int) = (r7v9 int), (r7v16 int) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r8v10 int) = (r8v5 int), (r8v11 int) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r9v12 androidx.compose.ui.text.style.TextAlign) = (r9v6 androidx.compose.ui.text.style.TextAlign), (r9v13 androidx.compose.ui.text.style.TextAlign) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r10v9 int) = (r10v5 int), (r10v10 int) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r11v12 androidx.compose.ui.text.font.FontStyle) = (r11v9 androidx.compose.ui.text.font.FontStyle), (r11v14 androidx.compose.ui.text.font.FontStyle) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r12v8 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>) = 
      (r12v3 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>)
      (r12v9 e8.l<? super androidx.compose.ui.text.TextLayoutResult, w7.l0>)
     binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r15v7 long) = (r15v3 long), (r15v8 long) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r18v9 androidx.compose.ui.text.font.FontWeight) = (r18v5 androidx.compose.ui.text.font.FontWeight), (r18v10 androidx.compose.ui.text.font.FontWeight) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r20v10 androidx.compose.ui.text.font.FontFamily) = (r20v6 androidx.compose.ui.text.font.FontFamily), (r20v11 androidx.compose.ui.text.font.FontFamily) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r21v8 long) = (r21v4 long), (r21v9 long) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]
      0x0266: PHI (r24v8 long) = (r24v5 long), (r24v9 long) binds: [B:229:0x02e3, B:183:0x024a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:185:0x026c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:186:0x026e  */
    /* JADX WARN: Code duplicated, block: B:187:0x0271  */
    /* JADX WARN: Code duplicated, block: B:189:0x0275  */
    /* JADX WARN: Code duplicated, block: B:190:0x027c  */
    /* JADX WARN: Code duplicated, block: B:192:0x0280  */
    /* JADX WARN: Code duplicated, block: B:193:0x0287  */
    /* JADX WARN: Code duplicated, block: B:196:0x028c  */
    /* JADX WARN: Code duplicated, block: B:197:0x028e  */
    /* JADX WARN: Code duplicated, block: B:199:0x0292  */
    /* JADX WARN: Code duplicated, block: B:200:0x0295  */
    /* JADX WARN: Code duplicated, block: B:202:0x0299  */
    /* JADX WARN: Code duplicated, block: B:203:0x029c  */
    /* JADX WARN: Code duplicated, block: B:205:0x02a0  */
    /* JADX WARN: Code duplicated, block: B:206:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:208:0x02ab  */
    /* JADX WARN: Code duplicated, block: B:209:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:212:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:214:0x02b6  */
    /* JADX WARN: Code duplicated, block: B:215:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:217:0x02c1  */
    /* JADX WARN: Code duplicated, block: B:218:0x02c8  */
    /* JADX WARN: Code duplicated, block: B:220:0x02cc  */
    /* JADX WARN: Code duplicated, block: B:221:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:223:0x02d2  */
    /* JADX WARN: Code duplicated, block: B:224:0x02d6  */
    /* JADX WARN: Code duplicated, block: B:226:0x02da  */
    /* JADX WARN: Code duplicated, block: B:227:0x02dd  */
    /* JADX WARN: Code duplicated, block: B:230:0x02e5  */
    /* JADX WARN: Code duplicated, block: B:233:0x030a  */
    /* JADX WARN: Code duplicated, block: B:234:0x030d  */
    /* JADX WARN: Code duplicated, block: B:237:0x031a  */
    /* JADX WARN: Code duplicated, block: B:243:0x03dd  */
    /* JADX WARN: Code duplicated, block: B:245:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x004d  */
    /* JADX WARN: Code duplicated, block: B:27:0x0052  */
    /* JADX WARN: Code duplicated, block: B:29:0x0058  */
    /* JADX WARN: Code duplicated, block: B:31:0x005e  */
    /* JADX WARN: Code duplicated, block: B:32:0x0061  */
    /* JADX WARN: Code duplicated, block: B:36:0x006d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0072  */
    /* JADX WARN: Code duplicated, block: B:39:0x0078  */
    /* JADX WARN: Code duplicated, block: B:41:0x007e  */
    /* JADX WARN: Code duplicated, block: B:42:0x0081  */
    /* JADX WARN: Code duplicated, block: B:46:0x0090  */
    /* JADX WARN: Code duplicated, block: B:47:0x0095  */
    /* JADX WARN: Code duplicated, block: B:49:0x009b  */
    /* JADX WARN: Code duplicated, block: B:51:0x00a1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:56:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:57:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:59:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:61:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:62:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00cc  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:69:0x00db  */
    /* JADX WARN: Code duplicated, block: B:71:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:76:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:79:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:81:0x0101  */
    /* JADX WARN: Code duplicated, block: B:82:0x0104  */
    /* JADX WARN: Code duplicated, block: B:86:0x010c  */
    /* JADX WARN: Code duplicated, block: B:87:0x0113  */
    /* JADX WARN: Code duplicated, block: B:89:0x011b  */
    /* JADX WARN: Code duplicated, block: B:91:0x0121  */
    /* JADX WARN: Code duplicated, block: B:92:0x0124  */
    /* JADX WARN: Code duplicated, block: B:96:0x012b  */
    /* JADX WARN: Code duplicated, block: B:97:0x0132  */
    /* JADX WARN: Code duplicated, block: B:99:0x013a  */
    @ComposableTarget
    @Composable
    public static final void c(@NotNull String text, @Nullable Modifier modifier, long j6, long j10, @Nullable FontStyle fontStyle, @Nullable FontWeight fontWeight, @Nullable FontFamily fontFamily, long j11, @Nullable TextDecoration textDecoration, @Nullable TextAlign textAlign, long j12, int i10, boolean z6, int i11, @Nullable l<? super TextLayoutResult, l0> lVar, @Nullable TextStyle textStyle, @Nullable Composer composer, int i12, int i13, int i14) {
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
        int i40;
        int i41;
        Modifier modifier2;
        long jF;
        long jA;
        FontStyle fontStyle2;
        FontWeight fontWeight2;
        FontFamily fontFamily2;
        long jA2;
        TextDecoration textDecoration2;
        TextAlign textAlign2;
        long jA3;
        int iA;
        boolean z10;
        int i42;
        l<? super TextLayoutResult, l0> lVar2;
        TextDecoration textDecoration3;
        int i43;
        TextStyle textStyle2;
        Color.Companion companion;
        long jG;
        long j13;
        Modifier modifier3;
        int i44;
        TextAlign textAlign3;
        int i45;
        FontWeight fontWeight3;
        FontFamily fontFamily3;
        boolean z11;
        l<? super TextLayoutResult, l0> lVar3;
        long j14;
        TextDecoration textDecoration4;
        long j15;
        long j16;
        TextStyle textStyle3;
        FontStyle fontStyle3;
        long j17;
        ScopeUpdateScope scopeUpdateScopeU;
        int i46;
        t.j(text, "text");
        Composer composerS = composer.s(-366126944);
        if ((i14 & 1) != 0) {
            i15 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            i15 = (composerS.k(text) ? 4 : 2) | i12;
        } else {
            i15 = i12;
        }
        int i47 = i14 & 2;
        if (i47 == 0) {
            if ((i12 & 112) == 0) {
                i15 |= composerS.k(modifier) ? 32 : 16;
            }
            i16 = i14 & 4;
            if (i16 != 0) {
                i15 |= 384;
            } else if ((i12 & 896) == 0) {
                if (composerS.q(j6)) {
                    i17 = 256;
                } else {
                    i17 = 128;
                }
                i15 |= i17;
            }
            i18 = i14 & 8;
            if (i18 != 0) {
                i15 |= 3072;
            } else if ((i12 & 7168) == 0) {
                if (composerS.q(j10)) {
                    i19 = 2048;
                } else {
                    i19 = 1024;
                }
                i15 |= i19;
            }
            i20 = i14 & 16;
            if (i20 != 0) {
                i15 |= CpioConstants.C_ISBLK;
            } else if ((i12 & 57344) == 0) {
                if (composerS.k(fontStyle)) {
                    i21 = 16384;
                } else {
                    i21 = 8192;
                }
                i15 |= i21;
            }
            i22 = i14 & 32;
            if (i22 != 0) {
                i15 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            } else if ((i12 & 458752) == 0) {
                if (composerS.k(fontWeight)) {
                    i23 = 131072;
                } else {
                    i23 = 65536;
                }
                i15 |= i23;
            }
            i24 = i14 & 64;
            if (i24 != 0) {
                i15 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(fontFamily)) {
                    i25 = 1048576;
                } else {
                    i25 = 524288;
                }
                i15 |= i25;
            }
            i26 = i14 & 128;
            if (i26 != 0) {
                i15 |= 12582912;
            } else if ((i12 & 29360128) == 0) {
                if (composerS.q(j11)) {
                    i27 = 8388608;
                } else {
                    i27 = 4194304;
                }
                i15 |= i27;
            }
            i28 = i14 & 256;
            if (i28 != 0) {
                i15 |= 100663296;
            } else if ((i12 & 234881024) == 0) {
                if (composerS.k(textDecoration)) {
                    i29 = 67108864;
                } else {
                    i29 = 33554432;
                }
                i15 |= i29;
            }
            i30 = i14 & 512;
            if (i30 != 0) {
                i15 |= 805306368;
            } else if ((i12 & 1879048192) == 0) {
                if (composerS.k(textAlign)) {
                    i31 = 536870912;
                } else {
                    i31 = 268435456;
                }
                i15 |= i31;
            }
            i32 = i14 & 1024;
            if (i32 != 0) {
                i33 = i13 | 6;
            } else if ((i13 & 14) == 0) {
                if (composerS.q(j12)) {
                    i34 = 4;
                } else {
                    i34 = 2;
                }
                i33 = i13 | i34;
            } else {
                i33 = i13;
            }
            i35 = i14 & 2048;
            if (i35 != 0) {
                i33 |= 48;
            } else if ((i13 & 112) == 0) {
                if (composerS.p(i10)) {
                    i36 = 32;
                } else {
                    i36 = 16;
                }
                i33 |= i36;
            }
            i37 = i33;
            i38 = i14 & 4096;
            if (i38 != 0) {
                if ((i13 & 896) == 0) {
                    if (composerS.m(z6)) {
                        i39 = 256;
                    } else {
                        i39 = 128;
                    }
                    i37 |= i39;
                }
                i40 = i14 & 8192;
                if (i40 != 0) {
                    if ((i13 & 7168) == 0) {
                        i37 |= composerS.p(i11) ? 2048 : 1024;
                    }
                    i41 = i14 & 16384;
                    if (i41 != 0) {
                        if ((i13 & 57344) == 0) {
                            i37 |= composerS.k(lVar) ? 16384 : 8192;
                        }
                        if ((i13 & 458752) != 0) {
                            if ((i14 & 32768) == 0 || !composerS.k(textStyle)) {
                                i46 = 65536;
                            } else {
                                i46 = 131072;
                            }
                            i37 |= i46;
                        }
                        if ((i15 & 1533916891) != 306783378 && (374491 & i37) == 74898 && composerS.b()) {
                            composerS.g();
                            modifier3 = modifier;
                            j16 = j6;
                            j14 = j10;
                            fontStyle3 = fontStyle;
                            fontWeight3 = fontWeight;
                            fontFamily3 = fontFamily;
                            j17 = j11;
                            textDecoration4 = textDecoration;
                            textAlign3 = textAlign;
                            j15 = j12;
                            i44 = i10;
                            z11 = z6;
                            i45 = i11;
                            lVar3 = lVar;
                            textStyle3 = textStyle;
                        } else {
                            composerS.J();
                            if ((i12 & 1) != 0 || composerS.h()) {
                                if (i47 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i16 != 0) {
                                    jF = Color.Companion.f();
                                } else {
                                    jF = j6;
                                }
                                if (i18 != 0) {
                                    jA = TextUnit.Companion.a();
                                } else {
                                    jA = j10;
                                }
                                if (i20 != 0) {
                                    fontStyle2 = null;
                                } else {
                                    fontStyle2 = fontStyle;
                                }
                                if (i22 != 0) {
                                    fontWeight2 = null;
                                } else {
                                    fontWeight2 = fontWeight;
                                }
                                if (i24 != 0) {
                                    fontFamily2 = null;
                                } else {
                                    fontFamily2 = fontFamily;
                                }
                                if (i26 != 0) {
                                    jA2 = TextUnit.Companion.a();
                                } else {
                                    jA2 = j11;
                                }
                                if (i28 != 0) {
                                    textDecoration2 = null;
                                } else {
                                    textDecoration2 = textDecoration;
                                }
                                textAlign2 = i30 == 0 ? textAlign : null;
                                if (i32 != 0) {
                                    jA3 = TextUnit.Companion.a();
                                } else {
                                    jA3 = j12;
                                }
                                if (i35 != 0) {
                                    iA = TextOverflow.Companion.a();
                                } else {
                                    iA = i10;
                                }
                                if (i38 != 0) {
                                    z10 = true;
                                } else {
                                    z10 = z6;
                                }
                                if (i40 != 0) {
                                    i42 = Integer.MAX_VALUE;
                                } else {
                                    i42 = i11;
                                }
                                if (i41 != 0) {
                                    lVar2 = TextKt$Text$1.INSTANCE;
                                } else {
                                    lVar2 = lVar;
                                }
                                textDecoration3 = textDecoration2;
                                if ((i14 & 32768) != 0) {
                                    i43 = i37 & (-458753);
                                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                    textDecoration2 = textDecoration3;
                                }
                                composerS.A();
                                composerS.G(1557613088);
                                companion = Color.Companion;
                                if (jF != companion.f()) {
                                    j13 = jF;
                                } else {
                                    jG = textStyle2.g();
                                    if (jG == companion.f()) {
                                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                                    }
                                    j13 = jG;
                                }
                                composerS.Q();
                                TextStyle textStyleC = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                                TextDecoration textDecoration5 = textDecoration2;
                                int i48 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                                int i49 = i43 << 9;
                                BasicTextKt.b(text, modifier2, textStyleC, lVar2, iA, z10, i42, composerS, i48 | (i49 & 57344) | (i49 & 458752) | (i49 & 3670016), 0);
                                modifier3 = modifier2;
                                i44 = iA;
                                textAlign3 = textAlign2;
                                i45 = i42;
                                fontWeight3 = fontWeight2;
                                fontFamily3 = fontFamily2;
                                z11 = z10;
                                lVar3 = lVar2;
                                j14 = jA;
                                textDecoration4 = textDecoration5;
                                j15 = jA3;
                                j16 = jF;
                                textStyle3 = textStyle2;
                                fontStyle3 = fontStyle2;
                                j17 = jA2;
                            } else {
                                composerS.g();
                                if ((i14 & 32768) != 0) {
                                    i37 &= -458753;
                                }
                                modifier2 = modifier;
                                jF = j6;
                                jA = j10;
                                fontStyle2 = fontStyle;
                                fontWeight2 = fontWeight;
                                fontFamily2 = fontFamily;
                                jA2 = j11;
                                textDecoration2 = textDecoration;
                                textAlign2 = textAlign;
                                jA3 = j12;
                                iA = i10;
                                z10 = z6;
                                i42 = i11;
                                lVar2 = lVar;
                            }
                            i43 = i37;
                            textStyle2 = textStyle;
                            composerS.A();
                            composerS.G(1557613088);
                            companion = Color.Companion;
                            if (jF != companion.f()) {
                                j13 = jF;
                            } else {
                                jG = textStyle2.g();
                                if (jG == companion.f()) {
                                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                                }
                                j13 = jG;
                            }
                            composerS.Q();
                            TextStyle textStyleC2 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                            TextDecoration textDecoration6 = textDecoration2;
                            int i410 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                            int i411 = i43 << 9;
                            BasicTextKt.b(text, modifier2, textStyleC2, lVar2, iA, z10, i42, composerS, i410 | (i411 & 57344) | (i411 & 458752) | (i411 & 3670016), 0);
                            modifier3 = modifier2;
                            i44 = iA;
                            textAlign3 = textAlign2;
                            i45 = i42;
                            fontWeight3 = fontWeight2;
                            fontFamily3 = fontFamily2;
                            z11 = z10;
                            lVar3 = lVar2;
                            j14 = jA;
                            textDecoration4 = textDecoration6;
                            j15 = jA3;
                            j16 = jF;
                            textStyle3 = textStyle2;
                            fontStyle3 = fontStyle2;
                            j17 = jA2;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
                    }
                    i37 |= CpioConstants.C_ISBLK;
                    if ((i13 & 458752) != 0) {
                        if ((i14 & 32768) == 0) {
                            i46 = 65536;
                        } else {
                            i46 = 65536;
                        }
                        i37 |= i46;
                    }
                    if ((i15 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC3 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration7 = textDecoration2;
                        int i412 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i413 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC3, lVar2, iA, z10, i42, composerS, i412 | (i413 & 57344) | (i413 & 458752) | (i413 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration7;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC4 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration8 = textDecoration2;
                        int i414 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i415 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC4, lVar2, iA, z10, i42, composerS, i414 | (i415 & 57344) | (i415 & 458752) | (i415 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration8;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= 3072;
                i41 = i14 & 16384;
                if (i41 != 0) {
                    if ((i13 & 57344) == 0) {
                        i37 |= composerS.k(lVar) ? 16384 : 8192;
                    }
                    if ((i13 & 458752) != 0) {
                        if ((i14 & 32768) == 0) {
                            i46 = 65536;
                        } else {
                            i46 = 65536;
                        }
                        i37 |= i46;
                    }
                    if ((i15 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC5 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration9 = textDecoration2;
                        int i416 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i417 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC5, lVar2, iA, z10, i42, composerS, i416 | (i417 & 57344) | (i417 & 458752) | (i417 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration9;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC6 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration10 = textDecoration2;
                        int i418 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i419 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC6, lVar2, iA, z10, i42, composerS, i418 | (i419 & 57344) | (i419 & 458752) | (i419 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration10;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= CpioConstants.C_ISBLK;
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC7 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration11 = textDecoration2;
                    int i4110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4111 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC7, lVar2, iA, z10, i42, composerS, i4110 | (i4111 & 57344) | (i4111 & 458752) | (i4111 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration11;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC8 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration12 = textDecoration2;
                    int i4112 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4113 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC8, lVar2, iA, z10, i42, composerS, i4112 | (i4113 & 57344) | (i4113 & 458752) | (i4113 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration12;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 384;
            i40 = i14 & 8192;
            if (i40 != 0) {
                if ((i13 & 7168) == 0) {
                    i37 |= composerS.p(i11) ? 2048 : 1024;
                }
                i41 = i14 & 16384;
                if (i41 != 0) {
                    if ((i13 & 57344) == 0) {
                        i37 |= composerS.k(lVar) ? 16384 : 8192;
                    }
                    if ((i13 & 458752) != 0) {
                        if ((i14 & 32768) == 0) {
                            i46 = 65536;
                        } else {
                            i46 = 65536;
                        }
                        i37 |= i46;
                    }
                    if ((i15 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC9 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration13 = textDecoration2;
                        int i4114 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i4115 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC9, lVar2, iA, z10, i42, composerS, i4114 | (i4115 & 57344) | (i4115 & 458752) | (i4115 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration13;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC10 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration14 = textDecoration2;
                        int i4116 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i4117 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC10, lVar2, iA, z10, i42, composerS, i4116 | (i4117 & 57344) | (i4117 & 458752) | (i4117 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration14;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= CpioConstants.C_ISBLK;
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC11 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration15 = textDecoration2;
                    int i4118 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4119 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC11, lVar2, iA, z10, i42, composerS, i4118 | (i4119 & 57344) | (i4119 & 458752) | (i4119 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration15;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC12 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration16 = textDecoration2;
                    int i41110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i41111 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC12, lVar2, iA, z10, i42, composerS, i41110 | (i41111 & 57344) | (i41111 & 458752) | (i41111 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration16;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 3072;
            i41 = i14 & 16384;
            if (i41 != 0) {
                if ((i13 & 57344) == 0) {
                    i37 |= composerS.k(lVar) ? 16384 : 8192;
                }
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC13 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration17 = textDecoration2;
                    int i41112 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i41113 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC13, lVar2, iA, z10, i42, composerS, i41112 | (i41113 & 57344) | (i41113 & 458752) | (i41113 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration17;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC14 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration18 = textDecoration2;
                    int i41114 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i41115 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC14, lVar2, iA, z10, i42, composerS, i41114 | (i41115 & 57344) | (i41115 & 458752) | (i41115 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration18;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= CpioConstants.C_ISBLK;
            if ((i13 & 458752) != 0) {
                if ((i14 & 32768) == 0) {
                    i46 = 65536;
                } else {
                    i46 = 65536;
                }
                i37 |= i46;
            }
            if ((i15 & 1533916891) != 306783378) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC15 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration19 = textDecoration2;
                int i41116 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41117 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC15, lVar2, iA, z10, i42, composerS, i41116 | (i41117 & 57344) | (i41117 & 458752) | (i41117 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration19;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC16 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration110 = textDecoration2;
                int i41118 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41119 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC16, lVar2, iA, z10, i42, composerS, i41118 | (i41119 & 57344) | (i41119 & 458752) | (i41119 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration110;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
        }
        i15 |= 48;
        i16 = i14 & 4;
        if (i16 != 0) {
            i15 |= 384;
        } else if ((i12 & 896) == 0) {
            if (composerS.q(j6)) {
                i17 = 256;
            } else {
                i17 = 128;
            }
            i15 |= i17;
        }
        i18 = i14 & 8;
        if (i18 != 0) {
            i15 |= 3072;
        } else if ((i12 & 7168) == 0) {
            if (composerS.q(j10)) {
                i19 = 2048;
            } else {
                i19 = 1024;
            }
            i15 |= i19;
        }
        i20 = i14 & 16;
        if (i20 != 0) {
            i15 |= CpioConstants.C_ISBLK;
        } else if ((i12 & 57344) == 0) {
            if (composerS.k(fontStyle)) {
                i21 = 16384;
            } else {
                i21 = 8192;
            }
            i15 |= i21;
        }
        i22 = i14 & 32;
        if (i22 != 0) {
            i15 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        } else if ((i12 & 458752) == 0) {
            if (composerS.k(fontWeight)) {
                i23 = 131072;
            } else {
                i23 = 65536;
            }
            i15 |= i23;
        }
        i24 = i14 & 64;
        if (i24 != 0) {
            i15 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.k(fontFamily)) {
                i25 = 1048576;
            } else {
                i25 = 524288;
            }
            i15 |= i25;
        }
        i26 = i14 & 128;
        if (i26 != 0) {
            i15 |= 12582912;
        } else if ((i12 & 29360128) == 0) {
            if (composerS.q(j11)) {
                i27 = 8388608;
            } else {
                i27 = 4194304;
            }
            i15 |= i27;
        }
        i28 = i14 & 256;
        if (i28 != 0) {
            i15 |= 100663296;
        } else if ((i12 & 234881024) == 0) {
            if (composerS.k(textDecoration)) {
                i29 = 67108864;
            } else {
                i29 = 33554432;
            }
            i15 |= i29;
        }
        i30 = i14 & 512;
        if (i30 != 0) {
            i15 |= 805306368;
        } else if ((i12 & 1879048192) == 0) {
            if (composerS.k(textAlign)) {
                i31 = 536870912;
            } else {
                i31 = 268435456;
            }
            i15 |= i31;
        }
        i32 = i14 & 1024;
        if (i32 != 0) {
            i33 = i13 | 6;
        } else if ((i13 & 14) == 0) {
            if (composerS.q(j12)) {
                i34 = 4;
            } else {
                i34 = 2;
            }
            i33 = i13 | i34;
        } else {
            i33 = i13;
        }
        i35 = i14 & 2048;
        if (i35 != 0) {
            i33 |= 48;
        } else if ((i13 & 112) == 0) {
            if (composerS.p(i10)) {
                i36 = 32;
            } else {
                i36 = 16;
            }
            i33 |= i36;
        }
        i37 = i33;
        i38 = i14 & 4096;
        if (i38 != 0) {
            if ((i13 & 896) == 0) {
                if (composerS.m(z6)) {
                    i39 = 256;
                } else {
                    i39 = 128;
                }
                i37 |= i39;
            }
            i40 = i14 & 8192;
            if (i40 != 0) {
                if ((i13 & 7168) == 0) {
                    i37 |= composerS.p(i11) ? 2048 : 1024;
                }
                i41 = i14 & 16384;
                if (i41 != 0) {
                    if ((i13 & 57344) == 0) {
                        i37 |= composerS.k(lVar) ? 16384 : 8192;
                    }
                    if ((i13 & 458752) != 0) {
                        if ((i14 & 32768) == 0) {
                            i46 = 65536;
                        } else {
                            i46 = 65536;
                        }
                        i37 |= i46;
                    }
                    if ((i15 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC17 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration111 = textDecoration2;
                        int i411110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i411111 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC17, lVar2, iA, z10, i42, composerS, i411110 | (i411111 & 57344) | (i411111 & 458752) | (i411111 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration111;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    } else {
                        composerS.J();
                        if ((i12 & 1) != 0) {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        } else {
                            if (i47 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i16 != 0) {
                                jF = Color.Companion.f();
                            } else {
                                jF = j6;
                            }
                            if (i18 != 0) {
                                jA = TextUnit.Companion.a();
                            } else {
                                jA = j10;
                            }
                            if (i20 != 0) {
                                fontStyle2 = null;
                            } else {
                                fontStyle2 = fontStyle;
                            }
                            if (i22 != 0) {
                                fontWeight2 = null;
                            } else {
                                fontWeight2 = fontWeight;
                            }
                            if (i24 != 0) {
                                fontFamily2 = null;
                            } else {
                                fontFamily2 = fontFamily;
                            }
                            if (i26 != 0) {
                                jA2 = TextUnit.Companion.a();
                            } else {
                                jA2 = j11;
                            }
                            if (i28 != 0) {
                                textDecoration2 = null;
                            } else {
                                textDecoration2 = textDecoration;
                            }
                            if (i30 == 0) {
                            }
                            if (i32 != 0) {
                                jA3 = TextUnit.Companion.a();
                            } else {
                                jA3 = j12;
                            }
                            if (i35 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i10;
                            }
                            if (i38 != 0) {
                                z10 = true;
                            } else {
                                z10 = z6;
                            }
                            if (i40 != 0) {
                                i42 = Integer.MAX_VALUE;
                            } else {
                                i42 = i11;
                            }
                            if (i41 != 0) {
                                lVar2 = TextKt$Text$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            textDecoration3 = textDecoration2;
                            if ((i14 & 32768) != 0) {
                                i43 = i37 & (-458753);
                                textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                                textDecoration2 = textDecoration3;
                            } else {
                                i43 = i37;
                                textStyle2 = textStyle;
                            }
                        }
                        composerS.A();
                        composerS.G(1557613088);
                        companion = Color.Companion;
                        if (jF != companion.f()) {
                            j13 = jF;
                        } else {
                            jG = textStyle2.g();
                            if (jG == companion.f()) {
                                jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                            }
                            j13 = jG;
                        }
                        composerS.Q();
                        TextStyle textStyleC18 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                        TextDecoration textDecoration112 = textDecoration2;
                        int i411112 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                        int i411113 = i43 << 9;
                        BasicTextKt.b(text, modifier2, textStyleC18, lVar2, iA, z10, i42, composerS, i411112 | (i411113 & 57344) | (i411113 & 458752) | (i411113 & 3670016), 0);
                        modifier3 = modifier2;
                        i44 = iA;
                        textAlign3 = textAlign2;
                        i45 = i42;
                        fontWeight3 = fontWeight2;
                        fontFamily3 = fontFamily2;
                        z11 = z10;
                        lVar3 = lVar2;
                        j14 = jA;
                        textDecoration4 = textDecoration112;
                        j15 = jA3;
                        j16 = jF;
                        textStyle3 = textStyle2;
                        fontStyle3 = fontStyle2;
                        j17 = jA2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
                }
                i37 |= CpioConstants.C_ISBLK;
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC19 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration113 = textDecoration2;
                    int i411114 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i411115 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC19, lVar2, iA, z10, i42, composerS, i411114 | (i411115 & 57344) | (i411115 & 458752) | (i411115 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration113;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC110 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration114 = textDecoration2;
                    int i411116 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i411117 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC110, lVar2, iA, z10, i42, composerS, i411116 | (i411117 & 57344) | (i411117 & 458752) | (i411117 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration114;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= 3072;
            i41 = i14 & 16384;
            if (i41 != 0) {
                if ((i13 & 57344) == 0) {
                    i37 |= composerS.k(lVar) ? 16384 : 8192;
                }
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC111 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration115 = textDecoration2;
                    int i411118 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i411119 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC111, lVar2, iA, z10, i42, composerS, i411118 | (i411119 & 57344) | (i411119 & 458752) | (i411119 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration115;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC112 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration116 = textDecoration2;
                    int i4111110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4111111 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC112, lVar2, iA, z10, i42, composerS, i4111110 | (i4111111 & 57344) | (i4111111 & 458752) | (i4111111 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration116;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= CpioConstants.C_ISBLK;
            if ((i13 & 458752) != 0) {
                if ((i14 & 32768) == 0) {
                    i46 = 65536;
                } else {
                    i46 = 65536;
                }
                i37 |= i46;
            }
            if ((i15 & 1533916891) != 306783378) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC113 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration117 = textDecoration2;
                int i4111112 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i4111113 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC113, lVar2, iA, z10, i42, composerS, i4111112 | (i4111113 & 57344) | (i4111113 & 458752) | (i4111113 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration117;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC114 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration118 = textDecoration2;
                int i4111114 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i4111115 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC114, lVar2, iA, z10, i42, composerS, i4111114 | (i4111115 & 57344) | (i4111115 & 458752) | (i4111115 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration118;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= 384;
        i40 = i14 & 8192;
        if (i40 != 0) {
            if ((i13 & 7168) == 0) {
                i37 |= composerS.p(i11) ? 2048 : 1024;
            }
            i41 = i14 & 16384;
            if (i41 != 0) {
                if ((i13 & 57344) == 0) {
                    i37 |= composerS.k(lVar) ? 16384 : 8192;
                }
                if ((i13 & 458752) != 0) {
                    if ((i14 & 32768) == 0) {
                        i46 = 65536;
                    } else {
                        i46 = 65536;
                    }
                    i37 |= i46;
                }
                if ((i15 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC115 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration119 = textDecoration2;
                    int i4111116 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4111117 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC115, lVar2, iA, z10, i42, composerS, i4111116 | (i4111117 & 57344) | (i4111117 & 458752) | (i4111117 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration119;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                } else {
                    composerS.J();
                    if ((i12 & 1) != 0) {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    } else {
                        if (i47 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i16 != 0) {
                            jF = Color.Companion.f();
                        } else {
                            jF = j6;
                        }
                        if (i18 != 0) {
                            jA = TextUnit.Companion.a();
                        } else {
                            jA = j10;
                        }
                        if (i20 != 0) {
                            fontStyle2 = null;
                        } else {
                            fontStyle2 = fontStyle;
                        }
                        if (i22 != 0) {
                            fontWeight2 = null;
                        } else {
                            fontWeight2 = fontWeight;
                        }
                        if (i24 != 0) {
                            fontFamily2 = null;
                        } else {
                            fontFamily2 = fontFamily;
                        }
                        if (i26 != 0) {
                            jA2 = TextUnit.Companion.a();
                        } else {
                            jA2 = j11;
                        }
                        if (i28 != 0) {
                            textDecoration2 = null;
                        } else {
                            textDecoration2 = textDecoration;
                        }
                        if (i30 == 0) {
                        }
                        if (i32 != 0) {
                            jA3 = TextUnit.Companion.a();
                        } else {
                            jA3 = j12;
                        }
                        if (i35 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i10;
                        }
                        if (i38 != 0) {
                            z10 = true;
                        } else {
                            z10 = z6;
                        }
                        if (i40 != 0) {
                            i42 = Integer.MAX_VALUE;
                        } else {
                            i42 = i11;
                        }
                        if (i41 != 0) {
                            lVar2 = TextKt$Text$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        textDecoration3 = textDecoration2;
                        if ((i14 & 32768) != 0) {
                            i43 = i37 & (-458753);
                            textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                            textDecoration2 = textDecoration3;
                        } else {
                            i43 = i37;
                            textStyle2 = textStyle;
                        }
                    }
                    composerS.A();
                    composerS.G(1557613088);
                    companion = Color.Companion;
                    if (jF != companion.f()) {
                        j13 = jF;
                    } else {
                        jG = textStyle2.g();
                        if (jG == companion.f()) {
                            jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                        }
                        j13 = jG;
                    }
                    composerS.Q();
                    TextStyle textStyleC116 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                    TextDecoration textDecoration1110 = textDecoration2;
                    int i4111118 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                    int i4111119 = i43 << 9;
                    BasicTextKt.b(text, modifier2, textStyleC116, lVar2, iA, z10, i42, composerS, i4111118 | (i4111119 & 57344) | (i4111119 & 458752) | (i4111119 & 3670016), 0);
                    modifier3 = modifier2;
                    i44 = iA;
                    textAlign3 = textAlign2;
                    i45 = i42;
                    fontWeight3 = fontWeight2;
                    fontFamily3 = fontFamily2;
                    z11 = z10;
                    lVar3 = lVar2;
                    j14 = jA;
                    textDecoration4 = textDecoration1110;
                    j15 = jA3;
                    j16 = jF;
                    textStyle3 = textStyle2;
                    fontStyle3 = fontStyle2;
                    j17 = jA2;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
            }
            i37 |= CpioConstants.C_ISBLK;
            if ((i13 & 458752) != 0) {
                if ((i14 & 32768) == 0) {
                    i46 = 65536;
                } else {
                    i46 = 65536;
                }
                i37 |= i46;
            }
            if ((i15 & 1533916891) != 306783378) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC117 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1111 = textDecoration2;
                int i41111110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41111111 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC117, lVar2, iA, z10, i42, composerS, i41111110 | (i41111111 & 57344) | (i41111111 & 458752) | (i41111111 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration1111;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC118 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1112 = textDecoration2;
                int i41111112 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41111113 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC118, lVar2, iA, z10, i42, composerS, i41111112 | (i41111113 & 57344) | (i41111113 & 458752) | (i41111113 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration1112;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= 3072;
        i41 = i14 & 16384;
        if (i41 != 0) {
            if ((i13 & 57344) == 0) {
                i37 |= composerS.k(lVar) ? 16384 : 8192;
            }
            if ((i13 & 458752) != 0) {
                if ((i14 & 32768) == 0) {
                    i46 = 65536;
                } else {
                    i46 = 65536;
                }
                i37 |= i46;
            }
            if ((i15 & 1533916891) != 306783378) {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC119 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1113 = textDecoration2;
                int i41111114 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41111115 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC119, lVar2, iA, z10, i42, composerS, i41111114 | (i41111115 & 57344) | (i41111115 & 458752) | (i41111115 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration1113;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            } else {
                composerS.J();
                if ((i12 & 1) != 0) {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                } else {
                    if (i47 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i16 != 0) {
                        jF = Color.Companion.f();
                    } else {
                        jF = j6;
                    }
                    if (i18 != 0) {
                        jA = TextUnit.Companion.a();
                    } else {
                        jA = j10;
                    }
                    if (i20 != 0) {
                        fontStyle2 = null;
                    } else {
                        fontStyle2 = fontStyle;
                    }
                    if (i22 != 0) {
                        fontWeight2 = null;
                    } else {
                        fontWeight2 = fontWeight;
                    }
                    if (i24 != 0) {
                        fontFamily2 = null;
                    } else {
                        fontFamily2 = fontFamily;
                    }
                    if (i26 != 0) {
                        jA2 = TextUnit.Companion.a();
                    } else {
                        jA2 = j11;
                    }
                    if (i28 != 0) {
                        textDecoration2 = null;
                    } else {
                        textDecoration2 = textDecoration;
                    }
                    if (i30 == 0) {
                    }
                    if (i32 != 0) {
                        jA3 = TextUnit.Companion.a();
                    } else {
                        jA3 = j12;
                    }
                    if (i35 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i10;
                    }
                    if (i38 != 0) {
                        z10 = true;
                    } else {
                        z10 = z6;
                    }
                    if (i40 != 0) {
                        i42 = Integer.MAX_VALUE;
                    } else {
                        i42 = i11;
                    }
                    if (i41 != 0) {
                        lVar2 = TextKt$Text$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    textDecoration3 = textDecoration2;
                    if ((i14 & 32768) != 0) {
                        i43 = i37 & (-458753);
                        textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                        textDecoration2 = textDecoration3;
                    } else {
                        i43 = i37;
                        textStyle2 = textStyle;
                    }
                }
                composerS.A();
                composerS.G(1557613088);
                companion = Color.Companion;
                if (jF != companion.f()) {
                    j13 = jF;
                } else {
                    jG = textStyle2.g();
                    if (jG == companion.f()) {
                        jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                    }
                    j13 = jG;
                }
                composerS.Q();
                TextStyle textStyleC1110 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
                TextDecoration textDecoration1114 = textDecoration2;
                int i41111116 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
                int i41111117 = i43 << 9;
                BasicTextKt.b(text, modifier2, textStyleC1110, lVar2, iA, z10, i42, composerS, i41111116 | (i41111117 & 57344) | (i41111117 & 458752) | (i41111117 & 3670016), 0);
                modifier3 = modifier2;
                i44 = iA;
                textAlign3 = textAlign2;
                i45 = i42;
                fontWeight3 = fontWeight2;
                fontFamily3 = fontFamily2;
                z11 = z10;
                lVar3 = lVar2;
                j14 = jA;
                textDecoration4 = textDecoration1114;
                j15 = jA3;
                j16 = jF;
                textStyle3 = textStyle2;
                fontStyle3 = fontStyle2;
                j17 = jA2;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
        }
        i37 |= CpioConstants.C_ISBLK;
        if ((i13 & 458752) != 0) {
            if ((i14 & 32768) == 0) {
                i46 = 65536;
            } else {
                i46 = 65536;
            }
            i37 |= i46;
        }
        if ((i15 & 1533916891) != 306783378) {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i47 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i42 = Integer.MAX_VALUE;
                } else {
                    i42 = i11;
                }
                if (i41 != 0) {
                    lVar2 = TextKt$Text$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 32768) != 0) {
                    i43 = i37 & (-458753);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i43 = i37;
                    textStyle2 = textStyle;
                }
            } else {
                if (i47 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i42 = Integer.MAX_VALUE;
                } else {
                    i42 = i11;
                }
                if (i41 != 0) {
                    lVar2 = TextKt$Text$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 32768) != 0) {
                    i43 = i37 & (-458753);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i43 = i37;
                    textStyle2 = textStyle;
                }
            }
            composerS.A();
            composerS.G(1557613088);
            companion = Color.Companion;
            if (jF != companion.f()) {
                j13 = jF;
            } else {
                jG = textStyle2.g();
                if (jG == companion.f()) {
                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                }
                j13 = jG;
            }
            composerS.Q();
            TextStyle textStyleC1111 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
            TextDecoration textDecoration1115 = textDecoration2;
            int i41111118 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
            int i41111119 = i43 << 9;
            BasicTextKt.b(text, modifier2, textStyleC1111, lVar2, iA, z10, i42, composerS, i41111118 | (i41111119 & 57344) | (i41111119 & 458752) | (i41111119 & 3670016), 0);
            modifier3 = modifier2;
            i44 = iA;
            textAlign3 = textAlign2;
            i45 = i42;
            fontWeight3 = fontWeight2;
            fontFamily3 = fontFamily2;
            z11 = z10;
            lVar3 = lVar2;
            j14 = jA;
            textDecoration4 = textDecoration1115;
            j15 = jA3;
            j16 = jF;
            textStyle3 = textStyle2;
            fontStyle3 = fontStyle2;
            j17 = jA2;
        } else {
            composerS.J();
            if ((i12 & 1) != 0) {
                if (i47 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i42 = Integer.MAX_VALUE;
                } else {
                    i42 = i11;
                }
                if (i41 != 0) {
                    lVar2 = TextKt$Text$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 32768) != 0) {
                    i43 = i37 & (-458753);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i43 = i37;
                    textStyle2 = textStyle;
                }
            } else {
                if (i47 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i16 != 0) {
                    jF = Color.Companion.f();
                } else {
                    jF = j6;
                }
                if (i18 != 0) {
                    jA = TextUnit.Companion.a();
                } else {
                    jA = j10;
                }
                if (i20 != 0) {
                    fontStyle2 = null;
                } else {
                    fontStyle2 = fontStyle;
                }
                if (i22 != 0) {
                    fontWeight2 = null;
                } else {
                    fontWeight2 = fontWeight;
                }
                if (i24 != 0) {
                    fontFamily2 = null;
                } else {
                    fontFamily2 = fontFamily;
                }
                if (i26 != 0) {
                    jA2 = TextUnit.Companion.a();
                } else {
                    jA2 = j11;
                }
                if (i28 != 0) {
                    textDecoration2 = null;
                } else {
                    textDecoration2 = textDecoration;
                }
                if (i30 == 0) {
                }
                if (i32 != 0) {
                    jA3 = TextUnit.Companion.a();
                } else {
                    jA3 = j12;
                }
                if (i35 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i10;
                }
                if (i38 != 0) {
                    z10 = true;
                } else {
                    z10 = z6;
                }
                if (i40 != 0) {
                    i42 = Integer.MAX_VALUE;
                } else {
                    i42 = i11;
                }
                if (i41 != 0) {
                    lVar2 = TextKt$Text$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                textDecoration3 = textDecoration2;
                if ((i14 & 32768) != 0) {
                    i43 = i37 & (-458753);
                    textStyle2 = (TextStyle) composerS.x(LocalTextStyle);
                    textDecoration2 = textDecoration3;
                } else {
                    i43 = i37;
                    textStyle2 = textStyle;
                }
            }
            composerS.A();
            composerS.G(1557613088);
            companion = Color.Companion;
            if (jF != companion.f()) {
                j13 = jF;
            } else {
                jG = textStyle2.g();
                if (jG == companion.f()) {
                    jG = Color.l(((Color) composerS.x(ContentColorKt.a())).v(), ((Number) composerS.x(ContentAlphaKt.a())).floatValue(), 0.0f, 0.0f, 0.0f, 14, null);
                }
                j13 = jG;
            }
            composerS.Q();
            TextStyle textStyleC1112 = textStyle2.C(new TextStyle(j13, jA, fontWeight2, fontStyle2, (FontSynthesis) null, fontFamily2, (String) null, jA2, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, textDecoration2, (Shadow) null, textAlign2, (TextDirection) null, jA3, (TextIndent) null, 175952, (k) null));
            TextDecoration textDecoration1116 = textDecoration2;
            int i411111110 = ((i43 >> 3) & 7168) | (i15 & 14) | (i15 & 112);
            int i411111111 = i43 << 9;
            BasicTextKt.b(text, modifier2, textStyleC1112, lVar2, iA, z10, i42, composerS, i411111110 | (i411111111 & 57344) | (i411111111 & 458752) | (i411111111 & 3670016), 0);
            modifier3 = modifier2;
            i44 = iA;
            textAlign3 = textAlign2;
            i45 = i42;
            fontWeight3 = fontWeight2;
            fontFamily3 = fontFamily2;
            z11 = z10;
            lVar3 = lVar2;
            j14 = jA;
            textDecoration4 = textDecoration1116;
            j15 = jA3;
            j16 = jF;
            textStyle3 = textStyle2;
            fontStyle3 = fontStyle2;
            j17 = jA2;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextKt$Text$2(text, modifier3, j16, j14, fontStyle3, fontWeight3, fontFamily3, j17, textDecoration4, textAlign3, j15, i44, z11, i45, lVar3, textStyle3, i12, i13, i14));
    }

    @NotNull
    public static final ProvidableCompositionLocal<TextStyle> d() {
        return LocalTextStyle;
    }

    @Composable
    @ComposableInferredTarget
    public static final void a(@NotNull TextStyle value, @NotNull p<? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10) {
        int i11;
        t.j(value, "value");
        t.j(content, "content");
        Composer composerS = composer.s(1772272796);
        if ((i10 & 14) == 0) {
            i11 = (composerS.k(value) ? 4 : 2) | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            i11 |= composerS.k(content) ? 32 : 16;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else {
            ProvidableCompositionLocal<TextStyle> providableCompositionLocal = LocalTextStyle;
            CompositionLocalKt.b(new ProvidedValue[]{providableCompositionLocal.c(((TextStyle) composerS.x(providableCompositionLocal)).C(value))}, content, composerS, (i11 & 112) | 8);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new TextKt$ProvideTextStyle$1(value, content, i10));
    }
}
