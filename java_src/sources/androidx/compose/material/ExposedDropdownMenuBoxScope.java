package androidx.compose.material;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.material.internal.ExposedDropdownMenuPopupKt;
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
import androidx.compose.ui.unit.DpOffset;
import e8.a;
import e8.p;
import e8.q;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
@ExperimentalMaterialApi
public interface ExposedDropdownMenuBoxScope {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:36:0x006b  */
        /* JADX WARN: Code duplicated, block: B:37:0x006e  */
        /* JADX WARN: Code duplicated, block: B:39:0x0072  */
        /* JADX WARN: Code duplicated, block: B:41:0x0078  */
        /* JADX WARN: Code duplicated, block: B:42:0x007b  */
        /* JADX WARN: Code duplicated, block: B:46:0x0082  */
        /* JADX WARN: Code duplicated, block: B:47:0x0087  */
        /* JADX WARN: Code duplicated, block: B:49:0x008f  */
        /* JADX WARN: Code duplicated, block: B:51:0x0095  */
        /* JADX WARN: Code duplicated, block: B:52:0x0098  */
        /* JADX WARN: Code duplicated, block: B:60:0x00b1 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:61:0x00b3  */
        /* JADX WARN: Code duplicated, block: B:62:0x00b8  */
        /* JADX WARN: Code duplicated, block: B:65:0x00cc  */
        /* JADX WARN: Code duplicated, block: B:68:0x00ef  */
        /* JADX WARN: Code duplicated, block: B:72:0x00ff  */
        /* JADX WARN: Code duplicated, block: B:74:0x010c  */
        /* JADX WARN: Code duplicated, block: B:77:0x0146  */
        /* JADX WARN: Code duplicated, block: B:79:0x014c  */
        /* JADX WARN: Code duplicated, block: B:85:0x0192  */
        /* JADX WARN: Code duplicated, block: B:87:? A[RETURN, SYNTHETIC] */
        @Composable
        @ComposableInferredTarget
        public static void a(@NotNull ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope, boolean z6, @NotNull a<l0> onDismissRequest, @Nullable Modifier modifier, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> content, @Nullable Composer composer, int i10, int i11) {
            int i12;
            Modifier modifier2;
            int i13;
            int i14;
            Modifier modifier3;
            Object objH;
            Composer.Companion companion;
            MutableTransitionState mutableTransitionState;
            Object objH2;
            MutableState mutableState;
            boolean zK;
            Object objH3;
            Modifier modifier4;
            ScopeUpdateScope scopeUpdateScopeU;
            t.j(onDismissRequest, "onDismissRequest");
            t.j(content, "content");
            Composer composerS = composer.s(-1165636223);
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
            int i15 = i11 & 4;
            if (i15 == 0) {
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
                if ((i11 & 16) != 0) {
                    i12 |= CpioConstants.C_ISBLK;
                } else if ((57344 & i10) == 0) {
                    if (composerS.k(exposedDropdownMenuBoxScope)) {
                        i14 = 16384;
                    } else {
                        i14 = 8192;
                    }
                    i12 |= i14;
                }
                if ((46811 & i12) == 9362 || !composerS.b()) {
                    if (i15 != 0) {
                        modifier3 = Modifier.Companion;
                    } else {
                        modifier3 = modifier2;
                    }
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
                        long jB = DpOffset.Companion.b();
                        composerS.G(1157296644);
                        zK = composerS.k(mutableState);
                        objH3 = composerS.H();
                        if (zK || objH3 == companion.a()) {
                            objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                            composerS.z(objH3);
                        }
                        composerS.Q();
                        ExposedDropdownMenuPopupKt.a(onDismissRequest, new DropdownMenuPositionProvider(jB, density, (p) objH3, null), ComposableLambdaKt.b(composerS, -406650841, true, new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1(mutableTransitionState, mutableState, exposedDropdownMenuBoxScope, modifier3, content, i12)), composerS, ((i12 >> 3) & 14) | 384, 0);
                    }
                    modifier4 = modifier3;
                } else {
                    composerS.g();
                    modifier4 = modifier2;
                    composerS = composerS;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2(exposedDropdownMenuBoxScope, z6, onDismissRequest, modifier4, content, i10, i11));
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
            if ((i11 & 16) != 0) {
                i12 |= CpioConstants.C_ISBLK;
            } else if ((57344 & i10) == 0) {
                if (composerS.k(exposedDropdownMenuBoxScope)) {
                    i14 = 16384;
                } else {
                    i14 = 8192;
                }
                i12 |= i14;
            }
            if ((46811 & i12) == 9362) {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
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
                    long jB2 = DpOffset.Companion.b();
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    ExposedDropdownMenuPopupKt.a(onDismissRequest, new DropdownMenuPositionProvider(jB2, density2, (p) objH3, null), ComposableLambdaKt.b(composerS, -406650841, true, new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1(mutableTransitionState, mutableState, exposedDropdownMenuBoxScope, modifier3, content, i12)), composerS, ((i12 >> 3) & 14) | 384, 0);
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
                    long jB3 = DpOffset.Companion.b();
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    ExposedDropdownMenuPopupKt.a(onDismissRequest, new DropdownMenuPositionProvider(jB3, density3, (p) objH3, null), ComposableLambdaKt.b(composerS, -406650841, true, new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1(mutableTransitionState, mutableState, exposedDropdownMenuBoxScope, modifier3, content, i12)), composerS, ((i12 >> 3) & 14) | 384, 0);
                }
                modifier4 = modifier3;
            } else {
                if (i15 != 0) {
                    modifier3 = Modifier.Companion;
                } else {
                    modifier3 = modifier2;
                }
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
                    long jB4 = DpOffset.Companion.b();
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    ExposedDropdownMenuPopupKt.a(onDismissRequest, new DropdownMenuPositionProvider(jB4, density4, (p) objH3, null), ComposableLambdaKt.b(composerS, -406650841, true, new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1(mutableTransitionState, mutableState, exposedDropdownMenuBoxScope, modifier3, content, i12)), composerS, ((i12 >> 3) & 14) | 384, 0);
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
                    long jB5 = DpOffset.Companion.b();
                    composerS.G(1157296644);
                    zK = composerS.k(mutableState);
                    objH3 = composerS.H();
                    if (zK) {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    } else {
                        objH3 = new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$popupPositionProvider$1$1(mutableState);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    ExposedDropdownMenuPopupKt.a(onDismissRequest, new DropdownMenuPositionProvider(jB5, density5, (p) objH3, null), ComposableLambdaKt.b(composerS, -406650841, true, new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$1(mutableTransitionState, mutableState, exposedDropdownMenuBoxScope, modifier3, content, i12)), composerS, ((i12 >> 3) & 14) | 384, 0);
                }
                modifier4 = modifier3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new ExposedDropdownMenuBoxScope$ExposedDropdownMenu$2(exposedDropdownMenuBoxScope, z6, onDismissRequest, modifier4, content, i10, i11));
        }

        public static /* synthetic */ Modifier b(ExposedDropdownMenuBoxScope exposedDropdownMenuBoxScope, Modifier modifier, boolean z6, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: exposedDropdownSize");
            }
            if ((i10 & 1) != 0) {
                z6 = true;
            }
            return exposedDropdownMenuBoxScope.b(modifier, z6);
        }
    }

    @Composable
    @ComposableInferredTarget
    void a(boolean z6, @NotNull a<l0> aVar, @Nullable Modifier modifier, @NotNull q<? super ColumnScope, ? super Composer, ? super Integer, l0> qVar, @Nullable Composer composer, int i10, int i11);

    @NotNull
    Modifier b(@NotNull Modifier modifier, boolean z6);
}
