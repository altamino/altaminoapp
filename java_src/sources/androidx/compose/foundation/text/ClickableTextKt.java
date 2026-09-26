package androidx.compose.foundation.text;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.TextOverflow;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class ClickableTextKt {
    /* JADX WARN: Code duplicated, block: B:100:0x012f  */
    /* JADX WARN: Code duplicated, block: B:101:0x0133  */
    /* JADX WARN: Code duplicated, block: B:103:0x0137  */
    /* JADX WARN: Code duplicated, block: B:104:0x0140  */
    /* JADX WARN: Code duplicated, block: B:106:0x0144  */
    /* JADX WARN: Code duplicated, block: B:107:0x014a  */
    /* JADX WARN: Code duplicated, block: B:109:0x014e  */
    /* JADX WARN: Code duplicated, block: B:110:0x0152  */
    /* JADX WARN: Code duplicated, block: B:113:0x0167  */
    /* JADX WARN: Code duplicated, block: B:116:0x018b  */
    /* JADX WARN: Code duplicated, block: B:118:0x0191  */
    /* JADX WARN: Code duplicated, block: B:121:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:123:0x01be  */
    /* JADX WARN: Code duplicated, block: B:128:0x020b  */
    /* JADX WARN: Code duplicated, block: B:130:? A[RETURN, SYNTHETIC] */
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
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:50:0x008f  */
    /* JADX WARN: Code duplicated, block: B:52:0x0093  */
    /* JADX WARN: Code duplicated, block: B:54:0x009b  */
    /* JADX WARN: Code duplicated, block: B:55:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a8  */
    /* JADX WARN: Code duplicated, block: B:60:0x00af  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:64:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:65:0x00be  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c8  */
    /* JADX WARN: Code duplicated, block: B:70:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:72:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:74:0x00db  */
    /* JADX WARN: Code duplicated, block: B:75:0x00de  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f5  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:89:0x0104  */
    /* JADX WARN: Code duplicated, block: B:93:0x0118 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:94:0x011a  */
    /* JADX WARN: Code duplicated, block: B:95:0x011e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0122  */
    /* JADX WARN: Code duplicated, block: B:98:0x012b  */
    @ComposableTarget
    @Composable
    public static final void a(@NotNull AnnotatedString text, @Nullable Modifier modifier, @Nullable TextStyle textStyle, boolean z6, int i10, int i11, @Nullable l<? super TextLayoutResult, l0> lVar, @NotNull l<? super Integer, l0> onClick, @Nullable Composer composer, int i12, int i13) {
        int i14;
        int i15;
        TextStyle textStyle2;
        int i16;
        int i17;
        boolean z10;
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
        Modifier modifier2;
        TextStyle textStyleA;
        boolean z11;
        int iA;
        int i28;
        l<? super TextLayoutResult, l0> lVar2;
        Object objH;
        Composer.Companion companion;
        MutableState mutableState;
        boolean zK;
        Object objH2;
        boolean zK2;
        Object objH3;
        int i29;
        Modifier modifier3;
        l<? super TextLayoutResult, l0> lVar3;
        TextStyle textStyle3;
        boolean z12;
        int i30;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(text, "text");
        t.j(onClick, "onClick");
        Composer composerS = composer.s(-246609449);
        if ((i13 & 1) != 0) {
            i14 = i12 | 6;
        } else if ((i12 & 14) == 0) {
            i14 = (composerS.k(text) ? 4 : 2) | i12;
        } else {
            i14 = i12;
        }
        int i31 = i13 & 2;
        if (i31 == 0) {
            if ((i12 & 112) == 0) {
                i14 |= composerS.k(modifier) ? 32 : 16;
            }
            i15 = i13 & 4;
            if (i15 != 0) {
                if ((i12 & 896) == 0) {
                    textStyle2 = textStyle;
                    if (composerS.k(textStyle2)) {
                        i16 = 256;
                    } else {
                        i16 = 128;
                    }
                    i14 |= i16;
                }
                i17 = i13 & 8;
                if (i17 != 0) {
                    if ((i12 & 7168) == 0) {
                        z10 = z6;
                        if (composerS.m(z10)) {
                            i18 = 2048;
                        } else {
                            i18 = 1024;
                        }
                        i14 |= i18;
                    }
                    i19 = i13 & 16;
                    if (i19 != 0) {
                        if ((i12 & 57344) == 0) {
                            i20 = i10;
                            if (composerS.p(i20)) {
                                i21 = 16384;
                            } else {
                                i21 = 8192;
                            }
                            i14 |= i21;
                        }
                        i22 = i13 & 32;
                        if (i22 != 0) {
                            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                            i23 = i11;
                        } else {
                            i23 = i11;
                            if ((i12 & 458752) == 0) {
                                if (composerS.p(i23)) {
                                    i24 = 131072;
                                } else {
                                    i24 = 65536;
                                }
                                i14 |= i24;
                            }
                        }
                        i25 = i13 & 64;
                        if (i25 != 0) {
                            i14 |= 1572864;
                        } else if ((i12 & 3670016) == 0) {
                            if (composerS.k(lVar)) {
                                i26 = 1048576;
                            } else {
                                i26 = 524288;
                            }
                            i14 |= i26;
                        }
                        if ((i13 & 128) != 0) {
                            if ((29360128 & i12) == 0) {
                                if (composerS.k(onClick)) {
                                    i27 = 8388608;
                                } else {
                                    i27 = 4194304;
                                }
                            }
                            if ((23967451 & i14) == 4793490 || !composerS.b()) {
                                if (i31 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i15 != 0) {
                                    textStyleA = TextStyle.Companion.a();
                                } else {
                                    textStyleA = textStyle2;
                                }
                                if (i17 != 0) {
                                    z11 = true;
                                } else {
                                    z11 = z10;
                                }
                                if (i19 != 0) {
                                    iA = TextOverflow.Companion.a();
                                } else {
                                    iA = i20;
                                }
                                if (i22 != 0) {
                                    i28 = Integer.MAX_VALUE;
                                } else {
                                    i28 = i23;
                                }
                                if (i25 != 0) {
                                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                                } else {
                                    lVar2 = lVar;
                                }
                                composerS.G(-492369756);
                                objH = composerS.H();
                                companion = Composer.Companion;
                                if (objH == companion.a()) {
                                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                    composerS.z(objH);
                                }
                                composerS.Q();
                                mutableState = (MutableState) objH;
                                Modifier.Companion companion2 = Modifier.Companion;
                                composerS.G(511388516);
                                zK = composerS.k(mutableState) | composerS.k(onClick);
                                objH2 = composerS.H();
                                if (zK || objH2 == companion.a()) {
                                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                    composerS.z(objH2);
                                }
                                composerS.Q();
                                Modifier modifierB = modifier2.B(SuspendingPointerInputFilterKt.b(companion2, onClick, (p) objH2));
                                composerS.G(511388516);
                                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                                objH3 = composerS.H();
                                if (zK2 || objH3 == companion.a()) {
                                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                    composerS.z(objH3);
                                }
                                composerS.Q();
                                i29 = i28;
                                BasicTextKt.a(text, modifierB, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                                modifier3 = modifier2;
                                lVar3 = lVar2;
                                textStyle3 = textStyleA;
                                z12 = z11;
                                i30 = iA;
                            } else {
                                composerS.g();
                                modifier3 = modifier;
                                textStyle3 = textStyle2;
                                z12 = z10;
                                i29 = i23;
                                i30 = i20;
                                lVar3 = lVar;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                        }
                        i27 = 12582912;
                        i14 |= i27;
                        if ((23967451 & i14) == 4793490) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion3 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB2 = modifier2.B(SuspendingPointerInputFilterKt.b(companion3, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB2, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        } else {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion4 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB3 = modifier2.B(SuspendingPointerInputFilterKt.b(companion4, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB3, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                    }
                    i14 |= CpioConstants.C_ISBLK;
                    i20 = i10;
                    i22 = i13 & 32;
                    if (i22 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i23 = i11;
                    } else {
                        i23 = i11;
                        if ((i12 & 458752) == 0) {
                            if (composerS.p(i23)) {
                                i24 = 131072;
                            } else {
                                i24 = 65536;
                            }
                            i14 |= i24;
                        }
                    }
                    i25 = i13 & 64;
                    if (i25 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.k(lVar)) {
                            i26 = 1048576;
                        } else {
                            i26 = 524288;
                        }
                        i14 |= i26;
                    }
                    if ((i13 & 128) != 0) {
                        if ((29360128 & i12) == 0) {
                            if (composerS.k(onClick)) {
                                i27 = 8388608;
                            } else {
                                i27 = 4194304;
                            }
                        }
                        if ((23967451 & i14) == 4793490) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion5 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB4 = modifier2.B(SuspendingPointerInputFilterKt.b(companion5, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB4, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        } else {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion6 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB5 = modifier2.B(SuspendingPointerInputFilterKt.b(companion6, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB5, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                    }
                    i27 = 12582912;
                    i14 |= i27;
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion7 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB6 = modifier2.B(SuspendingPointerInputFilterKt.b(companion7, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB6, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion8 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB7 = modifier2.B(SuspendingPointerInputFilterKt.b(companion8, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB7, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i14 |= 3072;
                z10 = z6;
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((i12 & 57344) == 0) {
                        i20 = i10;
                        if (composerS.p(i20)) {
                            i21 = 16384;
                        } else {
                            i21 = 8192;
                        }
                        i14 |= i21;
                    }
                    i22 = i13 & 32;
                    if (i22 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i23 = i11;
                    } else {
                        i23 = i11;
                        if ((i12 & 458752) == 0) {
                            if (composerS.p(i23)) {
                                i24 = 131072;
                            } else {
                                i24 = 65536;
                            }
                            i14 |= i24;
                        }
                    }
                    i25 = i13 & 64;
                    if (i25 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.k(lVar)) {
                            i26 = 1048576;
                        } else {
                            i26 = 524288;
                        }
                        i14 |= i26;
                    }
                    if ((i13 & 128) != 0) {
                        if ((29360128 & i12) == 0) {
                            if (composerS.k(onClick)) {
                                i27 = 8388608;
                            } else {
                                i27 = 4194304;
                            }
                        }
                        if ((23967451 & i14) == 4793490) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion9 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB8 = modifier2.B(SuspendingPointerInputFilterKt.b(companion9, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB8, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        } else {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion10 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB9 = modifier2.B(SuspendingPointerInputFilterKt.b(companion10, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB9, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                    }
                    i27 = 12582912;
                    i14 |= i27;
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion11 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB10 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB10, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion12 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB11 = modifier2.B(SuspendingPointerInputFilterKt.b(companion12, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB11, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                i20 = i10;
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion13 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB12 = modifier2.B(SuspendingPointerInputFilterKt.b(companion13, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB12, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion14 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB13 = modifier2.B(SuspendingPointerInputFilterKt.b(companion14, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB13, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion15 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB14 = modifier2.B(SuspendingPointerInputFilterKt.b(companion15, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB14, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion16 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB15 = modifier2.B(SuspendingPointerInputFilterKt.b(companion16, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB15, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= 384;
            textStyle2 = textStyle;
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((i12 & 57344) == 0) {
                        i20 = i10;
                        if (composerS.p(i20)) {
                            i21 = 16384;
                        } else {
                            i21 = 8192;
                        }
                        i14 |= i21;
                    }
                    i22 = i13 & 32;
                    if (i22 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i23 = i11;
                    } else {
                        i23 = i11;
                        if ((i12 & 458752) == 0) {
                            if (composerS.p(i23)) {
                                i24 = 131072;
                            } else {
                                i24 = 65536;
                            }
                            i14 |= i24;
                        }
                    }
                    i25 = i13 & 64;
                    if (i25 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.k(lVar)) {
                            i26 = 1048576;
                        } else {
                            i26 = 524288;
                        }
                        i14 |= i26;
                    }
                    if ((i13 & 128) != 0) {
                        if ((29360128 & i12) == 0) {
                            if (composerS.k(onClick)) {
                                i27 = 8388608;
                            } else {
                                i27 = 4194304;
                            }
                        }
                        if ((23967451 & i14) == 4793490) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion17 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB16 = modifier2.B(SuspendingPointerInputFilterKt.b(companion17, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB16, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        } else {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion18 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB17 = modifier2.B(SuspendingPointerInputFilterKt.b(companion18, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB17, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                    }
                    i27 = 12582912;
                    i14 |= i27;
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion19 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB18 = modifier2.B(SuspendingPointerInputFilterKt.b(companion19, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB18, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion110 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB19 = modifier2.B(SuspendingPointerInputFilterKt.b(companion110, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB19, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                i20 = i10;
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion111 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB110 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB110, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion112 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB111 = modifier2.B(SuspendingPointerInputFilterKt.b(companion112, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB111, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion113 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB112 = modifier2.B(SuspendingPointerInputFilterKt.b(companion113, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB112, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion114 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB113 = modifier2.B(SuspendingPointerInputFilterKt.b(companion114, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB113, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= 3072;
            z10 = z6;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((i12 & 57344) == 0) {
                    i20 = i10;
                    if (composerS.p(i20)) {
                        i21 = 16384;
                    } else {
                        i21 = 8192;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion115 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB114 = modifier2.B(SuspendingPointerInputFilterKt.b(companion115, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB114, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion116 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB115 = modifier2.B(SuspendingPointerInputFilterKt.b(companion116, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB115, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion117 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB116 = modifier2.B(SuspendingPointerInputFilterKt.b(companion117, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB116, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion118 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB117 = modifier2.B(SuspendingPointerInputFilterKt.b(companion118, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB117, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            i20 = i10;
            i22 = i13 & 32;
            if (i22 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i23 = i11;
            } else {
                i23 = i11;
                if ((i12 & 458752) == 0) {
                    if (composerS.p(i23)) {
                        i24 = 131072;
                    } else {
                        i24 = 65536;
                    }
                    i14 |= i24;
                }
            }
            i25 = i13 & 64;
            if (i25 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(lVar)) {
                    i26 = 1048576;
                } else {
                    i26 = 524288;
                }
                i14 |= i26;
            }
            if ((i13 & 128) != 0) {
                if ((29360128 & i12) == 0) {
                    if (composerS.k(onClick)) {
                        i27 = 8388608;
                    } else {
                        i27 = 4194304;
                    }
                }
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion119 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB118 = modifier2.B(SuspendingPointerInputFilterKt.b(companion119, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB118, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion1110 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB119 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1110, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB119, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i27 = 12582912;
            i14 |= i27;
            if ((23967451 & i14) == 4793490) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion1111 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB1110 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB1110, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion1112 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB1111 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1112, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB1111, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
        }
        i14 |= 48;
        i15 = i13 & 4;
        if (i15 != 0) {
            if ((i12 & 896) == 0) {
                textStyle2 = textStyle;
                if (composerS.k(textStyle2)) {
                    i16 = 256;
                } else {
                    i16 = 128;
                }
                i14 |= i16;
            }
            i17 = i13 & 8;
            if (i17 != 0) {
                if ((i12 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i18 = 2048;
                    } else {
                        i18 = 1024;
                    }
                    i14 |= i18;
                }
                i19 = i13 & 16;
                if (i19 != 0) {
                    if ((i12 & 57344) == 0) {
                        i20 = i10;
                        if (composerS.p(i20)) {
                            i21 = 16384;
                        } else {
                            i21 = 8192;
                        }
                        i14 |= i21;
                    }
                    i22 = i13 & 32;
                    if (i22 != 0) {
                        i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i23 = i11;
                    } else {
                        i23 = i11;
                        if ((i12 & 458752) == 0) {
                            if (composerS.p(i23)) {
                                i24 = 131072;
                            } else {
                                i24 = 65536;
                            }
                            i14 |= i24;
                        }
                    }
                    i25 = i13 & 64;
                    if (i25 != 0) {
                        i14 |= 1572864;
                    } else if ((i12 & 3670016) == 0) {
                        if (composerS.k(lVar)) {
                            i26 = 1048576;
                        } else {
                            i26 = 524288;
                        }
                        i14 |= i26;
                    }
                    if ((i13 & 128) != 0) {
                        if ((29360128 & i12) == 0) {
                            if (composerS.k(onClick)) {
                                i27 = 8388608;
                            } else {
                                i27 = 4194304;
                            }
                        }
                        if ((23967451 & i14) == 4793490) {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion1113 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB1112 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1113, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB1112, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        } else {
                            if (i31 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i15 != 0) {
                                textStyleA = TextStyle.Companion.a();
                            } else {
                                textStyleA = textStyle2;
                            }
                            if (i17 != 0) {
                                z11 = true;
                            } else {
                                z11 = z10;
                            }
                            if (i19 != 0) {
                                iA = TextOverflow.Companion.a();
                            } else {
                                iA = i20;
                            }
                            if (i22 != 0) {
                                i28 = Integer.MAX_VALUE;
                            } else {
                                i28 = i23;
                            }
                            if (i25 != 0) {
                                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                            } else {
                                lVar2 = lVar;
                            }
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                                composerS.z(objH);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH;
                            Modifier.Companion companion1114 = Modifier.Companion;
                            composerS.G(511388516);
                            zK = composerS.k(mutableState) | composerS.k(onClick);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            } else {
                                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            Modifier modifierB1113 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1114, onClick, (p) objH2));
                            composerS.G(511388516);
                            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                            objH3 = composerS.H();
                            if (zK2) {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            } else {
                                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            i29 = i28;
                            BasicTextKt.a(text, modifierB1113, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                            modifier3 = modifier2;
                            lVar3 = lVar2;
                            textStyle3 = textStyleA;
                            z12 = z11;
                            i30 = iA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                    }
                    i27 = 12582912;
                    i14 |= i27;
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion1115 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB1114 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1115, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB1114, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion1116 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB1115 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1116, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB1115, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i14 |= CpioConstants.C_ISBLK;
                i20 = i10;
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion1117 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB1116 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1117, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB1116, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion1118 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB1117 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1118, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB1117, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion1119 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB1118 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1119, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB1118, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion11110 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB1119 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11110, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB1119, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= 3072;
            z10 = z6;
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((i12 & 57344) == 0) {
                    i20 = i10;
                    if (composerS.p(i20)) {
                        i21 = 16384;
                    } else {
                        i21 = 8192;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion11111 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB11110 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11111, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB11110, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion11112 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB11111 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11112, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB11111, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion11113 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB11112 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11113, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB11112, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion11114 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB11113 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11114, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB11113, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            i20 = i10;
            i22 = i13 & 32;
            if (i22 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i23 = i11;
            } else {
                i23 = i11;
                if ((i12 & 458752) == 0) {
                    if (composerS.p(i23)) {
                        i24 = 131072;
                    } else {
                        i24 = 65536;
                    }
                    i14 |= i24;
                }
            }
            i25 = i13 & 64;
            if (i25 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(lVar)) {
                    i26 = 1048576;
                } else {
                    i26 = 524288;
                }
                i14 |= i26;
            }
            if ((i13 & 128) != 0) {
                if ((29360128 & i12) == 0) {
                    if (composerS.k(onClick)) {
                        i27 = 8388608;
                    } else {
                        i27 = 4194304;
                    }
                }
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion11115 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB11114 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11115, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB11114, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion11116 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB11115 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11116, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB11115, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i27 = 12582912;
            i14 |= i27;
            if ((23967451 & i14) == 4793490) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion11117 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB11116 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11117, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB11116, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion11118 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB11117 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11118, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB11117, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
        }
        i14 |= 384;
        textStyle2 = textStyle;
        i17 = i13 & 8;
        if (i17 != 0) {
            if ((i12 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i18 = 2048;
                } else {
                    i18 = 1024;
                }
                i14 |= i18;
            }
            i19 = i13 & 16;
            if (i19 != 0) {
                if ((i12 & 57344) == 0) {
                    i20 = i10;
                    if (composerS.p(i20)) {
                        i21 = 16384;
                    } else {
                        i21 = 8192;
                    }
                    i14 |= i21;
                }
                i22 = i13 & 32;
                if (i22 != 0) {
                    i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i23 = i11;
                } else {
                    i23 = i11;
                    if ((i12 & 458752) == 0) {
                        if (composerS.p(i23)) {
                            i24 = 131072;
                        } else {
                            i24 = 65536;
                        }
                        i14 |= i24;
                    }
                }
                i25 = i13 & 64;
                if (i25 != 0) {
                    i14 |= 1572864;
                } else if ((i12 & 3670016) == 0) {
                    if (composerS.k(lVar)) {
                        i26 = 1048576;
                    } else {
                        i26 = 524288;
                    }
                    i14 |= i26;
                }
                if ((i13 & 128) != 0) {
                    if ((29360128 & i12) == 0) {
                        if (composerS.k(onClick)) {
                            i27 = 8388608;
                        } else {
                            i27 = 4194304;
                        }
                    }
                    if ((23967451 & i14) == 4793490) {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion11119 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB11118 = modifier2.B(SuspendingPointerInputFilterKt.b(companion11119, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB11118, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    } else {
                        if (i31 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i15 != 0) {
                            textStyleA = TextStyle.Companion.a();
                        } else {
                            textStyleA = textStyle2;
                        }
                        if (i17 != 0) {
                            z11 = true;
                        } else {
                            z11 = z10;
                        }
                        if (i19 != 0) {
                            iA = TextOverflow.Companion.a();
                        } else {
                            iA = i20;
                        }
                        if (i22 != 0) {
                            i28 = Integer.MAX_VALUE;
                        } else {
                            i28 = i23;
                        }
                        if (i25 != 0) {
                            lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                        } else {
                            lVar2 = lVar;
                        }
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH;
                        Modifier.Companion companion111110 = Modifier.Companion;
                        composerS.G(511388516);
                        zK = composerS.k(mutableState) | composerS.k(onClick);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        } else {
                            objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        Modifier modifierB11119 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111110, onClick, (p) objH2));
                        composerS.G(511388516);
                        zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                        objH3 = composerS.H();
                        if (zK2) {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        } else {
                            objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        i29 = i28;
                        BasicTextKt.a(text, modifierB11119, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                        modifier3 = modifier2;
                        lVar3 = lVar2;
                        textStyle3 = textStyleA;
                        z12 = z11;
                        i30 = iA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
                }
                i27 = 12582912;
                i14 |= i27;
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111111 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111110 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111111, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111110, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111112 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111111 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111112, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111111, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i14 |= CpioConstants.C_ISBLK;
            i20 = i10;
            i22 = i13 & 32;
            if (i22 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i23 = i11;
            } else {
                i23 = i11;
                if ((i12 & 458752) == 0) {
                    if (composerS.p(i23)) {
                        i24 = 131072;
                    } else {
                        i24 = 65536;
                    }
                    i14 |= i24;
                }
            }
            i25 = i13 & 64;
            if (i25 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(lVar)) {
                    i26 = 1048576;
                } else {
                    i26 = 524288;
                }
                i14 |= i26;
            }
            if ((i13 & 128) != 0) {
                if ((29360128 & i12) == 0) {
                    if (composerS.k(onClick)) {
                        i27 = 8388608;
                    } else {
                        i27 = 4194304;
                    }
                }
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111113 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111112 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111113, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111112, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111114 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111113 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111114, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111113, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i27 = 12582912;
            i14 |= i27;
            if ((23967451 & i14) == 4793490) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion111115 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB111114 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111115, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB111114, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion111116 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB111115 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111116, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB111115, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
        }
        i14 |= 3072;
        z10 = z6;
        i19 = i13 & 16;
        if (i19 != 0) {
            if ((i12 & 57344) == 0) {
                i20 = i10;
                if (composerS.p(i20)) {
                    i21 = 16384;
                } else {
                    i21 = 8192;
                }
                i14 |= i21;
            }
            i22 = i13 & 32;
            if (i22 != 0) {
                i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i23 = i11;
            } else {
                i23 = i11;
                if ((i12 & 458752) == 0) {
                    if (composerS.p(i23)) {
                        i24 = 131072;
                    } else {
                        i24 = 65536;
                    }
                    i14 |= i24;
                }
            }
            i25 = i13 & 64;
            if (i25 != 0) {
                i14 |= 1572864;
            } else if ((i12 & 3670016) == 0) {
                if (composerS.k(lVar)) {
                    i26 = 1048576;
                } else {
                    i26 = 524288;
                }
                i14 |= i26;
            }
            if ((i13 & 128) != 0) {
                if ((29360128 & i12) == 0) {
                    if (composerS.k(onClick)) {
                        i27 = 8388608;
                    } else {
                        i27 = 4194304;
                    }
                }
                if ((23967451 & i14) == 4793490) {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111117 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111116 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111117, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111116, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                } else {
                    if (i31 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i15 != 0) {
                        textStyleA = TextStyle.Companion.a();
                    } else {
                        textStyleA = textStyle2;
                    }
                    if (i17 != 0) {
                        z11 = true;
                    } else {
                        z11 = z10;
                    }
                    if (i19 != 0) {
                        iA = TextOverflow.Companion.a();
                    } else {
                        iA = i20;
                    }
                    if (i22 != 0) {
                        i28 = Integer.MAX_VALUE;
                    } else {
                        i28 = i23;
                    }
                    if (i25 != 0) {
                        lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                    } else {
                        lVar2 = lVar;
                    }
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH;
                    Modifier.Companion companion111118 = Modifier.Companion;
                    composerS.G(511388516);
                    zK = composerS.k(mutableState) | composerS.k(onClick);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    } else {
                        objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    Modifier modifierB111117 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111118, onClick, (p) objH2));
                    composerS.G(511388516);
                    zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                    objH3 = composerS.H();
                    if (zK2) {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    i29 = i28;
                    BasicTextKt.a(text, modifierB111117, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                    modifier3 = modifier2;
                    lVar3 = lVar2;
                    textStyle3 = textStyleA;
                    z12 = z11;
                    i30 = iA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
            }
            i27 = 12582912;
            i14 |= i27;
            if ((23967451 & i14) == 4793490) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion111119 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB111118 = modifier2.B(SuspendingPointerInputFilterKt.b(companion111119, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB111118, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion1111110 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB111119 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111110, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB111119, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
        }
        i14 |= CpioConstants.C_ISBLK;
        i20 = i10;
        i22 = i13 & 32;
        if (i22 != 0) {
            i14 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i23 = i11;
        } else {
            i23 = i11;
            if ((i12 & 458752) == 0) {
                if (composerS.p(i23)) {
                    i24 = 131072;
                } else {
                    i24 = 65536;
                }
                i14 |= i24;
            }
        }
        i25 = i13 & 64;
        if (i25 != 0) {
            i14 |= 1572864;
        } else if ((i12 & 3670016) == 0) {
            if (composerS.k(lVar)) {
                i26 = 1048576;
            } else {
                i26 = 524288;
            }
            i14 |= i26;
        }
        if ((i13 & 128) != 0) {
            if ((29360128 & i12) == 0) {
                if (composerS.k(onClick)) {
                    i27 = 8388608;
                } else {
                    i27 = 4194304;
                }
            }
            if ((23967451 & i14) == 4793490) {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion1111111 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB1111110 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111111, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB1111110, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            } else {
                if (i31 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i15 != 0) {
                    textStyleA = TextStyle.Companion.a();
                } else {
                    textStyleA = textStyle2;
                }
                if (i17 != 0) {
                    z11 = true;
                } else {
                    z11 = z10;
                }
                if (i19 != 0) {
                    iA = TextOverflow.Companion.a();
                } else {
                    iA = i20;
                }
                if (i22 != 0) {
                    i28 = Integer.MAX_VALUE;
                } else {
                    i28 = i23;
                }
                if (i25 != 0) {
                    lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
                } else {
                    lVar2 = lVar;
                }
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableState = (MutableState) objH;
                Modifier.Companion companion1111112 = Modifier.Companion;
                composerS.G(511388516);
                zK = composerS.k(mutableState) | composerS.k(onClick);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                } else {
                    objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                Modifier modifierB1111111 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111112, onClick, (p) objH2));
                composerS.G(511388516);
                zK2 = composerS.k(mutableState) | composerS.k(lVar2);
                objH3 = composerS.H();
                if (zK2) {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                } else {
                    objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                    composerS.z(objH3);
                }
                composerS.Q();
                i29 = i28;
                BasicTextKt.a(text, modifierB1111111, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
                modifier3 = modifier2;
                lVar3 = lVar2;
                textStyle3 = textStyleA;
                z12 = z11;
                i30 = iA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
        }
        i27 = 12582912;
        i14 |= i27;
        if ((23967451 & i14) == 4793490) {
            if (i31 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i15 != 0) {
                textStyleA = TextStyle.Companion.a();
            } else {
                textStyleA = textStyle2;
            }
            if (i17 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i19 != 0) {
                iA = TextOverflow.Companion.a();
            } else {
                iA = i20;
            }
            if (i22 != 0) {
                i28 = Integer.MAX_VALUE;
            } else {
                i28 = i23;
            }
            if (i25 != 0) {
                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
            } else {
                lVar2 = lVar;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            mutableState = (MutableState) objH;
            Modifier.Companion companion1111113 = Modifier.Companion;
            composerS.G(511388516);
            zK = composerS.k(mutableState) | composerS.k(onClick);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                composerS.z(objH2);
            } else {
                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                composerS.z(objH2);
            }
            composerS.Q();
            Modifier modifierB1111112 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111113, onClick, (p) objH2));
            composerS.G(511388516);
            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
            objH3 = composerS.H();
            if (zK2) {
                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                composerS.z(objH3);
            } else {
                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                composerS.z(objH3);
            }
            composerS.Q();
            i29 = i28;
            BasicTextKt.a(text, modifierB1111112, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
            modifier3 = modifier2;
            lVar3 = lVar2;
            textStyle3 = textStyleA;
            z12 = z11;
            i30 = iA;
        } else {
            if (i31 != 0) {
                modifier2 = Modifier.Companion;
            } else {
                modifier2 = modifier;
            }
            if (i15 != 0) {
                textStyleA = TextStyle.Companion.a();
            } else {
                textStyleA = textStyle2;
            }
            if (i17 != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            if (i19 != 0) {
                iA = TextOverflow.Companion.a();
            } else {
                iA = i20;
            }
            if (i22 != 0) {
                i28 = Integer.MAX_VALUE;
            } else {
                i28 = i23;
            }
            if (i25 != 0) {
                lVar2 = ClickableTextKt$ClickableText$1.INSTANCE;
            } else {
                lVar2 = lVar;
            }
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
                composerS.z(objH);
            }
            composerS.Q();
            mutableState = (MutableState) objH;
            Modifier.Companion companion1111114 = Modifier.Companion;
            composerS.G(511388516);
            zK = composerS.k(mutableState) | composerS.k(onClick);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                composerS.z(objH2);
            } else {
                objH2 = new ClickableTextKt$ClickableText$pressIndicator$1$1(mutableState, onClick, null);
                composerS.z(objH2);
            }
            composerS.Q();
            Modifier modifierB1111113 = modifier2.B(SuspendingPointerInputFilterKt.b(companion1111114, onClick, (p) objH2));
            composerS.G(511388516);
            zK2 = composerS.k(mutableState) | composerS.k(lVar2);
            objH3 = composerS.H();
            if (zK2) {
                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                composerS.z(objH3);
            } else {
                objH3 = new ClickableTextKt$ClickableText$2$1(mutableState, lVar2);
                composerS.z(objH3);
            }
            composerS.Q();
            i29 = i28;
            BasicTextKt.a(text, modifierB1111113, textStyleA, (l) objH3, iA, z11, i29, null, composerS, (i14 & 14) | (i14 & 896) | (57344 & i14) | ((i14 << 6) & 458752) | ((i14 << 3) & 3670016), 128);
            modifier3 = modifier2;
            lVar3 = lVar2;
            textStyle3 = textStyleA;
            z12 = z11;
            i30 = iA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new ClickableTextKt$ClickableText$3(text, modifier3, textStyle3, z12, i30, i29, lVar3, onClick, i12, i13));
    }
}
