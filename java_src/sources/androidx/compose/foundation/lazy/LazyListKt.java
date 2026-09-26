package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ClipScrollableContainerKt;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyListKt {
    /* JADX WARN: Code duplicated, block: B:101:0x013c  */
    /* JADX WARN: Code duplicated, block: B:102:0x013f  */
    /* JADX WARN: Code duplicated, block: B:106:0x0147  */
    /* JADX WARN: Code duplicated, block: B:107:0x014c  */
    /* JADX WARN: Code duplicated, block: B:109:0x0152  */
    /* JADX WARN: Code duplicated, block: B:111:0x0158  */
    /* JADX WARN: Code duplicated, block: B:112:0x015b  */
    /* JADX WARN: Code duplicated, block: B:114:0x0160  */
    /* JADX WARN: Code duplicated, block: B:117:0x0166  */
    /* JADX WARN: Code duplicated, block: B:118:0x0169  */
    /* JADX WARN: Code duplicated, block: B:120:0x016d  */
    /* JADX WARN: Code duplicated, block: B:122:0x0173  */
    /* JADX WARN: Code duplicated, block: B:123:0x0176  */
    /* JADX WARN: Code duplicated, block: B:127:0x0183  */
    /* JADX WARN: Code duplicated, block: B:133:0x019e  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:141:0x01af  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:144:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01b9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01df  */
    /* JADX WARN: Code duplicated, block: B:151:0x0203  */
    /* JADX WARN: Code duplicated, block: B:154:0x0237  */
    /* JADX WARN: Code duplicated, block: B:156:0x023d  */
    /* JADX WARN: Code duplicated, block: B:159:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:161:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:164:0x032a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:166:0x032f  */
    /* JADX WARN: Code duplicated, block: B:171:0x035d  */
    /* JADX WARN: Code duplicated, block: B:173:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:65:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:67:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:69:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:71:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:72:0x00df  */
    /* JADX WARN: Code duplicated, block: B:76:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:77:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:79:0x00f6  */
    /* JADX WARN: Code duplicated, block: B:81:0x00fc  */
    /* JADX WARN: Code duplicated, block: B:82:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:86:0x0109  */
    /* JADX WARN: Code duplicated, block: B:87:0x0110  */
    /* JADX WARN: Code duplicated, block: B:89:0x0116  */
    /* JADX WARN: Code duplicated, block: B:91:0x011c  */
    /* JADX WARN: Code duplicated, block: B:92:0x011f  */
    /* JADX WARN: Code duplicated, block: B:96:0x0127  */
    /* JADX WARN: Code duplicated, block: B:97:0x012e  */
    /* JADX WARN: Code duplicated, block: B:99:0x0136  */
    @ComposableTarget
    @Composable
    public static final void a(@NotNull Modifier modifier, @NotNull LazyListState state, @NotNull PaddingValues contentPadding, boolean z6, boolean z10, @NotNull FlingBehavior flingBehavior, boolean z11, @Nullable Alignment.Horizontal horizontal, @Nullable Arrangement.Vertical vertical, @Nullable Alignment.Vertical vertical2, @Nullable Arrangement.Horizontal horizontal2, @NotNull l<? super LazyListScope, l0> content, @Nullable Composer composer, int i10, int i11, int i12) {
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
        Alignment.Horizontal horizontal3;
        Arrangement.Vertical vertical3;
        Alignment.Vertical vertical4;
        Arrangement.Horizontal horizontal4;
        Object objH;
        Composer.Companion companion;
        Object objH2;
        o0 o0VarA;
        boolean zK;
        Object objH3;
        Composer composer2;
        Orientation orientation;
        boolean z12;
        boolean z13;
        Alignment.Horizontal horizontal5;
        Arrangement.Vertical vertical5;
        Alignment.Vertical vertical6;
        Arrangement.Horizontal horizontal6;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(modifier, "modifier");
        t.j(state, "state");
        t.j(contentPadding, "contentPadding");
        t.j(flingBehavior, "flingBehavior");
        t.j(content, "content");
        Composer composerS = composer.s(955299798);
        if ((i12 & 1) != 0) {
            i13 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i13 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i13 = i10;
        }
        if ((i12 & 2) != 0) {
            i13 |= 48;
        } else if ((i10 & 112) == 0) {
            i13 |= composerS.k(state) ? 32 : 16;
        }
        if ((i12 & 4) != 0) {
            i13 |= 384;
        } else if ((i10 & 896) == 0) {
            i13 |= composerS.k(contentPadding) ? 256 : 128;
        }
        if ((i12 & 8) != 0) {
            i13 |= 3072;
        } else if ((i10 & 7168) == 0) {
            i13 |= composerS.m(z6) ? 2048 : 1024;
        }
        if ((i12 & 16) != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((i10 & 57344) == 0) {
            i13 |= composerS.m(z10) ? 16384 : 8192;
        }
        if ((i12 & 32) == 0) {
            if ((i10 & 458752) == 0) {
                i14 = composerS.k(flingBehavior) ? 131072 : 65536;
            }
            if ((i12 & 64) != 0) {
                if ((i10 & 3670016) == 0) {
                    if (composerS.m(z11)) {
                        i15 = 1048576;
                    } else {
                        i15 = 524288;
                    }
                    i13 |= i15;
                }
                i16 = i12 & 128;
                if (i16 != 0) {
                    i13 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.k(horizontal)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i13 |= i17;
                }
                i18 = i12 & 256;
                if (i18 != 0) {
                    i13 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.k(vertical)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                    i13 |= i19;
                }
                i20 = i12 & 512;
                if (i20 != 0) {
                    i13 |= 805306368;
                } else if ((i10 & 1879048192) == 0) {
                    if (composerS.k(vertical2)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                    i13 |= i21;
                }
                i22 = i12 & 1024;
                if (i22 != 0) {
                    i23 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(horizontal2)) {
                        i24 = 4;
                    } else {
                        i24 = 2;
                    }
                    i23 = i11 | i24;
                } else {
                    i23 = i11;
                }
                if ((i12 & 2048) != 0) {
                    i23 |= 48;
                } else if ((i11 & 112) == 0) {
                    if (composerS.k(content)) {
                        i25 = 32;
                    } else {
                        i25 = 16;
                    }
                    i23 |= i25;
                }
                if ((1533916891 & i13) != 306783378 && (i23 & 91) == 18 && composerS.b()) {
                    composerS.g();
                    vertical5 = vertical;
                    vertical6 = vertical2;
                    horizontal6 = horizontal2;
                    composer2 = composerS;
                    horizontal5 = horizontal;
                } else {
                    if (i16 != 0) {
                        horizontal3 = null;
                    } else {
                        horizontal3 = horizontal;
                    }
                    if (i18 != 0) {
                        vertical3 = null;
                    } else {
                        vertical3 = vertical;
                    }
                    if (i20 != 0) {
                        vertical4 = null;
                    } else {
                        vertical4 = vertical2;
                    }
                    if (i22 != 0) {
                        horizontal4 = null;
                    } else {
                        horizontal4 = horizontal2;
                    }
                    OverscrollEffect overscrollEffectB = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i26 = i13 >> 3;
                    LazyListItemProvider lazyListItemProviderD = LazyListItemProviderImplKt.d(state, content, composerS, (i26 & 14) | (i23 & 112));
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        objH = new LazyListBeyondBoundsInfo();
                        composerS.z(objH);
                    }
                    composerS.Q();
                    LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo = (LazyListBeyondBoundsInfo) objH;
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH2 = composerS.H();
                    if (objH2 == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller);
                        objH2 = compositionScopedCoroutineScopeCanceller;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
                    composerS.Q();
                    Boolean boolValueOf = Boolean.valueOf(z10);
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf) | composerS.k(state);
                    objH3 = composerS.H();
                    if (zK || objH3 == companion.a()) {
                        objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH3);
                    }
                    composerS.Q();
                    LazyListItemPlacementAnimator lazyListItemPlacementAnimator = (LazyListItemPlacementAnimator) objH3;
                    state.y(lazyListItemPlacementAnimator);
                    int i27 = i13 & 112;
                    int i28 = MutableVector.$stable;
                    int i29 = i13 << 6;
                    int i30 = i29 & 458752;
                    int i31 = i13;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF = f(lazyListItemProviderD, state, lazyListBeyondBoundsInfo, overscrollEffectB, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator, composerS, (i26 & 234881024) | (i28 << 6) | i27 | (i29 & 57344) | i30 | (i29 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
                    composer2 = composerS;
                    b(lazyListItemProviderD, state, composer2, i27);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation2 = orientation;
                    Modifier modifierA = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD, state, o0VarA, z10, z6, z11, composer2, ((i31 << 3) & 896) | 4096 | (i31 & 57344) | i30 | (i31 & 3670016)), orientation2), state, lazyListBeyondBoundsInfo, z6, composer2, (i28 << 6) | i27 | (i31 & 7168)), state, lazyListBeyondBoundsInfo, composer2, (i28 << 6) | i27), overscrollEffectB);
                    composer2.G(-908836175);
                    z12 = !z6;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl || z10) {
                        z13 = z12;
                    } else {
                        z13 = z6;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyListItemProviderD, ScrollableKt.h(modifierA, state, orientation2, overscrollEffectB, z11, z13, flingBehavior, state.l()), state.o(), pVarF, composer2, 0, 0);
                    horizontal5 = horizontal3;
                    vertical5 = vertical3;
                    vertical6 = vertical4;
                    horizontal6 = horizontal4;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyListKt$LazyList$2(modifier, state, contentPadding, z6, z10, flingBehavior, z11, horizontal5, vertical5, vertical6, horizontal6, content, i10, i11, i12));
            }
            i13 |= 1572864;
            i16 = i12 & 128;
            if (i16 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(horizontal)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i13 |= i17;
            }
            i18 = i12 & 256;
            if (i18 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(vertical)) {
                    i19 = 67108864;
                } else {
                    i19 = 33554432;
                }
                i13 |= i19;
            }
            i20 = i12 & 512;
            if (i20 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(vertical2)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i13 |= i21;
            }
            i22 = i12 & 1024;
            if (i22 != 0) {
                i23 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(horizontal2)) {
                    i24 = 4;
                } else {
                    i24 = 2;
                }
                i23 = i11 | i24;
            } else {
                i23 = i11;
            }
            if ((i12 & 2048) != 0) {
                i23 |= 48;
            } else if ((i11 & 112) == 0) {
                if (composerS.k(content)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i23 |= i25;
            }
            if ((1533916891 & i13) != 306783378) {
                if (i16 != 0) {
                    horizontal3 = null;
                } else {
                    horizontal3 = horizontal;
                }
                if (i18 != 0) {
                    vertical3 = null;
                } else {
                    vertical3 = vertical;
                }
                if (i20 != 0) {
                    vertical4 = null;
                } else {
                    vertical4 = vertical2;
                }
                if (i22 != 0) {
                    horizontal4 = null;
                } else {
                    horizontal4 = horizontal2;
                }
                OverscrollEffect overscrollEffectB2 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i210 = i13 >> 3;
                LazyListItemProvider lazyListItemProviderD2 = LazyListItemProviderImplKt.d(state, content, composerS, (i210 & 14) | (i23 & 112));
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyListBeyondBoundsInfo();
                    composerS.z(objH);
                }
                composerS.Q();
                LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo2 = (LazyListBeyondBoundsInfo) objH;
                composerS.G(773894976);
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller2 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller2);
                    objH2 = compositionScopedCoroutineScopeCanceller2;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
                composerS.Q();
                Boolean boolValueOf2 = Boolean.valueOf(z10);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf2) | composerS.k(state);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                }
                composerS.Q();
                LazyListItemPlacementAnimator lazyListItemPlacementAnimator2 = (LazyListItemPlacementAnimator) objH3;
                state.y(lazyListItemPlacementAnimator2);
                int i211 = i13 & 112;
                int i212 = MutableVector.$stable;
                int i213 = i13 << 6;
                int i32 = i213 & 458752;
                int i33 = i13;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF2 = f(lazyListItemProviderD2, state, lazyListBeyondBoundsInfo2, overscrollEffectB2, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator2, composerS, (i210 & 234881024) | (i212 << 6) | i211 | (i213 & 57344) | i32 | (i213 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
                composer2 = composerS;
                b(lazyListItemProviderD2, state, composer2, i211);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation3 = orientation;
                Modifier modifierA2 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD2, state, o0VarA, z10, z6, z11, composer2, ((i33 << 3) & 896) | 4096 | (i33 & 57344) | i32 | (i33 & 3670016)), orientation3), state, lazyListBeyondBoundsInfo2, z6, composer2, (i212 << 6) | i211 | (i33 & 7168)), state, lazyListBeyondBoundsInfo2, composer2, (i212 << 6) | i211), overscrollEffectB2);
                composer2.G(-908836175);
                z12 = !z6;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z13 = z12;
                } else {
                    z13 = z12;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyListItemProviderD2, ScrollableKt.h(modifierA2, state, orientation3, overscrollEffectB2, z11, z13, flingBehavior, state.l()), state.o(), pVarF2, composer2, 0, 0);
                horizontal5 = horizontal3;
                vertical5 = vertical3;
                vertical6 = vertical4;
                horizontal6 = horizontal4;
            } else {
                if (i16 != 0) {
                    horizontal3 = null;
                } else {
                    horizontal3 = horizontal;
                }
                if (i18 != 0) {
                    vertical3 = null;
                } else {
                    vertical3 = vertical;
                }
                if (i20 != 0) {
                    vertical4 = null;
                } else {
                    vertical4 = vertical2;
                }
                if (i22 != 0) {
                    horizontal4 = null;
                } else {
                    horizontal4 = horizontal2;
                }
                OverscrollEffect overscrollEffectB3 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i214 = i13 >> 3;
                LazyListItemProvider lazyListItemProviderD3 = LazyListItemProviderImplKt.d(state, content, composerS, (i214 & 14) | (i23 & 112));
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyListBeyondBoundsInfo();
                    composerS.z(objH);
                }
                composerS.Q();
                LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo3 = (LazyListBeyondBoundsInfo) objH;
                composerS.G(773894976);
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller3 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller3);
                    objH2 = compositionScopedCoroutineScopeCanceller3;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
                composerS.Q();
                Boolean boolValueOf3 = Boolean.valueOf(z10);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf3) | composerS.k(state);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                }
                composerS.Q();
                LazyListItemPlacementAnimator lazyListItemPlacementAnimator3 = (LazyListItemPlacementAnimator) objH3;
                state.y(lazyListItemPlacementAnimator3);
                int i215 = i13 & 112;
                int i216 = MutableVector.$stable;
                int i217 = i13 << 6;
                int i34 = i217 & 458752;
                int i35 = i13;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF3 = f(lazyListItemProviderD3, state, lazyListBeyondBoundsInfo3, overscrollEffectB3, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator3, composerS, (i214 & 234881024) | (i216 << 6) | i215 | (i217 & 57344) | i34 | (i217 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
                composer2 = composerS;
                b(lazyListItemProviderD3, state, composer2, i215);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation4 = orientation;
                Modifier modifierA3 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD3, state, o0VarA, z10, z6, z11, composer2, ((i35 << 3) & 896) | 4096 | (i35 & 57344) | i34 | (i35 & 3670016)), orientation4), state, lazyListBeyondBoundsInfo3, z6, composer2, (i216 << 6) | i215 | (i35 & 7168)), state, lazyListBeyondBoundsInfo3, composer2, (i216 << 6) | i215), overscrollEffectB3);
                composer2.G(-908836175);
                z12 = !z6;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z13 = z12;
                } else {
                    z13 = z12;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyListItemProviderD3, ScrollableKt.h(modifierA3, state, orientation4, overscrollEffectB3, z11, z13, flingBehavior, state.l()), state.o(), pVarF3, composer2, 0, 0);
                horizontal5 = horizontal3;
                vertical5 = vertical3;
                vertical6 = vertical4;
                horizontal6 = horizontal4;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyListKt$LazyList$2(modifier, state, contentPadding, z6, z10, flingBehavior, z11, horizontal5, vertical5, vertical6, horizontal6, content, i10, i11, i12));
        }
        i14 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i13 |= i14;
        if ((i12 & 64) != 0) {
            if ((i10 & 3670016) == 0) {
                if (composerS.m(z11)) {
                    i15 = 1048576;
                } else {
                    i15 = 524288;
                }
                i13 |= i15;
            }
            i16 = i12 & 128;
            if (i16 != 0) {
                i13 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.k(horizontal)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i13 |= i17;
            }
            i18 = i12 & 256;
            if (i18 != 0) {
                i13 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.k(vertical)) {
                    i19 = 67108864;
                } else {
                    i19 = 33554432;
                }
                i13 |= i19;
            }
            i20 = i12 & 512;
            if (i20 != 0) {
                i13 |= 805306368;
            } else if ((i10 & 1879048192) == 0) {
                if (composerS.k(vertical2)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
                i13 |= i21;
            }
            i22 = i12 & 1024;
            if (i22 != 0) {
                i23 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(horizontal2)) {
                    i24 = 4;
                } else {
                    i24 = 2;
                }
                i23 = i11 | i24;
            } else {
                i23 = i11;
            }
            if ((i12 & 2048) != 0) {
                i23 |= 48;
            } else if ((i11 & 112) == 0) {
                if (composerS.k(content)) {
                    i25 = 32;
                } else {
                    i25 = 16;
                }
                i23 |= i25;
            }
            if ((1533916891 & i13) != 306783378) {
                if (i16 != 0) {
                    horizontal3 = null;
                } else {
                    horizontal3 = horizontal;
                }
                if (i18 != 0) {
                    vertical3 = null;
                } else {
                    vertical3 = vertical;
                }
                if (i20 != 0) {
                    vertical4 = null;
                } else {
                    vertical4 = vertical2;
                }
                if (i22 != 0) {
                    horizontal4 = null;
                } else {
                    horizontal4 = horizontal2;
                }
                OverscrollEffect overscrollEffectB4 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i218 = i13 >> 3;
                LazyListItemProvider lazyListItemProviderD4 = LazyListItemProviderImplKt.d(state, content, composerS, (i218 & 14) | (i23 & 112));
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyListBeyondBoundsInfo();
                    composerS.z(objH);
                }
                composerS.Q();
                LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo4 = (LazyListBeyondBoundsInfo) objH;
                composerS.G(773894976);
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller4 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller4);
                    objH2 = compositionScopedCoroutineScopeCanceller4;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
                composerS.Q();
                Boolean boolValueOf4 = Boolean.valueOf(z10);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf4) | composerS.k(state);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                }
                composerS.Q();
                LazyListItemPlacementAnimator lazyListItemPlacementAnimator4 = (LazyListItemPlacementAnimator) objH3;
                state.y(lazyListItemPlacementAnimator4);
                int i219 = i13 & 112;
                int i2110 = MutableVector.$stable;
                int i2111 = i13 << 6;
                int i36 = i2111 & 458752;
                int i37 = i13;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF4 = f(lazyListItemProviderD4, state, lazyListBeyondBoundsInfo4, overscrollEffectB4, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator4, composerS, (i218 & 234881024) | (i2110 << 6) | i219 | (i2111 & 57344) | i36 | (i2111 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
                composer2 = composerS;
                b(lazyListItemProviderD4, state, composer2, i219);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation5 = orientation;
                Modifier modifierA4 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD4, state, o0VarA, z10, z6, z11, composer2, ((i37 << 3) & 896) | 4096 | (i37 & 57344) | i36 | (i37 & 3670016)), orientation5), state, lazyListBeyondBoundsInfo4, z6, composer2, (i2110 << 6) | i219 | (i37 & 7168)), state, lazyListBeyondBoundsInfo4, composer2, (i2110 << 6) | i219), overscrollEffectB4);
                composer2.G(-908836175);
                z12 = !z6;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z13 = z12;
                } else {
                    z13 = z12;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyListItemProviderD4, ScrollableKt.h(modifierA4, state, orientation5, overscrollEffectB4, z11, z13, flingBehavior, state.l()), state.o(), pVarF4, composer2, 0, 0);
                horizontal5 = horizontal3;
                vertical5 = vertical3;
                vertical6 = vertical4;
                horizontal6 = horizontal4;
            } else {
                if (i16 != 0) {
                    horizontal3 = null;
                } else {
                    horizontal3 = horizontal;
                }
                if (i18 != 0) {
                    vertical3 = null;
                } else {
                    vertical3 = vertical;
                }
                if (i20 != 0) {
                    vertical4 = null;
                } else {
                    vertical4 = vertical2;
                }
                if (i22 != 0) {
                    horizontal4 = null;
                } else {
                    horizontal4 = horizontal2;
                }
                OverscrollEffect overscrollEffectB5 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i2112 = i13 >> 3;
                LazyListItemProvider lazyListItemProviderD5 = LazyListItemProviderImplKt.d(state, content, composerS, (i2112 & 14) | (i23 & 112));
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    objH = new LazyListBeyondBoundsInfo();
                    composerS.z(objH);
                }
                composerS.Q();
                LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo5 = (LazyListBeyondBoundsInfo) objH;
                composerS.G(773894976);
                composerS.G(-492369756);
                objH2 = composerS.H();
                if (objH2 == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller5 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller5);
                    objH2 = compositionScopedCoroutineScopeCanceller5;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
                composerS.Q();
                Boolean boolValueOf5 = Boolean.valueOf(z10);
                composerS.G(511388516);
                zK = composerS.k(boolValueOf5) | composerS.k(state);
                objH3 = composerS.H();
                if (zK) {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                } else {
                    objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH3);
                }
                composerS.Q();
                LazyListItemPlacementAnimator lazyListItemPlacementAnimator5 = (LazyListItemPlacementAnimator) objH3;
                state.y(lazyListItemPlacementAnimator5);
                int i2113 = i13 & 112;
                int i2114 = MutableVector.$stable;
                int i2115 = i13 << 6;
                int i38 = i2115 & 458752;
                int i39 = i13;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF5 = f(lazyListItemProviderD5, state, lazyListBeyondBoundsInfo5, overscrollEffectB5, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator5, composerS, (i2112 & 234881024) | (i2114 << 6) | i2113 | (i2115 & 57344) | i38 | (i2115 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
                composer2 = composerS;
                b(lazyListItemProviderD5, state, composer2, i2113);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation6 = orientation;
                Modifier modifierA5 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD5, state, o0VarA, z10, z6, z11, composer2, ((i39 << 3) & 896) | 4096 | (i39 & 57344) | i38 | (i39 & 3670016)), orientation6), state, lazyListBeyondBoundsInfo5, z6, composer2, (i2114 << 6) | i2113 | (i39 & 7168)), state, lazyListBeyondBoundsInfo5, composer2, (i2114 << 6) | i2113), overscrollEffectB5);
                composer2.G(-908836175);
                z12 = !z6;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z13 = z12;
                } else {
                    z13 = z12;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyListItemProviderD5, ScrollableKt.h(modifierA5, state, orientation6, overscrollEffectB5, z11, z13, flingBehavior, state.l()), state.o(), pVarF5, composer2, 0, 0);
                horizontal5 = horizontal3;
                vertical5 = vertical3;
                vertical6 = vertical4;
                horizontal6 = horizontal4;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyListKt$LazyList$2(modifier, state, contentPadding, z6, z10, flingBehavior, z11, horizontal5, vertical5, vertical6, horizontal6, content, i10, i11, i12));
        }
        i13 |= 1572864;
        i16 = i12 & 128;
        if (i16 != 0) {
            i13 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.k(horizontal)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i13 |= i17;
        }
        i18 = i12 & 256;
        if (i18 != 0) {
            i13 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.k(vertical)) {
                i19 = 67108864;
            } else {
                i19 = 33554432;
            }
            i13 |= i19;
        }
        i20 = i12 & 512;
        if (i20 != 0) {
            i13 |= 805306368;
        } else if ((i10 & 1879048192) == 0) {
            if (composerS.k(vertical2)) {
                i21 = 536870912;
            } else {
                i21 = 268435456;
            }
            i13 |= i21;
        }
        i22 = i12 & 1024;
        if (i22 != 0) {
            i23 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            if (composerS.k(horizontal2)) {
                i24 = 4;
            } else {
                i24 = 2;
            }
            i23 = i11 | i24;
        } else {
            i23 = i11;
        }
        if ((i12 & 2048) != 0) {
            i23 |= 48;
        } else if ((i11 & 112) == 0) {
            if (composerS.k(content)) {
                i25 = 32;
            } else {
                i25 = 16;
            }
            i23 |= i25;
        }
        if ((1533916891 & i13) != 306783378) {
            if (i16 != 0) {
                horizontal3 = null;
            } else {
                horizontal3 = horizontal;
            }
            if (i18 != 0) {
                vertical3 = null;
            } else {
                vertical3 = vertical;
            }
            if (i20 != 0) {
                vertical4 = null;
            } else {
                vertical4 = vertical2;
            }
            if (i22 != 0) {
                horizontal4 = null;
            } else {
                horizontal4 = horizontal2;
            }
            OverscrollEffect overscrollEffectB6 = ScrollableDefaults.INSTANCE.b(composerS, 6);
            int i2116 = i13 >> 3;
            LazyListItemProvider lazyListItemProviderD6 = LazyListItemProviderImplKt.d(state, content, composerS, (i2116 & 14) | (i23 & 112));
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new LazyListBeyondBoundsInfo();
                composerS.z(objH);
            }
            composerS.Q();
            LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo6 = (LazyListBeyondBoundsInfo) objH;
            composerS.G(773894976);
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller6 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller6);
                objH2 = compositionScopedCoroutineScopeCanceller6;
            }
            composerS.Q();
            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
            composerS.Q();
            Boolean boolValueOf6 = Boolean.valueOf(z10);
            composerS.G(511388516);
            zK = composerS.k(boolValueOf6) | composerS.k(state);
            objH3 = composerS.H();
            if (zK) {
                objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH3);
            } else {
                objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH3);
            }
            composerS.Q();
            LazyListItemPlacementAnimator lazyListItemPlacementAnimator6 = (LazyListItemPlacementAnimator) objH3;
            state.y(lazyListItemPlacementAnimator6);
            int i2117 = i13 & 112;
            int i2118 = MutableVector.$stable;
            int i2119 = i13 << 6;
            int i310 = i2119 & 458752;
            int i311 = i13;
            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF6 = f(lazyListItemProviderD6, state, lazyListBeyondBoundsInfo6, overscrollEffectB6, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator6, composerS, (i2116 & 234881024) | (i2118 << 6) | i2117 | (i2119 & 57344) | i310 | (i2119 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
            composer2 = composerS;
            b(lazyListItemProviderD6, state, composer2, i2117);
            if (z10) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation7 = orientation;
            Modifier modifierA6 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD6, state, o0VarA, z10, z6, z11, composer2, ((i311 << 3) & 896) | 4096 | (i311 & 57344) | i310 | (i311 & 3670016)), orientation7), state, lazyListBeyondBoundsInfo6, z6, composer2, (i2118 << 6) | i2117 | (i311 & 7168)), state, lazyListBeyondBoundsInfo6, composer2, (i2118 << 6) | i2117), overscrollEffectB6);
            composer2.G(-908836175);
            z12 = !z6;
            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z13 = z12;
            } else {
                z13 = z12;
            }
            composer2.Q();
            LazyLayoutKt.a(lazyListItemProviderD6, ScrollableKt.h(modifierA6, state, orientation7, overscrollEffectB6, z11, z13, flingBehavior, state.l()), state.o(), pVarF6, composer2, 0, 0);
            horizontal5 = horizontal3;
            vertical5 = vertical3;
            vertical6 = vertical4;
            horizontal6 = horizontal4;
        } else {
            if (i16 != 0) {
                horizontal3 = null;
            } else {
                horizontal3 = horizontal;
            }
            if (i18 != 0) {
                vertical3 = null;
            } else {
                vertical3 = vertical;
            }
            if (i20 != 0) {
                vertical4 = null;
            } else {
                vertical4 = vertical2;
            }
            if (i22 != 0) {
                horizontal4 = null;
            } else {
                horizontal4 = horizontal2;
            }
            OverscrollEffect overscrollEffectB7 = ScrollableDefaults.INSTANCE.b(composerS, 6);
            int i21110 = i13 >> 3;
            LazyListItemProvider lazyListItemProviderD7 = LazyListItemProviderImplKt.d(state, content, composerS, (i21110 & 14) | (i23 & 112));
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                objH = new LazyListBeyondBoundsInfo();
                composerS.z(objH);
            }
            composerS.Q();
            LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo7 = (LazyListBeyondBoundsInfo) objH;
            composerS.G(773894976);
            composerS.G(-492369756);
            objH2 = composerS.H();
            if (objH2 == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller7 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller7);
                objH2 = compositionScopedCoroutineScopeCanceller7;
            }
            composerS.Q();
            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH2).a();
            composerS.Q();
            Boolean boolValueOf7 = Boolean.valueOf(z10);
            composerS.G(511388516);
            zK = composerS.k(boolValueOf7) | composerS.k(state);
            objH3 = composerS.H();
            if (zK) {
                objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH3);
            } else {
                objH3 = new LazyListItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH3);
            }
            composerS.Q();
            LazyListItemPlacementAnimator lazyListItemPlacementAnimator7 = (LazyListItemPlacementAnimator) objH3;
            state.y(lazyListItemPlacementAnimator7);
            int i21111 = i13 & 112;
            int i21112 = MutableVector.$stable;
            int i21113 = i13 << 6;
            int i312 = i21113 & 458752;
            int i313 = i13;
            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF7 = f(lazyListItemProviderD7, state, lazyListBeyondBoundsInfo7, overscrollEffectB7, contentPadding, z6, z10, horizontal3, vertical4, horizontal4, vertical3, lazyListItemPlacementAnimator7, composerS, (i21110 & 234881024) | (i21112 << 6) | i21111 | (i21113 & 57344) | i312 | (i21113 & 3670016) | (i13 & 29360128) | ((i23 << 27) & 1879048192), ((i13 >> 24) & 14) | 64, 0);
            composer2 = composerS;
            b(lazyListItemProviderD7, state, composer2, i21111);
            if (z10) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation8 = orientation;
            Modifier modifierA7 = OverscrollKt.a(LazyListPinningModifierKt.a(LazyBeyondBoundsModifierKt.b(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier.B(state.r()).B(state.g()), lazyListItemProviderD7, state, o0VarA, z10, z6, z11, composer2, ((i313 << 3) & 896) | 4096 | (i313 & 57344) | i312 | (i313 & 3670016)), orientation8), state, lazyListBeyondBoundsInfo7, z6, composer2, (i21112 << 6) | i21111 | (i313 & 7168)), state, lazyListBeyondBoundsInfo7, composer2, (i21112 << 6) | i21111), overscrollEffectB7);
            composer2.G(-908836175);
            z12 = !z6;
            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z13 = z12;
            } else {
                z13 = z12;
            }
            composer2.Q();
            LazyLayoutKt.a(lazyListItemProviderD7, ScrollableKt.h(modifierA7, state, orientation8, overscrollEffectB7, z11, z13, flingBehavior, state.l()), state.o(), pVarF7, composer2, 0, 0);
            horizontal5 = horizontal3;
            vertical5 = vertical3;
            vertical6 = vertical4;
            horizontal6 = horizontal4;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyListKt$LazyList$2(modifier, state, contentPadding, z6, z10, flingBehavior, z11, horizontal5, vertical5, vertical6, horizontal6, content, i10, i11, i12));
    }

    @Composable
    @ExperimentalFoundationApi
    private static final p<LazyLayoutMeasureScope, Constraints, MeasureResult> f(LazyListItemProvider lazyListItemProvider, LazyListState lazyListState, LazyListBeyondBoundsInfo lazyListBeyondBoundsInfo, OverscrollEffect overscrollEffect, PaddingValues paddingValues, boolean z6, boolean z10, Alignment.Horizontal horizontal, Alignment.Vertical vertical, Arrangement.Horizontal horizontal2, Arrangement.Vertical vertical2, LazyListItemPlacementAnimator lazyListItemPlacementAnimator, Composer composer, int i10, int i11, int i12) {
        composer.G(-1404987696);
        Alignment.Horizontal horizontal3 = (i12 & 128) != 0 ? null : horizontal;
        Alignment.Vertical vertical3 = (i12 & 256) != 0 ? null : vertical;
        Arrangement.Horizontal horizontal4 = (i12 & 512) != 0 ? null : horizontal2;
        Arrangement.Vertical vertical4 = (i12 & 1024) != 0 ? null : vertical2;
        Object[] objArr = {lazyListState, lazyListBeyondBoundsInfo, overscrollEffect, paddingValues, Boolean.valueOf(z6), Boolean.valueOf(z10), horizontal3, vertical3, horizontal4, vertical4, lazyListItemPlacementAnimator};
        composer.G(-568225417);
        boolean zK = false;
        for (int i13 = 0; i13 < 11; i13++) {
            zK |= composer.k(objArr[i13]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyListKt$rememberLazyListMeasurePolicy$1$1(z10, paddingValues, z6, lazyListState, lazyListItemProvider, vertical4, horizontal4, lazyListItemPlacementAnimator, lazyListBeyondBoundsInfo, horizontal3, vertical3, overscrollEffect);
            composer.z(objH);
        }
        composer.Q();
        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVar = (p) objH;
        composer.Q();
        return pVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    @ExperimentalFoundationApi
    public static final void b(LazyListItemProvider lazyListItemProvider, LazyListState lazyListState, Composer composer, int i10) {
        int i11;
        int i12;
        int i13;
        Composer composerS = composer.s(3173830);
        if ((i10 & 14) == 0) {
            if (composerS.k(lazyListItemProvider)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(lazyListState)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else if (lazyListItemProvider.f() > 0) {
            lazyListState.C(lazyListItemProvider);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new LazyListKt$ScrollPositionUpdater$1(lazyListItemProvider, lazyListState, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(OverscrollEffect overscrollEffect, LazyListMeasureResult lazyListMeasureResult) {
        boolean z6;
        boolean zE = lazyListMeasureResult.e();
        LazyMeasuredItem lazyMeasuredItemG = lazyListMeasureResult.g();
        boolean z10 = true;
        if ((lazyMeasuredItemG != null && lazyMeasuredItemG.b() != 0) || lazyListMeasureResult.h() != 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (!zE && !z6) {
            z10 = false;
        }
        overscrollEffect.setEnabled(z10);
    }
}
