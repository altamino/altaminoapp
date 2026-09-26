package androidx.compose.material;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableInferredTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpKt;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.compose.ui.window.PopupProperties;
import androidx.profileinstaller.ProfileVerifier;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class AndroidMenu_androidKt {
    /* JADX WARN: Code duplicated, block: B:100:0x017f  */
    /* JADX WARN: Code duplicated, block: B:103:0x01b3  */
    /* JADX WARN: Code duplicated, block: B:105:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:111:0x0208  */
    /* JADX WARN: Code duplicated, block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:36:0x006b  */
    /* JADX WARN: Code duplicated, block: B:38:0x0070  */
    /* JADX WARN: Code duplicated, block: B:40:0x0074  */
    /* JADX WARN: Code duplicated, block: B:42:0x007c  */
    /* JADX WARN: Code duplicated, block: B:43:0x007f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0088  */
    /* JADX WARN: Code duplicated, block: B:49:0x008c  */
    /* JADX WARN: Code duplicated, block: B:51:0x0094  */
    /* JADX WARN: Code duplicated, block: B:52:0x0097  */
    /* JADX WARN: Code duplicated, block: B:55:0x009d  */
    /* JADX WARN: Code duplicated, block: B:58:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:60:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:62:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:68:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cf  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:81:0x00ef A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:82:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:83:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:86:0x0106  */
    /* JADX WARN: Code duplicated, block: B:89:0x010b  */
    /* JADX WARN: Code duplicated, block: B:90:0x0129  */
    /* JADX WARN: Code duplicated, block: B:93:0x0144  */
    /* JADX WARN: Code duplicated, block: B:96:0x0166  */
    /* JADX WARN: Code duplicated, block: B:98:0x0172  */
    @Composable
    @ComposableInferredTarget
    public static final void a(boolean z6, @NotNull a<l0> onDismissRequest, @Nullable Modifier modifier, long j6, @Nullable PopupProperties popupProperties, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        Modifier modifier2;
        int i13;
        long j10;
        int i14;
        PopupProperties popupProperties2;
        int i15;
        Modifier modifier3;
        long jA;
        int i16;
        long j11;
        PopupProperties popupProperties3;
        Modifier modifier4;
        Object objH;
        Composer.Companion companion;
        MutableTransitionState mutableTransitionState;
        Object objH2;
        MutableState mutableState;
        boolean zK;
        Object objH3;
        long j12;
        PopupProperties popupProperties4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onDismissRequest, "onDismissRequest");
        t.j(content, "content");
        Composer composerS = composer.s(-840283139);
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
            i12 |= composerS.k(onDismissRequest) ? 32 : 16;
        }
        int i17 = i11 & 4;
        if (i17 == 0) {
            if ((i10 & 896) == 0) {
                modifier2 = modifier;
                i12 |= composerS.k(modifier2) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    j10 = j6;
                    if (composerS.q(j10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        popupProperties2 = popupProperties;
                        int i18 = composerS.k(popupProperties2) ? 16384 : 8192;
                        i12 |= i18;
                    } else {
                        popupProperties2 = popupProperties;
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                if ((i11 & 32) != 0) {
                    if ((458752 & i10) == 0) {
                        if (composerS.k(content)) {
                            i15 = 131072;
                        } else {
                            i15 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898 || !composerS.b()) {
                        composerS.J();
                        if ((i10 & 1) != 0 || composerS.h()) {
                            if (i17 != 0) {
                                modifier3 = Modifier.Companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i13 != 0) {
                                float f = 0;
                                jA = DpKt.a(Dp.f(f), Dp.f(f));
                            } else {
                                jA = j10;
                            }
                            if ((i11 & 16) != 0) {
                                i16 = i12 & (-57345);
                                modifier4 = modifier3;
                                j11 = jA;
                                popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                            } else {
                                i16 = i12;
                                j11 = jA;
                                popupProperties3 = popupProperties2;
                                modifier4 = modifier3;
                            }
                        } else {
                            composerS.g();
                            if ((i11 & 16) != 0) {
                                i12 &= -57345;
                            }
                            j11 = j10;
                            popupProperties3 = popupProperties2;
                            i16 = i12;
                            modifier4 = modifier2;
                        }
                        composerS.A();
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            objH = new MutableTransitionState(Boolean.FALSE);
                            composerS.z(objH);
                        }
                        composerS.Q();
                        mutableTransitionState = (MutableTransitionState) objH;
                        mutableTransitionState.e(Boolean.valueOf(z6));
                        if (((Boolean) mutableTransitionState.a()).booleanValue() || ((Boolean) mutableTransitionState.b()).booleanValue()) {
                            composerS.G(-492369756);
                            objH2 = composerS.H();
                            if (objH2 == companion.a()) {
                                objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            mutableState = (MutableState) objH2;
                            Density density = (Density) composerS.x(CompositionLocalsKt.e());
                            composerS.G(1157296644);
                            zK = composerS.k(mutableState);
                            objH3 = composerS.H();
                            if (zK || objH3 == companion.a()) {
                                objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                                composerS.z(objH3);
                            }
                            composerS.Q();
                            AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                        }
                        modifier2 = modifier4;
                        j12 = j11;
                        popupProperties4 = popupProperties3;
                    } else {
                        composerS.g();
                        j12 = j10;
                        popupProperties4 = popupProperties2;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
                }
                i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i15;
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f6 = 0;
                            jA = DpKt.a(Dp.f(f6), Dp.f(f6));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f7 = 0;
                            jA = DpKt.a(Dp.f(f7), Dp.f(f7));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density2 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density2, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density3 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density3, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f10 = 0;
                            jA = DpKt.a(Dp.f(f10), Dp.f(f10));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f11 = 0;
                            jA = DpKt.a(Dp.f(f11), Dp.f(f11));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density4 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density4, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density5 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density5, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
            }
            i12 |= 3072;
            j10 = j6;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerS.k(popupProperties2)) {
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f12 = 0;
                            jA = DpKt.a(Dp.f(f12), Dp.f(f12));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f13 = 0;
                            jA = DpKt.a(Dp.f(f13), Dp.f(f13));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density6 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density6, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density7 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density7, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f14 = 0;
                            jA = DpKt.a(Dp.f(f14), Dp.f(f14));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f15 = 0;
                            jA = DpKt.a(Dp.f(f15), Dp.f(f15));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density8 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density8, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density9 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density9, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f16 = 0;
                        jA = DpKt.a(Dp.f(f16), Dp.f(f16));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f17 = 0;
                        jA = DpKt.a(Dp.f(f17), Dp.f(f17));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density10 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density10, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density11 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density11, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f18 = 0;
                        jA = DpKt.a(Dp.f(f18), Dp.f(f18));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f19 = 0;
                        jA = DpKt.a(Dp.f(f19), Dp.f(f19));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density12 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density12, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density13 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density13, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
        }
        i12 |= 384;
        modifier2 = modifier;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                j10 = j6;
                if (composerS.q(j10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
                    popupProperties2 = popupProperties;
                    if (composerS.k(popupProperties2)) {
                    }
                    i12 |= i18;
                } else {
                    popupProperties2 = popupProperties;
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i11 & 32) != 0) {
                if ((458752 & i10) == 0) {
                    if (composerS.k(content)) {
                        i15 = 131072;
                    } else {
                        i15 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f110 = 0;
                            jA = DpKt.a(Dp.f(f110), Dp.f(f110));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f111 = 0;
                            jA = DpKt.a(Dp.f(f111), Dp.f(f111));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density14 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density14, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density15 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density15, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f112 = 0;
                            jA = DpKt.a(Dp.f(f112), Dp.f(f112));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    } else {
                        if (i17 != 0) {
                            modifier3 = Modifier.Companion;
                        } else {
                            modifier3 = modifier2;
                        }
                        if (i13 != 0) {
                            float f113 = 0;
                            jA = DpKt.a(Dp.f(f113), Dp.f(f113));
                        } else {
                            jA = j10;
                        }
                        if ((i11 & 16) != 0) {
                            i16 = i12 & (-57345);
                            modifier4 = modifier3;
                            j11 = jA;
                            popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                        } else {
                            i16 = i12;
                            j11 = jA;
                            popupProperties3 = popupProperties2;
                            modifier4 = modifier3;
                        }
                    }
                    composerS.A();
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new MutableTransitionState(Boolean.FALSE);
                        composerS.z(objH);
                    }
                    composerS.Q();
                    mutableTransitionState = (MutableTransitionState) objH;
                    mutableTransitionState.e(Boolean.valueOf(z6));
                    if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density16 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density16, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    } else {
                        composerS.G(-492369756);
                        objH2 = composerS.H();
                        if (objH2 == companion.a()) {
                            objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        mutableState = (MutableState) objH2;
                        Density density17 = (Density) composerS.x(CompositionLocalsKt.e());
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK) {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        } else {
                            objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density17, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                    }
                    modifier2 = modifier4;
                    j12 = j11;
                    popupProperties4 = popupProperties3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
            }
            i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i15;
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f114 = 0;
                        jA = DpKt.a(Dp.f(f114), Dp.f(f114));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f115 = 0;
                        jA = DpKt.a(Dp.f(f115), Dp.f(f115));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density18 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density18, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density19 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density19, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f116 = 0;
                        jA = DpKt.a(Dp.f(f116), Dp.f(f116));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f117 = 0;
                        jA = DpKt.a(Dp.f(f117), Dp.f(f117));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density110 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density110, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density111 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density111, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
        }
        i12 |= 3072;
        j10 = j6;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
                popupProperties2 = popupProperties;
                if (composerS.k(popupProperties2)) {
                }
                i12 |= i18;
            } else {
                popupProperties2 = popupProperties;
            }
            i12 |= i18;
        } else {
            popupProperties2 = popupProperties;
        }
        if ((i11 & 32) != 0) {
            if ((458752 & i10) == 0) {
                if (composerS.k(content)) {
                    i15 = 131072;
                } else {
                    i15 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f118 = 0;
                        jA = DpKt.a(Dp.f(f118), Dp.f(f118));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f119 = 0;
                        jA = DpKt.a(Dp.f(f119), Dp.f(f119));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density112 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density112, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density113 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density113, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f1110 = 0;
                        jA = DpKt.a(Dp.f(f1110), Dp.f(f1110));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                } else {
                    if (i17 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
                    if (i13 != 0) {
                        float f1111 = 0;
                        jA = DpKt.a(Dp.f(f1111), Dp.f(f1111));
                    } else {
                        jA = j10;
                    }
                    if ((i11 & 16) != 0) {
                        i16 = i12 & (-57345);
                        modifier4 = modifier3;
                        j11 = jA;
                        popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                    } else {
                        i16 = i12;
                        j11 = jA;
                        popupProperties3 = popupProperties2;
                        modifier4 = modifier3;
                    }
                }
                composerS.A();
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new MutableTransitionState(Boolean.FALSE);
                    composerS.z(objH);
                }
                composerS.Q();
                mutableTransitionState = (MutableTransitionState) objH;
                mutableTransitionState.e(Boolean.valueOf(z6));
                if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density114 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density114, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                } else {
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    mutableState = (MutableState) objH2;
                    Density density115 = (Density) composerS.x(CompositionLocalsKt.e());
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density115, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
                }
                modifier2 = modifier4;
                j12 = j11;
                popupProperties4 = popupProperties3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
        }
        i15 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i15;
        if ((374491 & i12) == 74898) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    float f1112 = 0;
                    jA = DpKt.a(Dp.f(f1112), Dp.f(f1112));
                } else {
                    jA = j10;
                }
                if ((i11 & 16) != 0) {
                    i16 = i12 & (-57345);
                    modifier4 = modifier3;
                    j11 = jA;
                    popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                } else {
                    i16 = i12;
                    j11 = jA;
                    popupProperties3 = popupProperties2;
                    modifier4 = modifier3;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    float f1113 = 0;
                    jA = DpKt.a(Dp.f(f1113), Dp.f(f1113));
                } else {
                    jA = j10;
                }
                if ((i11 & 16) != 0) {
                    i16 = i12 & (-57345);
                    modifier4 = modifier3;
                    j11 = jA;
                    popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                } else {
                    i16 = i12;
                    j11 = jA;
                    popupProperties3 = popupProperties2;
                    modifier4 = modifier3;
                }
            }
            composerS.A();
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new MutableTransitionState(Boolean.FALSE);
                composerS.z(objH);
            }
            composerS.Q();
            mutableTransitionState = (MutableTransitionState) objH;
            mutableTransitionState.e(Boolean.valueOf(z6));
            if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                Density density116 = (Density) composerS.x(CompositionLocalsKt.e());
                composerS.G(1157296644);
                zK = composerS.k(mutableState);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                } else {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                }
                composerS.Q();
                AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density116, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
            } else {
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                Density density117 = (Density) composerS.x(CompositionLocalsKt.e());
                composerS.G(1157296644);
                zK = composerS.k(mutableState);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                } else {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                }
                composerS.Q();
                AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density117, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
            }
            modifier2 = modifier4;
            j12 = j11;
            popupProperties4 = popupProperties3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    float f1114 = 0;
                    jA = DpKt.a(Dp.f(f1114), Dp.f(f1114));
                } else {
                    jA = j10;
                }
                if ((i11 & 16) != 0) {
                    i16 = i12 & (-57345);
                    modifier4 = modifier3;
                    j11 = jA;
                    popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                } else {
                    i16 = i12;
                    j11 = jA;
                    popupProperties3 = popupProperties2;
                    modifier4 = modifier3;
                }
            } else {
                if (i17 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
                if (i13 != 0) {
                    float f1115 = 0;
                    jA = DpKt.a(Dp.f(f1115), Dp.f(f1115));
                } else {
                    jA = j10;
                }
                if ((i11 & 16) != 0) {
                    i16 = i12 & (-57345);
                    modifier4 = modifier3;
                    j11 = jA;
                    popupProperties3 = new PopupProperties(true, false, false, null, false, false, 62, null);
                } else {
                    i16 = i12;
                    j11 = jA;
                    popupProperties3 = popupProperties2;
                    modifier4 = modifier3;
                }
            }
            composerS.A();
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new MutableTransitionState(Boolean.FALSE);
                composerS.z(objH);
            }
            composerS.Q();
            mutableTransitionState = (MutableTransitionState) objH;
            mutableTransitionState.e(Boolean.valueOf(z6));
            if (((Boolean) mutableTransitionState.a()).booleanValue()) {
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                Density density118 = (Density) composerS.x(CompositionLocalsKt.e());
                composerS.G(1157296644);
                zK = composerS.k(mutableState);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                } else {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                }
                composerS.Q();
                AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density118, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
            } else {
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    objH2 = SnapshotStateKt__SnapshotStateKt.e(TransformOrigin.b(TransformOrigin.Companion.a()), null, 2, null);
                    composerS.z(objH2);
                }
                composerS.Q();
                mutableState = (MutableState) objH2;
                Density density119 = (Density) composerS.x(CompositionLocalsKt.e());
                composerS.G(1157296644);
                zK = composerS.k(mutableState);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                } else {
                    objH3 = new AndroidMenu_androidKt$DropdownMenu$popupPositionProvider$1$1(mutableState);
                    composerS.z(objH3);
                }
                composerS.Q();
                AndroidPopup_androidKt.a(new DropdownMenuPositionProvider(j11, density119, (p) objH3, null), onDismissRequest, popupProperties3, ComposableLambdaKt.b(composerS, 79632374, true, new AndroidMenu_androidKt$DropdownMenu$1(mutableTransitionState, mutableState, modifier4, content, i16)), composerS, (i16 & 112) | 3072 | ((i16 >> 6) & 896), 0);
            }
            modifier2 = modifier4;
            j12 = j11;
            popupProperties4 = popupProperties3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenu$2(z6, onDismissRequest, modifier2, j12, popupProperties4, content, i10, i11));
    }

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
    /* JADX WARN: Code duplicated, block: B:48:0x0088  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0091  */
    /* JADX WARN: Code duplicated, block: B:54:0x0099  */
    /* JADX WARN: Code duplicated, block: B:55:0x009c  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:61:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:63:0x00ad  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:66:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d1 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:74:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d7  */
    /* JADX WARN: Code duplicated, block: B:77:0x00da  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ed  */
    /* JADX WARN: Code duplicated, block: B:85:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:91:0x0139  */
    /* JADX WARN: Code duplicated, block: B:93:? A[RETURN, SYNTHETIC] */
    @Composable
    @ComposableInferredTarget
    public static final void b(@NotNull a<l0> onClick, @Nullable Modifier modifier, boolean z6, @Nullable PaddingValues paddingValues, @Nullable MutableInteractionSource mutableInteractionSource, @NotNull q<? super RowScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
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
        Modifier modifier3;
        boolean z11;
        PaddingValues paddingValuesA;
        MutableInteractionSource mutableInteractionSource3;
        boolean z12;
        PaddingValues paddingValues3;
        Object objH;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(onClick, "onClick");
        t.j(content, "content");
        Composer composerS = composer.s(-1988562892);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(onClick) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i20 = i11 & 2;
        if (i20 == 0) {
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
                        if ((i10 & 57344) == 0) {
                            mutableInteractionSource2 = mutableInteractionSource;
                            if (composerS.k(mutableInteractionSource2)) {
                                i18 = 16384;
                            } else {
                                i18 = 8192;
                            }
                            i12 |= i18;
                        }
                        if ((i11 & 32) != 0) {
                            if ((i10 & 458752) == 0) {
                                if (composerS.k(content)) {
                                    i19 = 131072;
                                } else {
                                    i19 = 65536;
                                }
                            }
                            if ((374491 & i12) == 74898 || !composerS.b()) {
                                if (i20 != 0) {
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
                                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                                }
                                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                                mutableInteractionSource3 = mutableInteractionSource2;
                                modifier2 = modifier3;
                                z12 = z11;
                                paddingValues3 = paddingValuesA;
                            } else {
                                composerS.g();
                                z12 = z10;
                                paddingValues3 = paddingValues2;
                                mutableInteractionSource3 = mutableInteractionSource2;
                            }
                            scopeUpdateScopeU = composerS.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                        }
                        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                        i12 |= i19;
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        } else {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                    }
                    i12 |= CpioConstants.C_ISBLK;
                    mutableInteractionSource2 = mutableInteractionSource;
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        } else {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i12 |= 3072;
                paddingValues2 = paddingValues;
                i17 = i11 & 16;
                if (i17 != 0) {
                    if ((i10 & 57344) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        } else {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
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
                    if ((i10 & 57344) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        } else {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            } else {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
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
                    if ((i10 & 57344) == 0) {
                        mutableInteractionSource2 = mutableInteractionSource;
                        if (composerS.k(mutableInteractionSource2)) {
                            i18 = 16384;
                        } else {
                            i18 = 8192;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 32) != 0) {
                        if ((i10 & 458752) == 0) {
                            if (composerS.k(content)) {
                                i19 = 131072;
                            } else {
                                i19 = 65536;
                            }
                        }
                        if ((374491 & i12) == 74898) {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        } else {
                            if (i20 != 0) {
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
                                mutableInteractionSource2 = (MutableInteractionSource) objH;
                            }
                            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                            mutableInteractionSource3 = mutableInteractionSource2;
                            modifier2 = modifier3;
                            z12 = z11;
                            paddingValues3 = paddingValuesA;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                    }
                    i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    i12 |= i19;
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                mutableInteractionSource2 = mutableInteractionSource;
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i17 = i11 & 16;
            if (i17 != 0) {
                if ((i10 & 57344) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            } else {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
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
                if ((i10 & 57344) == 0) {
                    mutableInteractionSource2 = mutableInteractionSource;
                    if (composerS.k(mutableInteractionSource2)) {
                        i18 = 16384;
                    } else {
                        i18 = 8192;
                    }
                    i12 |= i18;
                }
                if ((i11 & 32) != 0) {
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(content)) {
                            i19 = 131072;
                        } else {
                            i19 = 65536;
                        }
                    }
                    if ((374491 & i12) == 74898) {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    } else {
                        if (i20 != 0) {
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
                            mutableInteractionSource2 = (MutableInteractionSource) objH;
                        }
                        MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                        mutableInteractionSource3 = mutableInteractionSource2;
                        modifier2 = modifier3;
                        z12 = z11;
                        paddingValues3 = paddingValuesA;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
                }
                i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                i12 |= i19;
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            mutableInteractionSource2 = mutableInteractionSource;
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            } else {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
        }
        i12 |= 3072;
        paddingValues2 = paddingValues;
        i17 = i11 & 16;
        if (i17 != 0) {
            if ((i10 & 57344) == 0) {
                mutableInteractionSource2 = mutableInteractionSource;
                if (composerS.k(mutableInteractionSource2)) {
                    i18 = 16384;
                } else {
                    i18 = 8192;
                }
                i12 |= i18;
            }
            if ((i11 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.k(content)) {
                        i19 = 131072;
                    } else {
                        i19 = 65536;
                    }
                }
                if ((374491 & i12) == 74898) {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                } else {
                    if (i20 != 0) {
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
                        mutableInteractionSource2 = (MutableInteractionSource) objH;
                    }
                    MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                    mutableInteractionSource3 = mutableInteractionSource2;
                    modifier2 = modifier3;
                    z12 = z11;
                    paddingValues3 = paddingValuesA;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
            }
            i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i12 |= i19;
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            } else {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        mutableInteractionSource2 = mutableInteractionSource;
        if ((i11 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.k(content)) {
                    i19 = 131072;
                } else {
                    i19 = 65536;
                }
            }
            if ((374491 & i12) == 74898) {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            } else {
                if (i20 != 0) {
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
                    mutableInteractionSource2 = (MutableInteractionSource) objH;
                }
                MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
                mutableInteractionSource3 = mutableInteractionSource2;
                modifier2 = modifier3;
                z12 = z11;
                paddingValues3 = paddingValuesA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
        }
        i19 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i12 |= i19;
        if ((374491 & i12) == 74898) {
            if (i20 != 0) {
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
                mutableInteractionSource2 = (MutableInteractionSource) objH;
            }
            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
            mutableInteractionSource3 = mutableInteractionSource2;
            modifier2 = modifier3;
            z12 = z11;
            paddingValues3 = paddingValuesA;
        } else {
            if (i20 != 0) {
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
                mutableInteractionSource2 = (MutableInteractionSource) objH;
            }
            MenuKt.d(onClick, modifier3, z11, paddingValuesA, mutableInteractionSource2, content, composerS, (i12 & 14) | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (i12 & 57344) | (i12 & 458752), 0);
            mutableInteractionSource3 = mutableInteractionSource2;
            modifier2 = modifier3;
            z12 = z11;
            paddingValues3 = paddingValuesA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new AndroidMenu_androidKt$DropdownMenuItem$2(onClick, modifier2, z12, paddingValues3, mutableInteractionSource3, content, i10, i11));
    }
}
