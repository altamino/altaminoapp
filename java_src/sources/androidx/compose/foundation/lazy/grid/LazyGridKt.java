package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.ClipScrollableContainerKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.OverscrollKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0139  */
    /* JADX WARN: Code duplicated, block: B:103:0x013f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0142  */
    /* JADX WARN: Code duplicated, block: B:107:0x0149  */
    /* JADX WARN: Code duplicated, block: B:108:0x014c  */
    /* JADX WARN: Code duplicated, block: B:110:0x0150  */
    /* JADX WARN: Code duplicated, block: B:112:0x0156  */
    /* JADX WARN: Code duplicated, block: B:113:0x0158  */
    /* JADX WARN: Code duplicated, block: B:115:0x015c  */
    /* JADX WARN: Code duplicated, block: B:118:0x0168  */
    /* JADX WARN: Code duplicated, block: B:124:0x0181  */
    /* JADX WARN: Code duplicated, block: B:126:0x0189  */
    /* JADX WARN: Code duplicated, block: B:133:0x01a4 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:134:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:135:0x01a9  */
    /* JADX WARN: Code duplicated, block: B:138:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:142:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:145:0x01c2  */
    /* JADX WARN: Code duplicated, block: B:146:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:149:0x020a  */
    /* JADX WARN: Code duplicated, block: B:152:0x0240  */
    /* JADX WARN: Code duplicated, block: B:154:0x0246  */
    /* JADX WARN: Code duplicated, block: B:157:0x02b0  */
    /* JADX WARN: Code duplicated, block: B:159:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:162:0x0307 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:164:0x030c  */
    /* JADX WARN: Code duplicated, block: B:169:0x033a  */
    /* JADX WARN: Code duplicated, block: B:171:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:46:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00af  */
    /* JADX WARN: Code duplicated, block: B:51:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:52:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:56:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:58:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:62:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:63:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:66:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:68:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:73:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:76:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:78:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:80:0x0103  */
    /* JADX WARN: Code duplicated, block: B:82:0x010b  */
    /* JADX WARN: Code duplicated, block: B:83:0x010e  */
    /* JADX WARN: Code duplicated, block: B:87:0x0118  */
    /* JADX WARN: Code duplicated, block: B:89:0x011c  */
    /* JADX WARN: Code duplicated, block: B:91:0x0120  */
    /* JADX WARN: Code duplicated, block: B:93:0x0126  */
    /* JADX WARN: Code duplicated, block: B:94:0x0129  */
    /* JADX WARN: Code duplicated, block: B:97:0x0130  */
    /* JADX WARN: Code duplicated, block: B:99:0x0134  */
    @ComposableTarget
    @Composable
    public static final void a(@Nullable Modifier modifier, @NotNull LazyGridState state, @NotNull p<? super Density, ? super Constraints, ? extends List<Integer>> slotSizesSums, @Nullable PaddingValues paddingValues, boolean z6, boolean z10, @Nullable FlingBehavior flingBehavior, boolean z11, @NotNull Arrangement.Vertical verticalArrangement, @NotNull Arrangement.Horizontal horizontalArrangement, @NotNull l<? super LazyGridScope, l0> content, @Nullable Composer composer, int i10, int i11, int i12) {
        int i13;
        PaddingValues paddingValues2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int i20;
        int i21;
        Modifier modifier2;
        PaddingValues paddingValuesA;
        boolean z12;
        FlingBehavior flingBehaviorA;
        Modifier modifier3;
        boolean z13;
        PaddingValues paddingValues3;
        Object objH;
        Composer.Companion companion;
        o0 o0VarA;
        boolean zK;
        Object objH2;
        Composer composer2;
        Orientation orientation;
        boolean z14;
        boolean z15;
        PaddingValues paddingValues4;
        Modifier modifier4;
        boolean z16;
        FlingBehavior flingBehavior2;
        ScopeUpdateScope scopeUpdateScopeU;
        int i22;
        t.j(state, "state");
        t.j(slotSizesSums, "slotSizesSums");
        t.j(verticalArrangement, "verticalArrangement");
        t.j(horizontalArrangement, "horizontalArrangement");
        t.j(content, "content");
        Composer composerS = composer.s(152645664);
        int i23 = i12 & 1;
        if (i23 != 0) {
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
            i13 |= composerS.k(slotSizesSums) ? 256 : 128;
        }
        int i24 = i12 & 8;
        if (i24 == 0) {
            if ((i10 & 7168) == 0) {
                paddingValues2 = paddingValues;
                i13 |= composerS.k(paddingValues2) ? 2048 : 1024;
            }
            i14 = i12 & 16;
            if (i14 != 0) {
                i13 |= CpioConstants.C_ISBLK;
            } else if ((i10 & 57344) == 0) {
                if (composerS.m(z6)) {
                    i15 = 16384;
                } else {
                    i15 = 8192;
                }
                i13 |= i15;
            }
            if ((i12 & 32) != 0) {
                if ((i10 & 458752) == 0) {
                    if (composerS.m(z10)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                }
                if ((i10 & 3670016) != 0) {
                    if ((i12 & 64) == 0 || !composerS.k(flingBehavior)) {
                        i22 = 524288;
                    } else {
                        i22 = 1048576;
                    }
                    i13 |= i22;
                }
                if ((i12 & 128) != 0) {
                    if ((i10 & 29360128) == 0) {
                        if (composerS.m(z11)) {
                            i17 = 8388608;
                        } else {
                            i17 = 4194304;
                        }
                        i13 |= i17;
                    }
                    if ((i12 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(verticalArrangement)) {
                                i18 = 67108864;
                            } else {
                                i18 = 33554432;
                            }
                        }
                        if ((i12 & 512) != 0) {
                            if ((1879048192 & i10) == 0) {
                                if (composerS.k(horizontalArrangement)) {
                                    i19 = 536870912;
                                } else {
                                    i19 = 268435456;
                                }
                            }
                            if ((i12 & 1024) != 0) {
                                i20 = i11 | 6;
                            } else if ((i11 & 14) == 0) {
                                if (composerS.k(content)) {
                                    i21 = 4;
                                } else {
                                    i21 = 2;
                                }
                                i20 = i11 | i21;
                            } else {
                                i20 = i11;
                            }
                            if ((i13 & 1533916891) != 306783378 && (i20 & 11) == 2 && composerS.b()) {
                                composerS.g();
                                modifier4 = modifier;
                                z16 = z6;
                                paddingValues4 = paddingValues2;
                                composer2 = composerS;
                                flingBehavior2 = flingBehavior;
                            } else {
                                composerS.J();
                                if ((i10 & 1) != 0 || composerS.h()) {
                                    if (i23 != 0) {
                                        modifier2 = Modifier.Companion;
                                    } else {
                                        modifier2 = modifier;
                                    }
                                    if (i24 != 0) {
                                        paddingValuesA = PaddingKt.a(Dp.f(0));
                                    } else {
                                        paddingValuesA = paddingValues2;
                                    }
                                    z12 = i14 == 0 ? z6 : false;
                                    if ((i12 & 64) != 0) {
                                        i13 &= -3670017;
                                        z13 = z12;
                                        paddingValues3 = paddingValuesA;
                                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                        modifier3 = modifier2;
                                    } else {
                                        flingBehaviorA = flingBehavior;
                                        modifier3 = modifier2;
                                        z13 = z12;
                                        paddingValues3 = paddingValuesA;
                                    }
                                } else {
                                    composerS.g();
                                    if ((i12 & 64) != 0) {
                                        i13 &= -3670017;
                                    }
                                    z13 = z6;
                                    flingBehaviorA = flingBehavior;
                                    paddingValues3 = paddingValues2;
                                    modifier3 = modifier;
                                }
                                composerS.A();
                                OverscrollEffect overscrollEffectB = ScrollableDefaults.INSTANCE.b(composerS, 6);
                                int i25 = i13 >> 3;
                                LazyGridItemProvider lazyGridItemProviderD = LazyGridItemProviderImplKt.d(state, content, composerS, (i25 & 14) | ((i20 << 3) & 112));
                                composerS.G(773894976);
                                composerS.G(-492369756);
                                objH = composerS.H();
                                companion = Composer.Companion;
                                if (objH == companion.a()) {
                                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                    composerS.z(compositionScopedCoroutineScopeCanceller);
                                    objH = compositionScopedCoroutineScopeCanceller;
                                }
                                composerS.Q();
                                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                                composerS.Q();
                                Boolean boolValueOf = Boolean.valueOf(z10);
                                Modifier modifier5 = modifier3;
                                composerS.G(511388516);
                                zK = composerS.k(boolValueOf) | composerS.k(state);
                                objH2 = composerS.H();
                                if (zK || objH2 == companion.a()) {
                                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                    composerS.z(objH2);
                                }
                                composerS.Q();
                                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator = (LazyGridItemPlacementAnimator) objH2;
                                state.z(lazyGridItemPlacementAnimator);
                                int i26 = i13 & 112;
                                int i27 = i13 << 3;
                                int i28 = i27 & 458752;
                                composer2 = composerS;
                                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF = f(lazyGridItemProviderD, state, overscrollEffectB, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator, composer2, 1073741824 | i26 | (i27 & 7168) | (i27 & 57344) | i28 | (i27 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                                state.D(z10);
                                b(lazyGridItemProviderD, state, composer2, i26);
                                if (z10) {
                                    orientation = Orientation.Vertical;
                                } else {
                                    orientation = Orientation.Horizontal;
                                }
                                Orientation orientation2 = orientation;
                                Modifier modifierA = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier5.B(state.r()).B(state.g()), lazyGridItemProviderD, state, o0VarA, z10, z13, z11, composer2, (i27 & 896) | 4096 | (i25 & 57344) | i28 | (i25 & 3670016)), orientation2), overscrollEffectB);
                                composer2.G(-1163690407);
                                z14 = !z13;
                                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl || z10) {
                                    z15 = z14;
                                } else {
                                    z15 = z13;
                                }
                                composer2.Q();
                                LazyLayoutKt.a(lazyGridItemProviderD, ScrollableKt.h(modifierA, state, orientation2, overscrollEffectB, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF, composer2, 0, 0);
                                paddingValues4 = paddingValues3;
                                modifier4 = modifier5;
                                z16 = z13;
                                flingBehavior2 = flingBehaviorA;
                            }
                            scopeUpdateScopeU = composer2.u();
                            if (scopeUpdateScopeU == null) {
                                return;
                            }
                            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                        }
                        i19 = 805306368;
                        i13 |= i19;
                        if ((i12 & 1024) != 0) {
                            i20 = i11 | 6;
                        } else if ((i11 & 14) == 0) {
                            if (composerS.k(content)) {
                                i21 = 4;
                            } else {
                                i21 = 2;
                            }
                            i20 = i11 | i21;
                        } else {
                            i20 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB2 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i29 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD2 = LazyGridItemProviderImplKt.d(state, content, composerS, (i29 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller2 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller2);
                                objH = compositionScopedCoroutineScopeCanceller2;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf2 = Boolean.valueOf(z10);
                            Modifier modifier6 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf2) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator2 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator2);
                            int i210 = i13 & 112;
                            int i211 = i13 << 3;
                            int i212 = i211 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF2 = f(lazyGridItemProviderD2, state, overscrollEffectB2, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator2, composer2, 1073741824 | i210 | (i211 & 7168) | (i211 & 57344) | i212 | (i211 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD2, state, composer2, i210);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation3 = orientation;
                            Modifier modifierA2 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier6.B(state.r()).B(state.g()), lazyGridItemProviderD2, state, o0VarA, z10, z13, z11, composer2, (i211 & 896) | 4096 | (i29 & 57344) | i212 | (i29 & 3670016)), orientation3), overscrollEffectB2);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD2, ScrollableKt.h(modifierA2, state, orientation3, overscrollEffectB2, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF2, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier6;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB3 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i213 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD3 = LazyGridItemProviderImplKt.d(state, content, composerS, (i213 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller3 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller3);
                                objH = compositionScopedCoroutineScopeCanceller3;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf3 = Boolean.valueOf(z10);
                            Modifier modifier7 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf3) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator3 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator3);
                            int i214 = i13 & 112;
                            int i215 = i13 << 3;
                            int i216 = i215 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF3 = f(lazyGridItemProviderD3, state, overscrollEffectB3, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator3, composer2, 1073741824 | i214 | (i215 & 7168) | (i215 & 57344) | i216 | (i215 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD3, state, composer2, i214);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation4 = orientation;
                            Modifier modifierA3 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier7.B(state.r()).B(state.g()), lazyGridItemProviderD3, state, o0VarA, z10, z13, z11, composer2, (i215 & 896) | 4096 | (i213 & 57344) | i216 | (i213 & 3670016)), orientation4), overscrollEffectB3);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD3, ScrollableKt.h(modifierA3, state, orientation4, overscrollEffectB3, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF3, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier7;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                    }
                    i18 = 100663296;
                    i13 |= i18;
                    if ((i12 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(horizontalArrangement)) {
                                i19 = 536870912;
                            } else {
                                i19 = 268435456;
                            }
                        }
                        if ((i12 & 1024) != 0) {
                            i20 = i11 | 6;
                        } else if ((i11 & 14) == 0) {
                            if (composerS.k(content)) {
                                i21 = 4;
                            } else {
                                i21 = 2;
                            }
                            i20 = i11 | i21;
                        } else {
                            i20 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB4 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i217 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD4 = LazyGridItemProviderImplKt.d(state, content, composerS, (i217 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller4 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller4);
                                objH = compositionScopedCoroutineScopeCanceller4;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf4 = Boolean.valueOf(z10);
                            Modifier modifier8 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf4) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator4 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator4);
                            int i218 = i13 & 112;
                            int i219 = i13 << 3;
                            int i2110 = i219 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF4 = f(lazyGridItemProviderD4, state, overscrollEffectB4, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator4, composer2, 1073741824 | i218 | (i219 & 7168) | (i219 & 57344) | i2110 | (i219 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD4, state, composer2, i218);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation5 = orientation;
                            Modifier modifierA4 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier8.B(state.r()).B(state.g()), lazyGridItemProviderD4, state, o0VarA, z10, z13, z11, composer2, (i219 & 896) | 4096 | (i217 & 57344) | i2110 | (i217 & 3670016)), orientation5), overscrollEffectB4);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD4, ScrollableKt.h(modifierA4, state, orientation5, overscrollEffectB4, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF4, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier8;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB5 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i2111 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD5 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller5 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller5);
                                objH = compositionScopedCoroutineScopeCanceller5;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf5 = Boolean.valueOf(z10);
                            Modifier modifier9 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf5) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator5 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator5);
                            int i2112 = i13 & 112;
                            int i2113 = i13 << 3;
                            int i2114 = i2113 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF5 = f(lazyGridItemProviderD5, state, overscrollEffectB5, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator5, composer2, 1073741824 | i2112 | (i2113 & 7168) | (i2113 & 57344) | i2114 | (i2113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD5, state, composer2, i2112);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation6 = orientation;
                            Modifier modifierA5 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier9.B(state.r()).B(state.g()), lazyGridItemProviderD5, state, o0VarA, z10, z13, z11, composer2, (i2113 & 896) | 4096 | (i2111 & 57344) | i2114 | (i2111 & 3670016)), orientation6), overscrollEffectB5);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD5, ScrollableKt.h(modifierA5, state, orientation6, overscrollEffectB5, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF5, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier9;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                    }
                    i19 = 805306368;
                    i13 |= i19;
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB6 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2115 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD6 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2115 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller6 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller6);
                            objH = compositionScopedCoroutineScopeCanceller6;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf6 = Boolean.valueOf(z10);
                        Modifier modifier10 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf6) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator6 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator6);
                        int i2116 = i13 & 112;
                        int i2117 = i13 << 3;
                        int i2118 = i2117 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF6 = f(lazyGridItemProviderD6, state, overscrollEffectB6, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator6, composer2, 1073741824 | i2116 | (i2117 & 7168) | (i2117 & 57344) | i2118 | (i2117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD6, state, composer2, i2116);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation7 = orientation;
                        Modifier modifierA6 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier10.B(state.r()).B(state.g()), lazyGridItemProviderD6, state, o0VarA, z10, z13, z11, composer2, (i2117 & 896) | 4096 | (i2115 & 57344) | i2118 | (i2115 & 3670016)), orientation7), overscrollEffectB6);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD6, ScrollableKt.h(modifierA6, state, orientation7, overscrollEffectB6, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF6, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier10;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB7 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2119 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD7 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2119 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller7 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller7);
                            objH = compositionScopedCoroutineScopeCanceller7;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf7 = Boolean.valueOf(z10);
                        Modifier modifier11 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf7) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator7 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator7);
                        int i21110 = i13 & 112;
                        int i21111 = i13 << 3;
                        int i21112 = i21111 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF7 = f(lazyGridItemProviderD7, state, overscrollEffectB7, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator7, composer2, 1073741824 | i21110 | (i21111 & 7168) | (i21111 & 57344) | i21112 | (i21111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD7, state, composer2, i21110);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation8 = orientation;
                        Modifier modifierA7 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11.B(state.r()).B(state.g()), lazyGridItemProviderD7, state, o0VarA, z10, z13, z11, composer2, (i21111 & 896) | 4096 | (i2119 & 57344) | i21112 | (i2119 & 3670016)), orientation8), overscrollEffectB7);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD7, ScrollableKt.h(modifierA7, state, orientation8, overscrollEffectB7, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF7, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier11;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i13 |= 12582912;
                if ((i12 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(verticalArrangement)) {
                            i18 = 67108864;
                        } else {
                            i18 = 33554432;
                        }
                    }
                    if ((i12 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(horizontalArrangement)) {
                                i19 = 536870912;
                            } else {
                                i19 = 268435456;
                            }
                        }
                        if ((i12 & 1024) != 0) {
                            i20 = i11 | 6;
                        } else if ((i11 & 14) == 0) {
                            if (composerS.k(content)) {
                                i21 = 4;
                            } else {
                                i21 = 2;
                            }
                            i20 = i11 | i21;
                        } else {
                            i20 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB8 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i21113 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD8 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21113 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller8 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller8);
                                objH = compositionScopedCoroutineScopeCanceller8;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf8 = Boolean.valueOf(z10);
                            Modifier modifier12 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf8) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator8 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator8);
                            int i21114 = i13 & 112;
                            int i21115 = i13 << 3;
                            int i21116 = i21115 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF8 = f(lazyGridItemProviderD8, state, overscrollEffectB8, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator8, composer2, 1073741824 | i21114 | (i21115 & 7168) | (i21115 & 57344) | i21116 | (i21115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD8, state, composer2, i21114);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation9 = orientation;
                            Modifier modifierA8 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier12.B(state.r()).B(state.g()), lazyGridItemProviderD8, state, o0VarA, z10, z13, z11, composer2, (i21115 & 896) | 4096 | (i21113 & 57344) | i21116 | (i21113 & 3670016)), orientation9), overscrollEffectB8);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD8, ScrollableKt.h(modifierA8, state, orientation9, overscrollEffectB8, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF8, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier12;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB9 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i21117 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD9 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21117 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller9 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller9);
                                objH = compositionScopedCoroutineScopeCanceller9;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf9 = Boolean.valueOf(z10);
                            Modifier modifier13 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf9) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator9 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator9);
                            int i21118 = i13 & 112;
                            int i21119 = i13 << 3;
                            int i211110 = i21119 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF9 = f(lazyGridItemProviderD9, state, overscrollEffectB9, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator9, composer2, 1073741824 | i21118 | (i21119 & 7168) | (i21119 & 57344) | i211110 | (i21119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD9, state, composer2, i21118);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation10 = orientation;
                            Modifier modifierA9 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier13.B(state.r()).B(state.g()), lazyGridItemProviderD9, state, o0VarA, z10, z13, z11, composer2, (i21119 & 896) | 4096 | (i21117 & 57344) | i211110 | (i21117 & 3670016)), orientation10), overscrollEffectB9);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD9, ScrollableKt.h(modifierA9, state, orientation10, overscrollEffectB9, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF9, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier13;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                    }
                    i19 = 805306368;
                    i13 |= i19;
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB10 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD10 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller10 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller10);
                            objH = compositionScopedCoroutineScopeCanceller10;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf10 = Boolean.valueOf(z10);
                        Modifier modifier14 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf10) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator10 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator10);
                        int i211112 = i13 & 112;
                        int i211113 = i13 << 3;
                        int i211114 = i211113 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF10 = f(lazyGridItemProviderD10, state, overscrollEffectB10, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator10, composer2, 1073741824 | i211112 | (i211113 & 7168) | (i211113 & 57344) | i211114 | (i211113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD10, state, composer2, i211112);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation11 = orientation;
                        Modifier modifierA10 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier14.B(state.r()).B(state.g()), lazyGridItemProviderD10, state, o0VarA, z10, z13, z11, composer2, (i211113 & 896) | 4096 | (i211111 & 57344) | i211114 | (i211111 & 3670016)), orientation11), overscrollEffectB10);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD10, ScrollableKt.h(modifierA10, state, orientation11, overscrollEffectB10, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF10, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier14;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB11 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211115 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD11 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211115 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller11);
                            objH = compositionScopedCoroutineScopeCanceller11;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf11 = Boolean.valueOf(z10);
                        Modifier modifier15 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf11) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator11);
                        int i211116 = i13 & 112;
                        int i211117 = i13 << 3;
                        int i211118 = i211117 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11 = f(lazyGridItemProviderD11, state, overscrollEffectB11, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11, composer2, 1073741824 | i211116 | (i211117 & 7168) | (i211117 & 57344) | i211118 | (i211117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD11, state, composer2, i211116);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation12 = orientation;
                        Modifier modifierA11 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier15.B(state.r()).B(state.g()), lazyGridItemProviderD11, state, o0VarA, z10, z13, z11, composer2, (i211117 & 896) | 4096 | (i211115 & 57344) | i211118 | (i211115 & 3670016)), orientation12), overscrollEffectB11);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD11, ScrollableKt.h(modifierA11, state, orientation12, overscrollEffectB11, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier15;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i18 = 100663296;
                i13 |= i18;
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB12 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211119 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD12 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211119 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller12 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller12);
                            objH = compositionScopedCoroutineScopeCanceller12;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf12 = Boolean.valueOf(z10);
                        Modifier modifier16 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf12) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator12 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator12);
                        int i2111110 = i13 & 112;
                        int i2111111 = i13 << 3;
                        int i2111112 = i2111111 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF12 = f(lazyGridItemProviderD12, state, overscrollEffectB12, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator12, composer2, 1073741824 | i2111110 | (i2111111 & 7168) | (i2111111 & 57344) | i2111112 | (i2111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD12, state, composer2, i2111110);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation13 = orientation;
                        Modifier modifierA12 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier16.B(state.r()).B(state.g()), lazyGridItemProviderD12, state, o0VarA, z10, z13, z11, composer2, (i2111111 & 896) | 4096 | (i211119 & 57344) | i2111112 | (i211119 & 3670016)), orientation13), overscrollEffectB12);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD12, ScrollableKt.h(modifierA12, state, orientation13, overscrollEffectB12, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF12, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier16;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB13 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111113 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD13 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111113 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller13 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller13);
                            objH = compositionScopedCoroutineScopeCanceller13;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf13 = Boolean.valueOf(z10);
                        Modifier modifier17 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf13) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator13 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator13);
                        int i2111114 = i13 & 112;
                        int i2111115 = i13 << 3;
                        int i2111116 = i2111115 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF13 = f(lazyGridItemProviderD13, state, overscrollEffectB13, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator13, composer2, 1073741824 | i2111114 | (i2111115 & 7168) | (i2111115 & 57344) | i2111116 | (i2111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD13, state, composer2, i2111114);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation14 = orientation;
                        Modifier modifierA13 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier17.B(state.r()).B(state.g()), lazyGridItemProviderD13, state, o0VarA, z10, z13, z11, composer2, (i2111115 & 896) | 4096 | (i2111113 & 57344) | i2111116 | (i2111113 & 3670016)), orientation14), overscrollEffectB13);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD13, ScrollableKt.h(modifierA13, state, orientation14, overscrollEffectB13, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF13, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier17;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB14 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111117 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD14 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111117 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller14 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller14);
                        objH = compositionScopedCoroutineScopeCanceller14;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf14 = Boolean.valueOf(z10);
                    Modifier modifier18 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf14) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator14 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator14);
                    int i2111118 = i13 & 112;
                    int i2111119 = i13 << 3;
                    int i21111110 = i2111119 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF14 = f(lazyGridItemProviderD14, state, overscrollEffectB14, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator14, composer2, 1073741824 | i2111118 | (i2111119 & 7168) | (i2111119 & 57344) | i21111110 | (i2111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD14, state, composer2, i2111118);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation15 = orientation;
                    Modifier modifierA14 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier18.B(state.r()).B(state.g()), lazyGridItemProviderD14, state, o0VarA, z10, z13, z11, composer2, (i2111119 & 896) | 4096 | (i2111117 & 57344) | i21111110 | (i2111117 & 3670016)), orientation15), overscrollEffectB14);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD14, ScrollableKt.h(modifierA14, state, orientation15, overscrollEffectB14, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF14, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier18;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB15 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD15 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller15 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller15);
                        objH = compositionScopedCoroutineScopeCanceller15;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf15 = Boolean.valueOf(z10);
                    Modifier modifier19 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf15) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator15 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator15);
                    int i21111112 = i13 & 112;
                    int i21111113 = i13 << 3;
                    int i21111114 = i21111113 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF15 = f(lazyGridItemProviderD15, state, overscrollEffectB15, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator15, composer2, 1073741824 | i21111112 | (i21111113 & 7168) | (i21111113 & 57344) | i21111114 | (i21111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD15, state, composer2, i21111112);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation16 = orientation;
                    Modifier modifierA15 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier19.B(state.r()).B(state.g()), lazyGridItemProviderD15, state, o0VarA, z10, z13, z11, composer2, (i21111113 & 896) | 4096 | (i21111111 & 57344) | i21111114 | (i21111111 & 3670016)), orientation16), overscrollEffectB15);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD15, ScrollableKt.h(modifierA15, state, orientation16, overscrollEffectB15, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF15, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier19;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            i13 |= i16;
            if ((i10 & 3670016) != 0) {
                if ((i12 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i13 |= i22;
            }
            if ((i12 & 128) != 0) {
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z11)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i13 |= i17;
                }
                if ((i12 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(verticalArrangement)) {
                            i18 = 67108864;
                        } else {
                            i18 = 33554432;
                        }
                    }
                    if ((i12 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(horizontalArrangement)) {
                                i19 = 536870912;
                            } else {
                                i19 = 268435456;
                            }
                        }
                        if ((i12 & 1024) != 0) {
                            i20 = i11 | 6;
                        } else if ((i11 & 14) == 0) {
                            if (composerS.k(content)) {
                                i21 = 4;
                            } else {
                                i21 = 2;
                            }
                            i20 = i11 | i21;
                        } else {
                            i20 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB16 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i21111115 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD16 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111115 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller16 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller16);
                                objH = compositionScopedCoroutineScopeCanceller16;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf16 = Boolean.valueOf(z10);
                            Modifier modifier110 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf16) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator16 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator16);
                            int i21111116 = i13 & 112;
                            int i21111117 = i13 << 3;
                            int i21111118 = i21111117 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF16 = f(lazyGridItemProviderD16, state, overscrollEffectB16, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator16, composer2, 1073741824 | i21111116 | (i21111117 & 7168) | (i21111117 & 57344) | i21111118 | (i21111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD16, state, composer2, i21111116);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation17 = orientation;
                            Modifier modifierA16 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier110.B(state.r()).B(state.g()), lazyGridItemProviderD16, state, o0VarA, z10, z13, z11, composer2, (i21111117 & 896) | 4096 | (i21111115 & 57344) | i21111118 | (i21111115 & 3670016)), orientation17), overscrollEffectB16);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD16, ScrollableKt.h(modifierA16, state, orientation17, overscrollEffectB16, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF16, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier110;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB17 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i21111119 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD17 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111119 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller17 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller17);
                                objH = compositionScopedCoroutineScopeCanceller17;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf17 = Boolean.valueOf(z10);
                            Modifier modifier111 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf17) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator17 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator17);
                            int i211111110 = i13 & 112;
                            int i211111111 = i13 << 3;
                            int i211111112 = i211111111 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF17 = f(lazyGridItemProviderD17, state, overscrollEffectB17, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator17, composer2, 1073741824 | i211111110 | (i211111111 & 7168) | (i211111111 & 57344) | i211111112 | (i211111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD17, state, composer2, i211111110);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation18 = orientation;
                            Modifier modifierA17 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111.B(state.r()).B(state.g()), lazyGridItemProviderD17, state, o0VarA, z10, z13, z11, composer2, (i211111111 & 896) | 4096 | (i21111119 & 57344) | i211111112 | (i21111119 & 3670016)), orientation18), overscrollEffectB17);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD17, ScrollableKt.h(modifierA17, state, orientation18, overscrollEffectB17, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF17, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier111;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                    }
                    i19 = 805306368;
                    i13 |= i19;
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB18 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111113 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD18 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111113 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller18 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller18);
                            objH = compositionScopedCoroutineScopeCanceller18;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf18 = Boolean.valueOf(z10);
                        Modifier modifier112 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf18) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator18 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator18);
                        int i211111114 = i13 & 112;
                        int i211111115 = i13 << 3;
                        int i211111116 = i211111115 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF18 = f(lazyGridItemProviderD18, state, overscrollEffectB18, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator18, composer2, 1073741824 | i211111114 | (i211111115 & 7168) | (i211111115 & 57344) | i211111116 | (i211111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD18, state, composer2, i211111114);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation19 = orientation;
                        Modifier modifierA18 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier112.B(state.r()).B(state.g()), lazyGridItemProviderD18, state, o0VarA, z10, z13, z11, composer2, (i211111115 & 896) | 4096 | (i211111113 & 57344) | i211111116 | (i211111113 & 3670016)), orientation19), overscrollEffectB18);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD18, ScrollableKt.h(modifierA18, state, orientation19, overscrollEffectB18, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF18, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier112;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB19 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111117 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD19 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111117 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller19 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller19);
                            objH = compositionScopedCoroutineScopeCanceller19;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf19 = Boolean.valueOf(z10);
                        Modifier modifier113 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf19) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator19 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator19);
                        int i211111118 = i13 & 112;
                        int i211111119 = i13 << 3;
                        int i2111111110 = i211111119 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF19 = f(lazyGridItemProviderD19, state, overscrollEffectB19, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator19, composer2, 1073741824 | i211111118 | (i211111119 & 7168) | (i211111119 & 57344) | i2111111110 | (i211111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD19, state, composer2, i211111118);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation110 = orientation;
                        Modifier modifierA19 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier113.B(state.r()).B(state.g()), lazyGridItemProviderD19, state, o0VarA, z10, z13, z11, composer2, (i211111119 & 896) | 4096 | (i211111117 & 57344) | i2111111110 | (i211111117 & 3670016)), orientation110), overscrollEffectB19);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD19, ScrollableKt.h(modifierA19, state, orientation110, overscrollEffectB19, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF19, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier113;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i18 = 100663296;
                i13 |= i18;
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB110 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111111111 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD110 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller110);
                            objH = compositionScopedCoroutineScopeCanceller110;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf110 = Boolean.valueOf(z10);
                        Modifier modifier114 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf110) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator110 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator110);
                        int i2111111112 = i13 & 112;
                        int i2111111113 = i13 << 3;
                        int i2111111114 = i2111111113 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF110 = f(lazyGridItemProviderD110, state, overscrollEffectB110, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator110, composer2, 1073741824 | i2111111112 | (i2111111113 & 7168) | (i2111111113 & 57344) | i2111111114 | (i2111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD110, state, composer2, i2111111112);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation111 = orientation;
                        Modifier modifierA110 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier114.B(state.r()).B(state.g()), lazyGridItemProviderD110, state, o0VarA, z10, z13, z11, composer2, (i2111111113 & 896) | 4096 | (i2111111111 & 57344) | i2111111114 | (i2111111111 & 3670016)), orientation111), overscrollEffectB110);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD110, ScrollableKt.h(modifierA110, state, orientation111, overscrollEffectB110, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF110, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier114;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB111 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111111115 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD111 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111115 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller111);
                            objH = compositionScopedCoroutineScopeCanceller111;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf111 = Boolean.valueOf(z10);
                        Modifier modifier115 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf111) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator111);
                        int i2111111116 = i13 & 112;
                        int i2111111117 = i13 << 3;
                        int i2111111118 = i2111111117 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111 = f(lazyGridItemProviderD111, state, overscrollEffectB111, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111, composer2, 1073741824 | i2111111116 | (i2111111117 & 7168) | (i2111111117 & 57344) | i2111111118 | (i2111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD111, state, composer2, i2111111116);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation112 = orientation;
                        Modifier modifierA111 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier115.B(state.r()).B(state.g()), lazyGridItemProviderD111, state, o0VarA, z10, z13, z11, composer2, (i2111111117 & 896) | 4096 | (i2111111115 & 57344) | i2111111118 | (i2111111115 & 3670016)), orientation112), overscrollEffectB111);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD111, ScrollableKt.h(modifierA111, state, orientation112, overscrollEffectB111, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier115;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB112 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111119 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD112 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111119 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller112);
                        objH = compositionScopedCoroutineScopeCanceller112;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf112 = Boolean.valueOf(z10);
                    Modifier modifier116 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf112) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator112 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator112);
                    int i21111111110 = i13 & 112;
                    int i21111111111 = i13 << 3;
                    int i21111111112 = i21111111111 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF112 = f(lazyGridItemProviderD112, state, overscrollEffectB112, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator112, composer2, 1073741824 | i21111111110 | (i21111111111 & 7168) | (i21111111111 & 57344) | i21111111112 | (i21111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD112, state, composer2, i21111111110);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation113 = orientation;
                    Modifier modifierA112 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier116.B(state.r()).B(state.g()), lazyGridItemProviderD112, state, o0VarA, z10, z13, z11, composer2, (i21111111111 & 896) | 4096 | (i2111111119 & 57344) | i21111111112 | (i2111111119 & 3670016)), orientation113), overscrollEffectB112);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD112, ScrollableKt.h(modifierA112, state, orientation113, overscrollEffectB112, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF112, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier116;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB113 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111113 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD113 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111113 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller113);
                        objH = compositionScopedCoroutineScopeCanceller113;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf113 = Boolean.valueOf(z10);
                    Modifier modifier117 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf113) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator113 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator113);
                    int i21111111114 = i13 & 112;
                    int i21111111115 = i13 << 3;
                    int i21111111116 = i21111111115 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF113 = f(lazyGridItemProviderD113, state, overscrollEffectB113, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator113, composer2, 1073741824 | i21111111114 | (i21111111115 & 7168) | (i21111111115 & 57344) | i21111111116 | (i21111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD113, state, composer2, i21111111114);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation114 = orientation;
                    Modifier modifierA113 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier117.B(state.r()).B(state.g()), lazyGridItemProviderD113, state, o0VarA, z10, z13, z11, composer2, (i21111111115 & 896) | 4096 | (i21111111113 & 57344) | i21111111116 | (i21111111113 & 3670016)), orientation114), overscrollEffectB113);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD113, ScrollableKt.h(modifierA113, state, orientation114, overscrollEffectB113, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF113, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier117;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i13 |= 12582912;
            if ((i12 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(verticalArrangement)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                }
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB114 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i21111111117 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD114 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111117 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller114);
                            objH = compositionScopedCoroutineScopeCanceller114;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf114 = Boolean.valueOf(z10);
                        Modifier modifier118 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf114) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator114 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator114);
                        int i21111111118 = i13 & 112;
                        int i21111111119 = i13 << 3;
                        int i211111111110 = i21111111119 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF114 = f(lazyGridItemProviderD114, state, overscrollEffectB114, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator114, composer2, 1073741824 | i21111111118 | (i21111111119 & 7168) | (i21111111119 & 57344) | i211111111110 | (i21111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD114, state, composer2, i21111111118);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation115 = orientation;
                        Modifier modifierA114 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier118.B(state.r()).B(state.g()), lazyGridItemProviderD114, state, o0VarA, z10, z13, z11, composer2, (i21111111119 & 896) | 4096 | (i21111111117 & 57344) | i211111111110 | (i21111111117 & 3670016)), orientation115), overscrollEffectB114);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD114, ScrollableKt.h(modifierA114, state, orientation115, overscrollEffectB114, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF114, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier118;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB115 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD115 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller115);
                            objH = compositionScopedCoroutineScopeCanceller115;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf115 = Boolean.valueOf(z10);
                        Modifier modifier119 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf115) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator115 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator115);
                        int i211111111112 = i13 & 112;
                        int i211111111113 = i13 << 3;
                        int i211111111114 = i211111111113 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF115 = f(lazyGridItemProviderD115, state, overscrollEffectB115, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator115, composer2, 1073741824 | i211111111112 | (i211111111113 & 7168) | (i211111111113 & 57344) | i211111111114 | (i211111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD115, state, composer2, i211111111112);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation116 = orientation;
                        Modifier modifierA115 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier119.B(state.r()).B(state.g()), lazyGridItemProviderD115, state, o0VarA, z10, z13, z11, composer2, (i211111111113 & 896) | 4096 | (i211111111111 & 57344) | i211111111114 | (i211111111111 & 3670016)), orientation116), overscrollEffectB115);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD115, ScrollableKt.h(modifierA115, state, orientation116, overscrollEffectB115, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF115, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier119;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB116 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i211111111115 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD116 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111115 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller116);
                        objH = compositionScopedCoroutineScopeCanceller116;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf116 = Boolean.valueOf(z10);
                    Modifier modifier1110 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf116) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator116 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator116);
                    int i211111111116 = i13 & 112;
                    int i211111111117 = i13 << 3;
                    int i211111111118 = i211111111117 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF116 = f(lazyGridItemProviderD116, state, overscrollEffectB116, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator116, composer2, 1073741824 | i211111111116 | (i211111111117 & 7168) | (i211111111117 & 57344) | i211111111118 | (i211111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD116, state, composer2, i211111111116);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation117 = orientation;
                    Modifier modifierA116 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1110.B(state.r()).B(state.g()), lazyGridItemProviderD116, state, o0VarA, z10, z13, z11, composer2, (i211111111117 & 896) | 4096 | (i211111111115 & 57344) | i211111111118 | (i211111111115 & 3670016)), orientation117), overscrollEffectB116);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD116, ScrollableKt.h(modifierA116, state, orientation117, overscrollEffectB116, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF116, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1110;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB117 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i211111111119 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD117 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111119 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller117);
                        objH = compositionScopedCoroutineScopeCanceller117;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf117 = Boolean.valueOf(z10);
                    Modifier modifier1111 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf117) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator117 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator117);
                    int i2111111111110 = i13 & 112;
                    int i2111111111111 = i13 << 3;
                    int i2111111111112 = i2111111111111 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF117 = f(lazyGridItemProviderD117, state, overscrollEffectB117, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator117, composer2, 1073741824 | i2111111111110 | (i2111111111111 & 7168) | (i2111111111111 & 57344) | i2111111111112 | (i2111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD117, state, composer2, i2111111111110);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation118 = orientation;
                    Modifier modifierA117 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111.B(state.r()).B(state.g()), lazyGridItemProviderD117, state, o0VarA, z10, z13, z11, composer2, (i2111111111111 & 896) | 4096 | (i211111111119 & 57344) | i2111111111112 | (i211111111119 & 3670016)), orientation118), overscrollEffectB117);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD117, ScrollableKt.h(modifierA117, state, orientation118, overscrollEffectB117, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF117, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1111;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i18 = 100663296;
            i13 |= i18;
            if ((i12 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(horizontalArrangement)) {
                        i19 = 536870912;
                    } else {
                        i19 = 268435456;
                    }
                }
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB118 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111113 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD118 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111113 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller118);
                        objH = compositionScopedCoroutineScopeCanceller118;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf118 = Boolean.valueOf(z10);
                    Modifier modifier1112 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf118) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator118 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator118);
                    int i2111111111114 = i13 & 112;
                    int i2111111111115 = i13 << 3;
                    int i2111111111116 = i2111111111115 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF118 = f(lazyGridItemProviderD118, state, overscrollEffectB118, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator118, composer2, 1073741824 | i2111111111114 | (i2111111111115 & 7168) | (i2111111111115 & 57344) | i2111111111116 | (i2111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD118, state, composer2, i2111111111114);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation119 = orientation;
                    Modifier modifierA118 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1112.B(state.r()).B(state.g()), lazyGridItemProviderD118, state, o0VarA, z10, z13, z11, composer2, (i2111111111115 & 896) | 4096 | (i2111111111113 & 57344) | i2111111111116 | (i2111111111113 & 3670016)), orientation119), overscrollEffectB118);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD118, ScrollableKt.h(modifierA118, state, orientation119, overscrollEffectB118, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF118, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1112;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB119 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111117 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD119 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111117 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller119);
                        objH = compositionScopedCoroutineScopeCanceller119;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf119 = Boolean.valueOf(z10);
                    Modifier modifier1113 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf119) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator119 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator119);
                    int i2111111111118 = i13 & 112;
                    int i2111111111119 = i13 << 3;
                    int i21111111111110 = i2111111111119 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF119 = f(lazyGridItemProviderD119, state, overscrollEffectB119, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator119, composer2, 1073741824 | i2111111111118 | (i2111111111119 & 7168) | (i2111111111119 & 57344) | i21111111111110 | (i2111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD119, state, composer2, i2111111111118);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation1110 = orientation;
                    Modifier modifierA119 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1113.B(state.r()).B(state.g()), lazyGridItemProviderD119, state, o0VarA, z10, z13, z11, composer2, (i2111111111119 & 896) | 4096 | (i2111111111117 & 57344) | i21111111111110 | (i2111111111117 & 3670016)), orientation1110), overscrollEffectB119);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD119, ScrollableKt.h(modifierA119, state, orientation1110, overscrollEffectB119, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF119, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1113;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i19 = 805306368;
            i13 |= i19;
            if ((i12 & 1024) != 0) {
                i20 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(content)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i20 = i11 | i21;
            } else {
                i20 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB1110 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD1110 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller1110);
                    objH = compositionScopedCoroutineScopeCanceller1110;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf1110 = Boolean.valueOf(z10);
                Modifier modifier1114 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf1110) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1110 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator1110);
                int i21111111111112 = i13 & 112;
                int i21111111111113 = i13 << 3;
                int i21111111111114 = i21111111111113 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1110 = f(lazyGridItemProviderD1110, state, overscrollEffectB1110, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1110, composer2, 1073741824 | i21111111111112 | (i21111111111113 & 7168) | (i21111111111113 & 57344) | i21111111111114 | (i21111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD1110, state, composer2, i21111111111112);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation1111 = orientation;
                Modifier modifierA1110 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1114.B(state.r()).B(state.g()), lazyGridItemProviderD1110, state, o0VarA, z10, z13, z11, composer2, (i21111111111113 & 896) | 4096 | (i21111111111111 & 57344) | i21111111111114 | (i21111111111111 & 3670016)), orientation1111), overscrollEffectB1110);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD1110, ScrollableKt.h(modifierA1110, state, orientation1111, overscrollEffectB1110, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1110, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1114;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB1111 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111115 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD1111 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111115 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller1111);
                    objH = compositionScopedCoroutineScopeCanceller1111;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf1111 = Boolean.valueOf(z10);
                Modifier modifier1115 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf1111) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1111 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator1111);
                int i21111111111116 = i13 & 112;
                int i21111111111117 = i13 << 3;
                int i21111111111118 = i21111111111117 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1111 = f(lazyGridItemProviderD1111, state, overscrollEffectB1111, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1111, composer2, 1073741824 | i21111111111116 | (i21111111111117 & 7168) | (i21111111111117 & 57344) | i21111111111118 | (i21111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD1111, state, composer2, i21111111111116);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation1112 = orientation;
                Modifier modifierA1111 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1115.B(state.r()).B(state.g()), lazyGridItemProviderD1111, state, o0VarA, z10, z13, z11, composer2, (i21111111111117 & 896) | 4096 | (i21111111111115 & 57344) | i21111111111118 | (i21111111111115 & 3670016)), orientation1112), overscrollEffectB1111);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD1111, ScrollableKt.h(modifierA1111, state, orientation1112, overscrollEffectB1111, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1111, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1115;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
        }
        i13 |= 3072;
        paddingValues2 = paddingValues;
        i14 = i12 & 16;
        if (i14 != 0) {
            i13 |= CpioConstants.C_ISBLK;
        } else if ((i10 & 57344) == 0) {
            if (composerS.m(z6)) {
                i15 = 16384;
            } else {
                i15 = 8192;
            }
            i13 |= i15;
        }
        if ((i12 & 32) != 0) {
            if ((i10 & 458752) == 0) {
                if (composerS.m(z10)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
            }
            if ((i10 & 3670016) != 0) {
                if ((i12 & 64) == 0) {
                    i22 = 524288;
                } else {
                    i22 = 524288;
                }
                i13 |= i22;
            }
            if ((i12 & 128) != 0) {
                if ((i10 & 29360128) == 0) {
                    if (composerS.m(z11)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i13 |= i17;
                }
                if ((i12 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(verticalArrangement)) {
                            i18 = 67108864;
                        } else {
                            i18 = 33554432;
                        }
                    }
                    if ((i12 & 512) != 0) {
                        if ((1879048192 & i10) == 0) {
                            if (composerS.k(horizontalArrangement)) {
                                i19 = 536870912;
                            } else {
                                i19 = 268435456;
                            }
                        }
                        if ((i12 & 1024) != 0) {
                            i20 = i11 | 6;
                        } else if ((i11 & 14) == 0) {
                            if (composerS.k(content)) {
                                i21 = 4;
                            } else {
                                i21 = 2;
                            }
                            i20 = i11 | i21;
                        } else {
                            i20 = i11;
                        }
                        if ((i13 & 1533916891) != 306783378) {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB1112 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i21111111111119 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD1112 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111119 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller1112);
                                objH = compositionScopedCoroutineScopeCanceller1112;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf1112 = Boolean.valueOf(z10);
                            Modifier modifier1116 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf1112) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1112 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator1112);
                            int i211111111111110 = i13 & 112;
                            int i211111111111111 = i13 << 3;
                            int i211111111111112 = i211111111111111 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1112 = f(lazyGridItemProviderD1112, state, overscrollEffectB1112, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1112, composer2, 1073741824 | i211111111111110 | (i211111111111111 & 7168) | (i211111111111111 & 57344) | i211111111111112 | (i211111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD1112, state, composer2, i211111111111110);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation1113 = orientation;
                            Modifier modifierA1112 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1116.B(state.r()).B(state.g()), lazyGridItemProviderD1112, state, o0VarA, z10, z13, z11, composer2, (i211111111111111 & 896) | 4096 | (i21111111111119 & 57344) | i211111111111112 | (i21111111111119 & 3670016)), orientation1113), overscrollEffectB1112);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD1112, ScrollableKt.h(modifierA1112, state, orientation1113, overscrollEffectB1112, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1112, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier1116;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            composerS.J();
                            if ((i10 & 1) != 0) {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            } else {
                                if (i23 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if (i24 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                if (i14 == 0) {
                                }
                                if ((i12 & 64) != 0) {
                                    i13 &= -3670017;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    modifier3 = modifier2;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                    modifier3 = modifier2;
                                    z13 = z12;
                                    paddingValues3 = paddingValuesA;
                                }
                            }
                            composerS.A();
                            OverscrollEffect overscrollEffectB1113 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                            int i211111111111113 = i13 >> 3;
                            LazyGridItemProvider lazyGridItemProviderD1113 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111113 & 14) | ((i20 << 3) & 112));
                            composerS.G(773894976);
                            composerS.G(-492369756);
                            objH = composerS.H();
                            companion = Composer.Companion;
                            if (objH == companion.a()) {
                                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                                composerS.z(compositionScopedCoroutineScopeCanceller1113);
                                objH = compositionScopedCoroutineScopeCanceller1113;
                            }
                            composerS.Q();
                            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                            composerS.Q();
                            Boolean boolValueOf1113 = Boolean.valueOf(z10);
                            Modifier modifier1117 = modifier3;
                            composerS.G(511388516);
                            zK = composerS.k(boolValueOf1113) | composerS.k(state);
                            objH2 = composerS.H();
                            if (zK) {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            } else {
                                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                                composerS.z(objH2);
                            }
                            composerS.Q();
                            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1113 = (LazyGridItemPlacementAnimator) objH2;
                            state.z(lazyGridItemPlacementAnimator1113);
                            int i211111111111114 = i13 & 112;
                            int i211111111111115 = i13 << 3;
                            int i211111111111116 = i211111111111115 & 458752;
                            composer2 = composerS;
                            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1113 = f(lazyGridItemProviderD1113, state, overscrollEffectB1113, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1113, composer2, 1073741824 | i211111111111114 | (i211111111111115 & 7168) | (i211111111111115 & 57344) | i211111111111116 | (i211111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                            state.D(z10);
                            b(lazyGridItemProviderD1113, state, composer2, i211111111111114);
                            if (z10) {
                                orientation = Orientation.Vertical;
                            } else {
                                orientation = Orientation.Horizontal;
                            }
                            Orientation orientation1114 = orientation;
                            Modifier modifierA1113 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1117.B(state.r()).B(state.g()), lazyGridItemProviderD1113, state, o0VarA, z10, z13, z11, composer2, (i211111111111115 & 896) | 4096 | (i211111111111113 & 57344) | i211111111111116 | (i211111111111113 & 3670016)), orientation1114), overscrollEffectB1113);
                            composer2.G(-1163690407);
                            z14 = !z13;
                            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                                z15 = z14;
                            } else {
                                z15 = z14;
                            }
                            composer2.Q();
                            LazyLayoutKt.a(lazyGridItemProviderD1113, ScrollableKt.h(modifierA1113, state, orientation1114, overscrollEffectB1113, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1113, composer2, 0, 0);
                            paddingValues4 = paddingValues3;
                            modifier4 = modifier1117;
                            z16 = z13;
                            flingBehavior2 = flingBehaviorA;
                        }
                        scopeUpdateScopeU = composer2.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                    }
                    i19 = 805306368;
                    i13 |= i19;
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB1114 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111117 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD1114 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111117 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller1114);
                            objH = compositionScopedCoroutineScopeCanceller1114;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf1114 = Boolean.valueOf(z10);
                        Modifier modifier1118 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf1114) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1114 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator1114);
                        int i211111111111118 = i13 & 112;
                        int i211111111111119 = i13 << 3;
                        int i2111111111111110 = i211111111111119 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1114 = f(lazyGridItemProviderD1114, state, overscrollEffectB1114, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1114, composer2, 1073741824 | i211111111111118 | (i211111111111119 & 7168) | (i211111111111119 & 57344) | i2111111111111110 | (i211111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD1114, state, composer2, i211111111111118);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation1115 = orientation;
                        Modifier modifierA1114 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1118.B(state.r()).B(state.g()), lazyGridItemProviderD1114, state, o0VarA, z10, z13, z11, composer2, (i211111111111119 & 896) | 4096 | (i211111111111117 & 57344) | i2111111111111110 | (i211111111111117 & 3670016)), orientation1115), overscrollEffectB1114);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD1114, ScrollableKt.h(modifierA1114, state, orientation1115, overscrollEffectB1114, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1114, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier1118;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB1115 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111111111111111 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD1115 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller1115);
                            objH = compositionScopedCoroutineScopeCanceller1115;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf1115 = Boolean.valueOf(z10);
                        Modifier modifier1119 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf1115) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1115 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator1115);
                        int i2111111111111112 = i13 & 112;
                        int i2111111111111113 = i13 << 3;
                        int i2111111111111114 = i2111111111111113 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1115 = f(lazyGridItemProviderD1115, state, overscrollEffectB1115, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1115, composer2, 1073741824 | i2111111111111112 | (i2111111111111113 & 7168) | (i2111111111111113 & 57344) | i2111111111111114 | (i2111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD1115, state, composer2, i2111111111111112);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation1116 = orientation;
                        Modifier modifierA1115 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1119.B(state.r()).B(state.g()), lazyGridItemProviderD1115, state, o0VarA, z10, z13, z11, composer2, (i2111111111111113 & 896) | 4096 | (i2111111111111111 & 57344) | i2111111111111114 | (i2111111111111111 & 3670016)), orientation1116), overscrollEffectB1115);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD1115, ScrollableKt.h(modifierA1115, state, orientation1116, overscrollEffectB1115, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1115, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier1119;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i18 = 100663296;
                i13 |= i18;
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB1116 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111111111111115 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD1116 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111115 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller1116);
                            objH = compositionScopedCoroutineScopeCanceller1116;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf1116 = Boolean.valueOf(z10);
                        Modifier modifier11110 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf1116) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1116 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator1116);
                        int i2111111111111116 = i13 & 112;
                        int i2111111111111117 = i13 << 3;
                        int i2111111111111118 = i2111111111111117 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1116 = f(lazyGridItemProviderD1116, state, overscrollEffectB1116, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1116, composer2, 1073741824 | i2111111111111116 | (i2111111111111117 & 7168) | (i2111111111111117 & 57344) | i2111111111111118 | (i2111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD1116, state, composer2, i2111111111111116);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation1117 = orientation;
                        Modifier modifierA1116 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11110.B(state.r()).B(state.g()), lazyGridItemProviderD1116, state, o0VarA, z10, z13, z11, composer2, (i2111111111111117 & 896) | 4096 | (i2111111111111115 & 57344) | i2111111111111118 | (i2111111111111115 & 3670016)), orientation1117), overscrollEffectB1116);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD1116, ScrollableKt.h(modifierA1116, state, orientation1117, overscrollEffectB1116, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1116, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier11110;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB1117 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i2111111111111119 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD1117 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111119 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller1117);
                            objH = compositionScopedCoroutineScopeCanceller1117;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf1117 = Boolean.valueOf(z10);
                        Modifier modifier11111 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf1117) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1117 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator1117);
                        int i21111111111111110 = i13 & 112;
                        int i21111111111111111 = i13 << 3;
                        int i21111111111111112 = i21111111111111111 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1117 = f(lazyGridItemProviderD1117, state, overscrollEffectB1117, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1117, composer2, 1073741824 | i21111111111111110 | (i21111111111111111 & 7168) | (i21111111111111111 & 57344) | i21111111111111112 | (i21111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD1117, state, composer2, i21111111111111110);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation1118 = orientation;
                        Modifier modifierA1117 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11111.B(state.r()).B(state.g()), lazyGridItemProviderD1117, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111 & 896) | 4096 | (i2111111111111119 & 57344) | i21111111111111112 | (i2111111111111119 & 3670016)), orientation1118), overscrollEffectB1117);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD1117, ScrollableKt.h(modifierA1117, state, orientation1118, overscrollEffectB1117, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1117, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier11111;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB1118 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111111111113 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD1118 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111113 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller1118);
                        objH = compositionScopedCoroutineScopeCanceller1118;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf1118 = Boolean.valueOf(z10);
                    Modifier modifier11112 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf1118) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1118 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator1118);
                    int i21111111111111114 = i13 & 112;
                    int i21111111111111115 = i13 << 3;
                    int i21111111111111116 = i21111111111111115 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1118 = f(lazyGridItemProviderD1118, state, overscrollEffectB1118, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1118, composer2, 1073741824 | i21111111111111114 | (i21111111111111115 & 7168) | (i21111111111111115 & 57344) | i21111111111111116 | (i21111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD1118, state, composer2, i21111111111111114);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation1119 = orientation;
                    Modifier modifierA1118 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11112.B(state.r()).B(state.g()), lazyGridItemProviderD1118, state, o0VarA, z10, z13, z11, composer2, (i21111111111111115 & 896) | 4096 | (i21111111111111113 & 57344) | i21111111111111116 | (i21111111111111113 & 3670016)), orientation1119), overscrollEffectB1118);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD1118, ScrollableKt.h(modifierA1118, state, orientation1119, overscrollEffectB1118, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1118, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11112;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB1119 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111111111117 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD1119 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111117 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller1119);
                        objH = compositionScopedCoroutineScopeCanceller1119;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf1119 = Boolean.valueOf(z10);
                    Modifier modifier11113 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf1119) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1119 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator1119);
                    int i21111111111111118 = i13 & 112;
                    int i21111111111111119 = i13 << 3;
                    int i211111111111111110 = i21111111111111119 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1119 = f(lazyGridItemProviderD1119, state, overscrollEffectB1119, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1119, composer2, 1073741824 | i21111111111111118 | (i21111111111111119 & 7168) | (i21111111111111119 & 57344) | i211111111111111110 | (i21111111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD1119, state, composer2, i21111111111111118);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation11110 = orientation;
                    Modifier modifierA1119 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11113.B(state.r()).B(state.g()), lazyGridItemProviderD1119, state, o0VarA, z10, z13, z11, composer2, (i21111111111111119 & 896) | 4096 | (i21111111111111117 & 57344) | i211111111111111110 | (i21111111111111117 & 3670016)), orientation11110), overscrollEffectB1119);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD1119, ScrollableKt.h(modifierA1119, state, orientation11110, overscrollEffectB1119, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1119, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11113;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i13 |= 12582912;
            if ((i12 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(verticalArrangement)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                }
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB11110 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111111111 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD11110 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller11110);
                            objH = compositionScopedCoroutineScopeCanceller11110;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf11110 = Boolean.valueOf(z10);
                        Modifier modifier11114 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf11110) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11110 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator11110);
                        int i211111111111111112 = i13 & 112;
                        int i211111111111111113 = i13 << 3;
                        int i211111111111111114 = i211111111111111113 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11110 = f(lazyGridItemProviderD11110, state, overscrollEffectB11110, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11110, composer2, 1073741824 | i211111111111111112 | (i211111111111111113 & 7168) | (i211111111111111113 & 57344) | i211111111111111114 | (i211111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD11110, state, composer2, i211111111111111112);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation11111 = orientation;
                        Modifier modifierA11110 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11114.B(state.r()).B(state.g()), lazyGridItemProviderD11110, state, o0VarA, z10, z13, z11, composer2, (i211111111111111113 & 896) | 4096 | (i211111111111111111 & 57344) | i211111111111111114 | (i211111111111111111 & 3670016)), orientation11111), overscrollEffectB11110);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD11110, ScrollableKt.h(modifierA11110, state, orientation11111, overscrollEffectB11110, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11110, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier11114;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB11111 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111111115 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD11111 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111115 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller11111);
                            objH = compositionScopedCoroutineScopeCanceller11111;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf11111 = Boolean.valueOf(z10);
                        Modifier modifier11115 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf11111) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11111 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator11111);
                        int i211111111111111116 = i13 & 112;
                        int i211111111111111117 = i13 << 3;
                        int i211111111111111118 = i211111111111111117 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11111 = f(lazyGridItemProviderD11111, state, overscrollEffectB11111, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11111, composer2, 1073741824 | i211111111111111116 | (i211111111111111117 & 7168) | (i211111111111111117 & 57344) | i211111111111111118 | (i211111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD11111, state, composer2, i211111111111111116);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation11112 = orientation;
                        Modifier modifierA11111 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11115.B(state.r()).B(state.g()), lazyGridItemProviderD11111, state, o0VarA, z10, z13, z11, composer2, (i211111111111111117 & 896) | 4096 | (i211111111111111115 & 57344) | i211111111111111118 | (i211111111111111115 & 3670016)), orientation11112), overscrollEffectB11111);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD11111, ScrollableKt.h(modifierA11111, state, orientation11112, overscrollEffectB11111, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11111, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier11115;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB11112 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i211111111111111119 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD11112 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111119 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11112);
                        objH = compositionScopedCoroutineScopeCanceller11112;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf11112 = Boolean.valueOf(z10);
                    Modifier modifier11116 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf11112) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11112 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator11112);
                    int i2111111111111111110 = i13 & 112;
                    int i2111111111111111111 = i13 << 3;
                    int i2111111111111111112 = i2111111111111111111 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11112 = f(lazyGridItemProviderD11112, state, overscrollEffectB11112, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11112, composer2, 1073741824 | i2111111111111111110 | (i2111111111111111111 & 7168) | (i2111111111111111111 & 57344) | i2111111111111111112 | (i2111111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD11112, state, composer2, i2111111111111111110);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation11113 = orientation;
                    Modifier modifierA11112 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11116.B(state.r()).B(state.g()), lazyGridItemProviderD11112, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111 & 896) | 4096 | (i211111111111111119 & 57344) | i2111111111111111112 | (i211111111111111119 & 3670016)), orientation11113), overscrollEffectB11112);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD11112, ScrollableKt.h(modifierA11112, state, orientation11113, overscrollEffectB11112, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11112, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11116;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB11113 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111111111113 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD11113 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111113 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11113);
                        objH = compositionScopedCoroutineScopeCanceller11113;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf11113 = Boolean.valueOf(z10);
                    Modifier modifier11117 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf11113) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11113 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator11113);
                    int i2111111111111111114 = i13 & 112;
                    int i2111111111111111115 = i13 << 3;
                    int i2111111111111111116 = i2111111111111111115 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11113 = f(lazyGridItemProviderD11113, state, overscrollEffectB11113, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11113, composer2, 1073741824 | i2111111111111111114 | (i2111111111111111115 & 7168) | (i2111111111111111115 & 57344) | i2111111111111111116 | (i2111111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD11113, state, composer2, i2111111111111111114);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation11114 = orientation;
                    Modifier modifierA11113 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11117.B(state.r()).B(state.g()), lazyGridItemProviderD11113, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111115 & 896) | 4096 | (i2111111111111111113 & 57344) | i2111111111111111116 | (i2111111111111111113 & 3670016)), orientation11114), overscrollEffectB11113);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD11113, ScrollableKt.h(modifierA11113, state, orientation11114, overscrollEffectB11113, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11113, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11117;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i18 = 100663296;
            i13 |= i18;
            if ((i12 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(horizontalArrangement)) {
                        i19 = 536870912;
                    } else {
                        i19 = 268435456;
                    }
                }
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB11114 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111111111117 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD11114 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111117 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11114);
                        objH = compositionScopedCoroutineScopeCanceller11114;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf11114 = Boolean.valueOf(z10);
                    Modifier modifier11118 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf11114) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11114 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator11114);
                    int i2111111111111111118 = i13 & 112;
                    int i2111111111111111119 = i13 << 3;
                    int i21111111111111111110 = i2111111111111111119 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11114 = f(lazyGridItemProviderD11114, state, overscrollEffectB11114, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11114, composer2, 1073741824 | i2111111111111111118 | (i2111111111111111119 & 7168) | (i2111111111111111119 & 57344) | i21111111111111111110 | (i2111111111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD11114, state, composer2, i2111111111111111118);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation11115 = orientation;
                    Modifier modifierA11114 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11118.B(state.r()).B(state.g()), lazyGridItemProviderD11114, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111119 & 896) | 4096 | (i2111111111111111117 & 57344) | i21111111111111111110 | (i2111111111111111117 & 3670016)), orientation11115), overscrollEffectB11114);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD11114, ScrollableKt.h(modifierA11114, state, orientation11115, overscrollEffectB11114, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11114, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11118;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB11115 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111111111111111 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD11115 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller11115);
                        objH = compositionScopedCoroutineScopeCanceller11115;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf11115 = Boolean.valueOf(z10);
                    Modifier modifier11119 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf11115) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11115 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator11115);
                    int i21111111111111111112 = i13 & 112;
                    int i21111111111111111113 = i13 << 3;
                    int i21111111111111111114 = i21111111111111111113 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11115 = f(lazyGridItemProviderD11115, state, overscrollEffectB11115, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11115, composer2, 1073741824 | i21111111111111111112 | (i21111111111111111113 & 7168) | (i21111111111111111113 & 57344) | i21111111111111111114 | (i21111111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD11115, state, composer2, i21111111111111111112);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation11116 = orientation;
                    Modifier modifierA11115 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier11119.B(state.r()).B(state.g()), lazyGridItemProviderD11115, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111113 & 896) | 4096 | (i21111111111111111111 & 57344) | i21111111111111111114 | (i21111111111111111111 & 3670016)), orientation11116), overscrollEffectB11115);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD11115, ScrollableKt.h(modifierA11115, state, orientation11116, overscrollEffectB11115, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11115, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier11119;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i19 = 805306368;
            i13 |= i19;
            if ((i12 & 1024) != 0) {
                i20 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(content)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i20 = i11 | i21;
            } else {
                i20 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB11116 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111111115 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD11116 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111115 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller11116);
                    objH = compositionScopedCoroutineScopeCanceller11116;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf11116 = Boolean.valueOf(z10);
                Modifier modifier111110 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf11116) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11116 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator11116);
                int i21111111111111111116 = i13 & 112;
                int i21111111111111111117 = i13 << 3;
                int i21111111111111111118 = i21111111111111111117 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11116 = f(lazyGridItemProviderD11116, state, overscrollEffectB11116, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11116, composer2, 1073741824 | i21111111111111111116 | (i21111111111111111117 & 7168) | (i21111111111111111117 & 57344) | i21111111111111111118 | (i21111111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD11116, state, composer2, i21111111111111111116);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation11117 = orientation;
                Modifier modifierA11116 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111110.B(state.r()).B(state.g()), lazyGridItemProviderD11116, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111117 & 896) | 4096 | (i21111111111111111115 & 57344) | i21111111111111111118 | (i21111111111111111115 & 3670016)), orientation11117), overscrollEffectB11116);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD11116, ScrollableKt.h(modifierA11116, state, orientation11117, overscrollEffectB11116, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11116, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier111110;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB11117 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111111119 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD11117 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111119 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller11117);
                    objH = compositionScopedCoroutineScopeCanceller11117;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf11117 = Boolean.valueOf(z10);
                Modifier modifier111111 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf11117) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11117 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator11117);
                int i211111111111111111110 = i13 & 112;
                int i211111111111111111111 = i13 << 3;
                int i211111111111111111112 = i211111111111111111111 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11117 = f(lazyGridItemProviderD11117, state, overscrollEffectB11117, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11117, composer2, 1073741824 | i211111111111111111110 | (i211111111111111111111 & 7168) | (i211111111111111111111 & 57344) | i211111111111111111112 | (i211111111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD11117, state, composer2, i211111111111111111110);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation11118 = orientation;
                Modifier modifierA11117 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111111.B(state.r()).B(state.g()), lazyGridItemProviderD11117, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111111 & 896) | 4096 | (i21111111111111111119 & 57344) | i211111111111111111112 | (i21111111111111111119 & 3670016)), orientation11118), overscrollEffectB11117);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD11117, ScrollableKt.h(modifierA11117, state, orientation11118, overscrollEffectB11117, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11117, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier111111;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
        }
        i16 = ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        i13 |= i16;
        if ((i10 & 3670016) != 0) {
            if ((i12 & 64) == 0) {
                i22 = 524288;
            } else {
                i22 = 524288;
            }
            i13 |= i22;
        }
        if ((i12 & 128) != 0) {
            if ((i10 & 29360128) == 0) {
                if (composerS.m(z11)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i13 |= i17;
            }
            if ((i12 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(verticalArrangement)) {
                        i18 = 67108864;
                    } else {
                        i18 = 33554432;
                    }
                }
                if ((i12 & 512) != 0) {
                    if ((1879048192 & i10) == 0) {
                        if (composerS.k(horizontalArrangement)) {
                            i19 = 536870912;
                        } else {
                            i19 = 268435456;
                        }
                    }
                    if ((i12 & 1024) != 0) {
                        i20 = i11 | 6;
                    } else if ((i11 & 14) == 0) {
                        if (composerS.k(content)) {
                            i21 = 4;
                        } else {
                            i21 = 2;
                        }
                        i20 = i11 | i21;
                    } else {
                        i20 = i11;
                    }
                    if ((i13 & 1533916891) != 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB11118 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111111111113 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD11118 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111113 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller11118);
                            objH = compositionScopedCoroutineScopeCanceller11118;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf11118 = Boolean.valueOf(z10);
                        Modifier modifier111112 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf11118) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11118 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator11118);
                        int i211111111111111111114 = i13 & 112;
                        int i211111111111111111115 = i13 << 3;
                        int i211111111111111111116 = i211111111111111111115 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11118 = f(lazyGridItemProviderD11118, state, overscrollEffectB11118, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11118, composer2, 1073741824 | i211111111111111111114 | (i211111111111111111115 & 7168) | (i211111111111111111115 & 57344) | i211111111111111111116 | (i211111111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD11118, state, composer2, i211111111111111111114);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation11119 = orientation;
                        Modifier modifierA11118 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111112.B(state.r()).B(state.g()), lazyGridItemProviderD11118, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111115 & 896) | 4096 | (i211111111111111111113 & 57344) | i211111111111111111116 | (i211111111111111111113 & 3670016)), orientation11119), overscrollEffectB11118);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD11118, ScrollableKt.h(modifierA11118, state, orientation11119, overscrollEffectB11118, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11118, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier111112;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        } else {
                            if (i23 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if (i24 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i14 == 0) {
                            }
                            if ((i12 & 64) != 0) {
                                i13 &= -3670017;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                modifier3 = modifier2;
                            } else {
                                flingBehaviorA = flingBehavior;
                                modifier3 = modifier2;
                                z13 = z12;
                                paddingValues3 = paddingValuesA;
                            }
                        }
                        composerS.A();
                        OverscrollEffect overscrollEffectB11119 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                        int i211111111111111111117 = i13 >> 3;
                        LazyGridItemProvider lazyGridItemProviderD11119 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111117 & 14) | ((i20 << 3) & 112));
                        composerS.G(773894976);
                        composerS.G(-492369756);
                        objH = composerS.H();
                        companion = Composer.Companion;
                        if (objH == companion.a()) {
                            CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller11119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                            composerS.z(compositionScopedCoroutineScopeCanceller11119);
                            objH = compositionScopedCoroutineScopeCanceller11119;
                        }
                        composerS.Q();
                        o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                        composerS.Q();
                        Boolean boolValueOf11119 = Boolean.valueOf(z10);
                        Modifier modifier111113 = modifier3;
                        composerS.G(511388516);
                        zK = composerS.k(boolValueOf11119) | composerS.k(state);
                        objH2 = composerS.H();
                        if (zK) {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        } else {
                            objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                            composerS.z(objH2);
                        }
                        composerS.Q();
                        LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator11119 = (LazyGridItemPlacementAnimator) objH2;
                        state.z(lazyGridItemPlacementAnimator11119);
                        int i211111111111111111118 = i13 & 112;
                        int i211111111111111111119 = i13 << 3;
                        int i2111111111111111111110 = i211111111111111111119 & 458752;
                        composer2 = composerS;
                        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF11119 = f(lazyGridItemProviderD11119, state, overscrollEffectB11119, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator11119, composer2, 1073741824 | i211111111111111111118 | (i211111111111111111119 & 7168) | (i211111111111111111119 & 57344) | i2111111111111111111110 | (i211111111111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                        state.D(z10);
                        b(lazyGridItemProviderD11119, state, composer2, i211111111111111111118);
                        if (z10) {
                            orientation = Orientation.Vertical;
                        } else {
                            orientation = Orientation.Horizontal;
                        }
                        Orientation orientation111110 = orientation;
                        Modifier modifierA11119 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111113.B(state.r()).B(state.g()), lazyGridItemProviderD11119, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111119 & 896) | 4096 | (i211111111111111111117 & 57344) | i2111111111111111111110 | (i211111111111111111117 & 3670016)), orientation111110), overscrollEffectB11119);
                        composer2.G(-1163690407);
                        z14 = !z13;
                        if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                            z15 = z14;
                        } else {
                            z15 = z14;
                        }
                        composer2.Q();
                        LazyLayoutKt.a(lazyGridItemProviderD11119, ScrollableKt.h(modifierA11119, state, orientation111110, overscrollEffectB11119, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF11119, composer2, 0, 0);
                        paddingValues4 = paddingValues3;
                        modifier4 = modifier111113;
                        z16 = z13;
                        flingBehavior2 = flingBehaviorA;
                    }
                    scopeUpdateScopeU = composer2.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
                }
                i19 = 805306368;
                i13 |= i19;
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111110 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111111111111111 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111110 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111111111 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111110);
                        objH = compositionScopedCoroutineScopeCanceller111110;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111110 = Boolean.valueOf(z10);
                    Modifier modifier111114 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111110) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111110 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111110);
                    int i2111111111111111111112 = i13 & 112;
                    int i2111111111111111111113 = i13 << 3;
                    int i2111111111111111111114 = i2111111111111111111113 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111110 = f(lazyGridItemProviderD111110, state, overscrollEffectB111110, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111110, composer2, 1073741824 | i2111111111111111111112 | (i2111111111111111111113 & 7168) | (i2111111111111111111113 & 57344) | i2111111111111111111114 | (i2111111111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111110, state, composer2, i2111111111111111111112);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111111 = orientation;
                    Modifier modifierA111110 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111114.B(state.r()).B(state.g()), lazyGridItemProviderD111110, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111113 & 896) | 4096 | (i2111111111111111111111 & 57344) | i2111111111111111111114 | (i2111111111111111111111 & 3670016)), orientation111111), overscrollEffectB111110);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111110, ScrollableKt.h(modifierA111110, state, orientation111111, overscrollEffectB111110, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111110, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier111114;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111111 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111111111111115 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111111 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111111115 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111111);
                        objH = compositionScopedCoroutineScopeCanceller111111;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111111 = Boolean.valueOf(z10);
                    Modifier modifier111115 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111111) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111111 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111111);
                    int i2111111111111111111116 = i13 & 112;
                    int i2111111111111111111117 = i13 << 3;
                    int i2111111111111111111118 = i2111111111111111111117 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111111 = f(lazyGridItemProviderD111111, state, overscrollEffectB111111, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111111, composer2, 1073741824 | i2111111111111111111116 | (i2111111111111111111117 & 7168) | (i2111111111111111111117 & 57344) | i2111111111111111111118 | (i2111111111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111111, state, composer2, i2111111111111111111116);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111112 = orientation;
                    Modifier modifierA111111 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111115.B(state.r()).B(state.g()), lazyGridItemProviderD111111, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111117 & 896) | 4096 | (i2111111111111111111115 & 57344) | i2111111111111111111118 | (i2111111111111111111115 & 3670016)), orientation111112), overscrollEffectB111111);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111111, ScrollableKt.h(modifierA111111, state, orientation111112, overscrollEffectB111111, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111111, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier111115;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i18 = 100663296;
            i13 |= i18;
            if ((i12 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(horizontalArrangement)) {
                        i19 = 536870912;
                    } else {
                        i19 = 268435456;
                    }
                }
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111112 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i2111111111111111111119 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111112 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111111119 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111112);
                        objH = compositionScopedCoroutineScopeCanceller111112;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111112 = Boolean.valueOf(z10);
                    Modifier modifier111116 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111112) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111112 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111112);
                    int i21111111111111111111110 = i13 & 112;
                    int i21111111111111111111111 = i13 << 3;
                    int i21111111111111111111112 = i21111111111111111111111 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111112 = f(lazyGridItemProviderD111112, state, overscrollEffectB111112, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111112, composer2, 1073741824 | i21111111111111111111110 | (i21111111111111111111111 & 7168) | (i21111111111111111111111 & 57344) | i21111111111111111111112 | (i21111111111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111112, state, composer2, i21111111111111111111110);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111113 = orientation;
                    Modifier modifierA111112 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111116.B(state.r()).B(state.g()), lazyGridItemProviderD111112, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111111111 & 896) | 4096 | (i2111111111111111111119 & 57344) | i21111111111111111111112 | (i2111111111111111111119 & 3670016)), orientation111113), overscrollEffectB111112);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111112, ScrollableKt.h(modifierA111112, state, orientation111113, overscrollEffectB111112, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111112, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier111116;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111113 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i21111111111111111111113 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111113 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111113 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111113);
                        objH = compositionScopedCoroutineScopeCanceller111113;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111113 = Boolean.valueOf(z10);
                    Modifier modifier111117 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111113) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111113 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111113);
                    int i21111111111111111111114 = i13 & 112;
                    int i21111111111111111111115 = i13 << 3;
                    int i21111111111111111111116 = i21111111111111111111115 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111113 = f(lazyGridItemProviderD111113, state, overscrollEffectB111113, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111113, composer2, 1073741824 | i21111111111111111111114 | (i21111111111111111111115 & 7168) | (i21111111111111111111115 & 57344) | i21111111111111111111116 | (i21111111111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111113, state, composer2, i21111111111111111111114);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111114 = orientation;
                    Modifier modifierA111113 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111117.B(state.r()).B(state.g()), lazyGridItemProviderD111113, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111111115 & 896) | 4096 | (i21111111111111111111113 & 57344) | i21111111111111111111116 | (i21111111111111111111113 & 3670016)), orientation111114), overscrollEffectB111113);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111113, ScrollableKt.h(modifierA111113, state, orientation111114, overscrollEffectB111113, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111113, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier111117;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i19 = 805306368;
            i13 |= i19;
            if ((i12 & 1024) != 0) {
                i20 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(content)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i20 = i11 | i21;
            } else {
                i20 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB111114 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111111111117 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD111114 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111117 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111114 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller111114);
                    objH = compositionScopedCoroutineScopeCanceller111114;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf111114 = Boolean.valueOf(z10);
                Modifier modifier111118 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf111114) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111114 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator111114);
                int i21111111111111111111118 = i13 & 112;
                int i21111111111111111111119 = i13 << 3;
                int i211111111111111111111110 = i21111111111111111111119 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111114 = f(lazyGridItemProviderD111114, state, overscrollEffectB111114, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111114, composer2, 1073741824 | i21111111111111111111118 | (i21111111111111111111119 & 7168) | (i21111111111111111111119 & 57344) | i211111111111111111111110 | (i21111111111111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD111114, state, composer2, i21111111111111111111118);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation111115 = orientation;
                Modifier modifierA111114 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111118.B(state.r()).B(state.g()), lazyGridItemProviderD111114, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111111119 & 896) | 4096 | (i21111111111111111111117 & 57344) | i211111111111111111111110 | (i21111111111111111111117 & 3670016)), orientation111115), overscrollEffectB111114);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD111114, ScrollableKt.h(modifierA111114, state, orientation111115, overscrollEffectB111114, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111114, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier111118;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB111115 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i211111111111111111111111 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD111115 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111111111 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111115 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller111115);
                    objH = compositionScopedCoroutineScopeCanceller111115;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf111115 = Boolean.valueOf(z10);
                Modifier modifier111119 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf111115) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111115 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator111115);
                int i211111111111111111111112 = i13 & 112;
                int i211111111111111111111113 = i13 << 3;
                int i211111111111111111111114 = i211111111111111111111113 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111115 = f(lazyGridItemProviderD111115, state, overscrollEffectB111115, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111115, composer2, 1073741824 | i211111111111111111111112 | (i211111111111111111111113 & 7168) | (i211111111111111111111113 & 57344) | i211111111111111111111114 | (i211111111111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD111115, state, composer2, i211111111111111111111112);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation111116 = orientation;
                Modifier modifierA111115 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier111119.B(state.r()).B(state.g()), lazyGridItemProviderD111115, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111111113 & 896) | 4096 | (i211111111111111111111111 & 57344) | i211111111111111111111114 | (i211111111111111111111111 & 3670016)), orientation111116), overscrollEffectB111115);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD111115, ScrollableKt.h(modifierA111115, state, orientation111116, overscrollEffectB111115, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111115, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier111119;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
        }
        i13 |= 12582912;
        if ((i12 & 256) != 0) {
            if ((i10 & 234881024) == 0) {
                if (composerS.k(verticalArrangement)) {
                    i18 = 67108864;
                } else {
                    i18 = 33554432;
                }
            }
            if ((i12 & 512) != 0) {
                if ((1879048192 & i10) == 0) {
                    if (composerS.k(horizontalArrangement)) {
                        i19 = 536870912;
                    } else {
                        i19 = 268435456;
                    }
                }
                if ((i12 & 1024) != 0) {
                    i20 = i11 | 6;
                } else if ((i11 & 14) == 0) {
                    if (composerS.k(content)) {
                        i21 = 4;
                    } else {
                        i21 = 2;
                    }
                    i20 = i11 | i21;
                } else {
                    i20 = i11;
                }
                if ((i13 & 1533916891) != 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111116 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i211111111111111111111115 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111116 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111111115 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111116 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111116);
                        objH = compositionScopedCoroutineScopeCanceller111116;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111116 = Boolean.valueOf(z10);
                    Modifier modifier1111110 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111116) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111116 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111116);
                    int i211111111111111111111116 = i13 & 112;
                    int i211111111111111111111117 = i13 << 3;
                    int i211111111111111111111118 = i211111111111111111111117 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111116 = f(lazyGridItemProviderD111116, state, overscrollEffectB111116, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111116, composer2, 1073741824 | i211111111111111111111116 | (i211111111111111111111117 & 7168) | (i211111111111111111111117 & 57344) | i211111111111111111111118 | (i211111111111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111116, state, composer2, i211111111111111111111116);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111117 = orientation;
                    Modifier modifierA111116 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111110.B(state.r()).B(state.g()), lazyGridItemProviderD111116, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111111117 & 896) | 4096 | (i211111111111111111111115 & 57344) | i211111111111111111111118 | (i211111111111111111111115 & 3670016)), orientation111117), overscrollEffectB111116);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111116, ScrollableKt.h(modifierA111116, state, orientation111117, overscrollEffectB111116, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111116, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1111110;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    } else {
                        if (i23 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if (i24 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i14 == 0) {
                        }
                        if ((i12 & 64) != 0) {
                            i13 &= -3670017;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            modifier3 = modifier2;
                        } else {
                            flingBehaviorA = flingBehavior;
                            modifier3 = modifier2;
                            z13 = z12;
                            paddingValues3 = paddingValuesA;
                        }
                    }
                    composerS.A();
                    OverscrollEffect overscrollEffectB111117 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                    int i211111111111111111111119 = i13 >> 3;
                    LazyGridItemProvider lazyGridItemProviderD111117 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111111119 & 14) | ((i20 << 3) & 112));
                    composerS.G(773894976);
                    composerS.G(-492369756);
                    objH = composerS.H();
                    companion = Composer.Companion;
                    if (objH == companion.a()) {
                        CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111117 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                        composerS.z(compositionScopedCoroutineScopeCanceller111117);
                        objH = compositionScopedCoroutineScopeCanceller111117;
                    }
                    composerS.Q();
                    o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                    composerS.Q();
                    Boolean boolValueOf111117 = Boolean.valueOf(z10);
                    Modifier modifier1111111 = modifier3;
                    composerS.G(511388516);
                    zK = composerS.k(boolValueOf111117) | composerS.k(state);
                    objH2 = composerS.H();
                    if (zK) {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    } else {
                        objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                        composerS.z(objH2);
                    }
                    composerS.Q();
                    LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111117 = (LazyGridItemPlacementAnimator) objH2;
                    state.z(lazyGridItemPlacementAnimator111117);
                    int i2111111111111111111111110 = i13 & 112;
                    int i2111111111111111111111111 = i13 << 3;
                    int i2111111111111111111111112 = i2111111111111111111111111 & 458752;
                    composer2 = composerS;
                    p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111117 = f(lazyGridItemProviderD111117, state, overscrollEffectB111117, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111117, composer2, 1073741824 | i2111111111111111111111110 | (i2111111111111111111111111 & 7168) | (i2111111111111111111111111 & 57344) | i2111111111111111111111112 | (i2111111111111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                    state.D(z10);
                    b(lazyGridItemProviderD111117, state, composer2, i2111111111111111111111110);
                    if (z10) {
                        orientation = Orientation.Vertical;
                    } else {
                        orientation = Orientation.Horizontal;
                    }
                    Orientation orientation111118 = orientation;
                    Modifier modifierA111117 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111111.B(state.r()).B(state.g()), lazyGridItemProviderD111117, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111111111 & 896) | 4096 | (i211111111111111111111119 & 57344) | i2111111111111111111111112 | (i211111111111111111111119 & 3670016)), orientation111118), overscrollEffectB111117);
                    composer2.G(-1163690407);
                    z14 = !z13;
                    if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                        z15 = z14;
                    } else {
                        z15 = z14;
                    }
                    composer2.Q();
                    LazyLayoutKt.a(lazyGridItemProviderD111117, ScrollableKt.h(modifierA111117, state, orientation111118, overscrollEffectB111117, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111117, composer2, 0, 0);
                    paddingValues4 = paddingValues3;
                    modifier4 = modifier1111111;
                    z16 = z13;
                    flingBehavior2 = flingBehaviorA;
                }
                scopeUpdateScopeU = composer2.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
            }
            i19 = 805306368;
            i13 |= i19;
            if ((i12 & 1024) != 0) {
                i20 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(content)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i20 = i11 | i21;
            } else {
                i20 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB111118 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i2111111111111111111111113 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD111118 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111111111113 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111118 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller111118);
                    objH = compositionScopedCoroutineScopeCanceller111118;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf111118 = Boolean.valueOf(z10);
                Modifier modifier1111112 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf111118) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111118 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator111118);
                int i2111111111111111111111114 = i13 & 112;
                int i2111111111111111111111115 = i13 << 3;
                int i2111111111111111111111116 = i2111111111111111111111115 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111118 = f(lazyGridItemProviderD111118, state, overscrollEffectB111118, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111118, composer2, 1073741824 | i2111111111111111111111114 | (i2111111111111111111111115 & 7168) | (i2111111111111111111111115 & 57344) | i2111111111111111111111116 | (i2111111111111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD111118, state, composer2, i2111111111111111111111114);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation111119 = orientation;
                Modifier modifierA111118 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111112.B(state.r()).B(state.g()), lazyGridItemProviderD111118, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111111115 & 896) | 4096 | (i2111111111111111111111113 & 57344) | i2111111111111111111111116 | (i2111111111111111111111113 & 3670016)), orientation111119), overscrollEffectB111118);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD111118, ScrollableKt.h(modifierA111118, state, orientation111119, overscrollEffectB111118, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111118, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1111112;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB111119 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i2111111111111111111111117 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD111119 = LazyGridItemProviderImplKt.d(state, content, composerS, (i2111111111111111111111117 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller111119 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller111119);
                    objH = compositionScopedCoroutineScopeCanceller111119;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf111119 = Boolean.valueOf(z10);
                Modifier modifier1111113 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf111119) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator111119 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator111119);
                int i2111111111111111111111118 = i13 & 112;
                int i2111111111111111111111119 = i13 << 3;
                int i21111111111111111111111110 = i2111111111111111111111119 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF111119 = f(lazyGridItemProviderD111119, state, overscrollEffectB111119, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator111119, composer2, 1073741824 | i2111111111111111111111118 | (i2111111111111111111111119 & 7168) | (i2111111111111111111111119 & 57344) | i21111111111111111111111110 | (i2111111111111111111111119 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD111119, state, composer2, i2111111111111111111111118);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation1111110 = orientation;
                Modifier modifierA111119 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111113.B(state.r()).B(state.g()), lazyGridItemProviderD111119, state, o0VarA, z10, z13, z11, composer2, (i2111111111111111111111119 & 896) | 4096 | (i2111111111111111111111117 & 57344) | i21111111111111111111111110 | (i2111111111111111111111117 & 3670016)), orientation1111110), overscrollEffectB111119);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD111119, ScrollableKt.h(modifierA111119, state, orientation1111110, overscrollEffectB111119, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF111119, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1111113;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
        }
        i18 = 100663296;
        i13 |= i18;
        if ((i12 & 512) != 0) {
            if ((1879048192 & i10) == 0) {
                if (composerS.k(horizontalArrangement)) {
                    i19 = 536870912;
                } else {
                    i19 = 268435456;
                }
            }
            if ((i12 & 1024) != 0) {
                i20 = i11 | 6;
            } else if ((i11 & 14) == 0) {
                if (composerS.k(content)) {
                    i21 = 4;
                } else {
                    i21 = 2;
                }
                i20 = i11 | i21;
            } else {
                i20 = i11;
            }
            if ((i13 & 1533916891) != 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB1111110 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111111111111111 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD1111110 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111111111 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111110 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller1111110);
                    objH = compositionScopedCoroutineScopeCanceller1111110;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf1111110 = Boolean.valueOf(z10);
                Modifier modifier1111114 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf1111110) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1111110 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator1111110);
                int i21111111111111111111111112 = i13 & 112;
                int i21111111111111111111111113 = i13 << 3;
                int i21111111111111111111111114 = i21111111111111111111111113 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1111110 = f(lazyGridItemProviderD1111110, state, overscrollEffectB1111110, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1111110, composer2, 1073741824 | i21111111111111111111111112 | (i21111111111111111111111113 & 7168) | (i21111111111111111111111113 & 57344) | i21111111111111111111111114 | (i21111111111111111111111113 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD1111110, state, composer2, i21111111111111111111111112);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation1111111 = orientation;
                Modifier modifierA1111110 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111114.B(state.r()).B(state.g()), lazyGridItemProviderD1111110, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111111111113 & 896) | 4096 | (i21111111111111111111111111 & 57344) | i21111111111111111111111114 | (i21111111111111111111111111 & 3670016)), orientation1111111), overscrollEffectB1111110);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD1111110, ScrollableKt.h(modifierA1111110, state, orientation1111111, overscrollEffectB1111110, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1111110, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1111114;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                } else {
                    if (i23 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if (i24 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i14 == 0) {
                    }
                    if ((i12 & 64) != 0) {
                        i13 &= -3670017;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        modifier3 = modifier2;
                    } else {
                        flingBehaviorA = flingBehavior;
                        modifier3 = modifier2;
                        z13 = z12;
                        paddingValues3 = paddingValuesA;
                    }
                }
                composerS.A();
                OverscrollEffect overscrollEffectB1111111 = ScrollableDefaults.INSTANCE.b(composerS, 6);
                int i21111111111111111111111115 = i13 >> 3;
                LazyGridItemProvider lazyGridItemProviderD1111111 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111111115 & 14) | ((i20 << 3) & 112));
                composerS.G(773894976);
                composerS.G(-492369756);
                objH = composerS.H();
                companion = Composer.Companion;
                if (objH == companion.a()) {
                    CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111111 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                    composerS.z(compositionScopedCoroutineScopeCanceller1111111);
                    objH = compositionScopedCoroutineScopeCanceller1111111;
                }
                composerS.Q();
                o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
                composerS.Q();
                Boolean boolValueOf1111111 = Boolean.valueOf(z10);
                Modifier modifier1111115 = modifier3;
                composerS.G(511388516);
                zK = composerS.k(boolValueOf1111111) | composerS.k(state);
                objH2 = composerS.H();
                if (zK) {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                } else {
                    objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                    composerS.z(objH2);
                }
                composerS.Q();
                LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1111111 = (LazyGridItemPlacementAnimator) objH2;
                state.z(lazyGridItemPlacementAnimator1111111);
                int i21111111111111111111111116 = i13 & 112;
                int i21111111111111111111111117 = i13 << 3;
                int i21111111111111111111111118 = i21111111111111111111111117 & 458752;
                composer2 = composerS;
                p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1111111 = f(lazyGridItemProviderD1111111, state, overscrollEffectB1111111, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1111111, composer2, 1073741824 | i21111111111111111111111116 | (i21111111111111111111111117 & 7168) | (i21111111111111111111111117 & 57344) | i21111111111111111111111118 | (i21111111111111111111111117 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
                state.D(z10);
                b(lazyGridItemProviderD1111111, state, composer2, i21111111111111111111111116);
                if (z10) {
                    orientation = Orientation.Vertical;
                } else {
                    orientation = Orientation.Horizontal;
                }
                Orientation orientation1111112 = orientation;
                Modifier modifierA1111111 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111115.B(state.r()).B(state.g()), lazyGridItemProviderD1111111, state, o0VarA, z10, z13, z11, composer2, (i21111111111111111111111117 & 896) | 4096 | (i21111111111111111111111115 & 57344) | i21111111111111111111111118 | (i21111111111111111111111115 & 3670016)), orientation1111112), overscrollEffectB1111111);
                composer2.G(-1163690407);
                z14 = !z13;
                if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                    z15 = z14;
                } else {
                    z15 = z14;
                }
                composer2.Q();
                LazyLayoutKt.a(lazyGridItemProviderD1111111, ScrollableKt.h(modifierA1111111, state, orientation1111112, overscrollEffectB1111111, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1111111, composer2, 0, 0);
                paddingValues4 = paddingValues3;
                modifier4 = modifier1111115;
                z16 = z13;
                flingBehavior2 = flingBehaviorA;
            }
            scopeUpdateScopeU = composer2.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
        }
        i19 = 805306368;
        i13 |= i19;
        if ((i12 & 1024) != 0) {
            i20 = i11 | 6;
        } else if ((i11 & 14) == 0) {
            if (composerS.k(content)) {
                i21 = 4;
            } else {
                i21 = 2;
            }
            i20 = i11 | i21;
        } else {
            i20 = i11;
        }
        if ((i13 & 1533916891) != 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i24 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i14 == 0) {
                }
                if ((i12 & 64) != 0) {
                    i13 &= -3670017;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    modifier3 = modifier2;
                } else {
                    flingBehaviorA = flingBehavior;
                    modifier3 = modifier2;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                }
            } else {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i24 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i14 == 0) {
                }
                if ((i12 & 64) != 0) {
                    i13 &= -3670017;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    modifier3 = modifier2;
                } else {
                    flingBehaviorA = flingBehavior;
                    modifier3 = modifier2;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                }
            }
            composerS.A();
            OverscrollEffect overscrollEffectB1111112 = ScrollableDefaults.INSTANCE.b(composerS, 6);
            int i21111111111111111111111119 = i13 >> 3;
            LazyGridItemProvider lazyGridItemProviderD1111112 = LazyGridItemProviderImplKt.d(state, content, composerS, (i21111111111111111111111119 & 14) | ((i20 << 3) & 112));
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111112 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1111112);
                objH = compositionScopedCoroutineScopeCanceller1111112;
            }
            composerS.Q();
            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Boolean boolValueOf1111112 = Boolean.valueOf(z10);
            Modifier modifier1111116 = modifier3;
            composerS.G(511388516);
            zK = composerS.k(boolValueOf1111112) | composerS.k(state);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH2);
            } else {
                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH2);
            }
            composerS.Q();
            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1111112 = (LazyGridItemPlacementAnimator) objH2;
            state.z(lazyGridItemPlacementAnimator1111112);
            int i211111111111111111111111110 = i13 & 112;
            int i211111111111111111111111111 = i13 << 3;
            int i211111111111111111111111112 = i211111111111111111111111111 & 458752;
            composer2 = composerS;
            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1111112 = f(lazyGridItemProviderD1111112, state, overscrollEffectB1111112, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1111112, composer2, 1073741824 | i211111111111111111111111110 | (i211111111111111111111111111 & 7168) | (i211111111111111111111111111 & 57344) | i211111111111111111111111112 | (i211111111111111111111111111 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
            state.D(z10);
            b(lazyGridItemProviderD1111112, state, composer2, i211111111111111111111111110);
            if (z10) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation1111113 = orientation;
            Modifier modifierA1111112 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111116.B(state.r()).B(state.g()), lazyGridItemProviderD1111112, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111111111111 & 896) | 4096 | (i21111111111111111111111119 & 57344) | i211111111111111111111111112 | (i21111111111111111111111119 & 3670016)), orientation1111113), overscrollEffectB1111112);
            composer2.G(-1163690407);
            z14 = !z13;
            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z15 = z14;
            } else {
                z15 = z14;
            }
            composer2.Q();
            LazyLayoutKt.a(lazyGridItemProviderD1111112, ScrollableKt.h(modifierA1111112, state, orientation1111113, overscrollEffectB1111112, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1111112, composer2, 0, 0);
            paddingValues4 = paddingValues3;
            modifier4 = modifier1111116;
            z16 = z13;
            flingBehavior2 = flingBehaviorA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i24 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i14 == 0) {
                }
                if ((i12 & 64) != 0) {
                    i13 &= -3670017;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    modifier3 = modifier2;
                } else {
                    flingBehaviorA = flingBehavior;
                    modifier3 = modifier2;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                }
            } else {
                if (i23 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if (i24 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i14 == 0) {
                }
                if ((i12 & 64) != 0) {
                    i13 &= -3670017;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    modifier3 = modifier2;
                } else {
                    flingBehaviorA = flingBehavior;
                    modifier3 = modifier2;
                    z13 = z12;
                    paddingValues3 = paddingValuesA;
                }
            }
            composerS.A();
            OverscrollEffect overscrollEffectB1111113 = ScrollableDefaults.INSTANCE.b(composerS, 6);
            int i211111111111111111111111113 = i13 >> 3;
            LazyGridItemProvider lazyGridItemProviderD1111113 = LazyGridItemProviderImplKt.d(state, content, composerS, (i211111111111111111111111113 & 14) | ((i20 << 3) & 112));
            composerS.G(773894976);
            composerS.G(-492369756);
            objH = composerS.H();
            companion = Composer.Companion;
            if (objH == companion.a()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller1111113 = new CompositionScopedCoroutineScopeCanceller(EffectsKt.j(h.INSTANCE, composerS));
                composerS.z(compositionScopedCoroutineScopeCanceller1111113);
                objH = compositionScopedCoroutineScopeCanceller1111113;
            }
            composerS.Q();
            o0VarA = ((CompositionScopedCoroutineScopeCanceller) objH).a();
            composerS.Q();
            Boolean boolValueOf1111113 = Boolean.valueOf(z10);
            Modifier modifier1111117 = modifier3;
            composerS.G(511388516);
            zK = composerS.k(boolValueOf1111113) | composerS.k(state);
            objH2 = composerS.H();
            if (zK) {
                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH2);
            } else {
                objH2 = new LazyGridItemPlacementAnimator(o0VarA, z10);
                composerS.z(objH2);
            }
            composerS.Q();
            LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator1111113 = (LazyGridItemPlacementAnimator) objH2;
            state.z(lazyGridItemPlacementAnimator1111113);
            int i211111111111111111111111114 = i13 & 112;
            int i211111111111111111111111115 = i13 << 3;
            int i211111111111111111111111116 = i211111111111111111111111115 & 458752;
            composer2 = composerS;
            p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVarF1111113 = f(lazyGridItemProviderD1111113, state, overscrollEffectB1111113, slotSizesSums, paddingValues3, z13, z10, horizontalArrangement, verticalArrangement, lazyGridItemPlacementAnimator1111113, composer2, 1073741824 | i211111111111111111111111114 | (i211111111111111111111111115 & 7168) | (i211111111111111111111111115 & 57344) | i211111111111111111111111116 | (i211111111111111111111111115 & 3670016) | ((i13 >> 6) & 29360128) | (i13 & 234881024), 0);
            state.D(z10);
            b(lazyGridItemProviderD1111113, state, composer2, i211111111111111111111111114);
            if (z10) {
                orientation = Orientation.Vertical;
            } else {
                orientation = Orientation.Horizontal;
            }
            Orientation orientation1111114 = orientation;
            Modifier modifierA1111113 = OverscrollKt.a(ClipScrollableContainerKt.a(LazySemanticsKt.a(modifier1111117.B(state.r()).B(state.g()), lazyGridItemProviderD1111113, state, o0VarA, z10, z13, z11, composer2, (i211111111111111111111111115 & 896) | 4096 | (i211111111111111111111111113 & 57344) | i211111111111111111111111116 | (i211111111111111111111111113 & 3670016)), orientation1111114), overscrollEffectB1111113);
            composer2.G(-1163690407);
            z14 = !z13;
            if (composer2.x(CompositionLocalsKt.j()) == LayoutDirection.Rtl) {
                z15 = z14;
            } else {
                z15 = z14;
            }
            composer2.Q();
            LazyLayoutKt.a(lazyGridItemProviderD1111113, ScrollableKt.h(modifierA1111113, state, orientation1111114, overscrollEffectB1111113, z11, z15, flingBehaviorA, state.l()), state.p(), pVarF1111113, composer2, 0, 0);
            paddingValues4 = paddingValues3;
            modifier4 = modifier1111117;
            z16 = z13;
            flingBehavior2 = flingBehaviorA;
        }
        scopeUpdateScopeU = composer2.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyGridKt$LazyGrid$2(modifier4, state, slotSizesSums, paddingValues4, z16, z10, flingBehavior2, z11, verticalArrangement, horizontalArrangement, content, i10, i11, i12));
    }

    @Composable
    private static final p<LazyLayoutMeasureScope, Constraints, MeasureResult> f(LazyGridItemProvider lazyGridItemProvider, LazyGridState lazyGridState, OverscrollEffect overscrollEffect, p<? super Density, ? super Constraints, ? extends List<Integer>> pVar, PaddingValues paddingValues, boolean z6, boolean z10, Arrangement.Horizontal horizontal, Arrangement.Vertical vertical, LazyGridItemPlacementAnimator lazyGridItemPlacementAnimator, Composer composer, int i10, int i11) {
        composer.G(1958911962);
        Arrangement.Horizontal horizontal2 = (i11 & 128) != 0 ? null : horizontal;
        Arrangement.Vertical vertical2 = (i11 & 256) != 0 ? null : vertical;
        Object[] objArr = {lazyGridState, overscrollEffect, pVar, paddingValues, Boolean.valueOf(z6), Boolean.valueOf(z10), horizontal2, vertical2, lazyGridItemPlacementAnimator};
        composer.G(-568225417);
        boolean zK = false;
        for (int i12 = 0; i12 < 9; i12++) {
            zK |= composer.k(objArr[i12]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyGridKt$rememberLazyGridMeasurePolicy$1$1(z10, paddingValues, z6, lazyGridState, lazyGridItemProvider, pVar, vertical2, horizontal2, lazyGridItemPlacementAnimator, overscrollEffect);
            composer.z(objH);
        }
        composer.Q();
        p<LazyLayoutMeasureScope, Constraints, MeasureResult> pVar2 = (p) objH;
        composer.Q();
        return pVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Composable
    public static final void b(LazyGridItemProvider lazyGridItemProvider, LazyGridState lazyGridState, Composer composer, int i10) {
        int i11;
        int i12;
        int i13;
        Composer composerS = composer.s(950944068);
        if ((i10 & 14) == 0) {
            if (composerS.k(lazyGridItemProvider)) {
                i13 = 4;
            } else {
                i13 = 2;
            }
            i11 = i13 | i10;
        } else {
            i11 = i10;
        }
        if ((i10 & 112) == 0) {
            if (composerS.k(lazyGridState)) {
                i12 = 32;
            } else {
                i12 = 16;
            }
            i11 |= i12;
        }
        if ((i11 & 91) == 18 && composerS.b()) {
            composerS.g();
        } else if (lazyGridItemProvider.f() > 0) {
            lazyGridState.F(lazyGridItemProvider);
        }
        ScopeUpdateScope scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU != null) {
            scopeUpdateScopeU.a(new LazyGridKt$ScrollPositionUpdater$1(lazyGridItemProvider, lazyGridState, i10));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(OverscrollEffect overscrollEffect, LazyGridMeasureResult lazyGridMeasureResult) {
        Object obj;
        boolean z6;
        LazyMeasuredItem[] lazyMeasuredItemArrB;
        boolean zE = lazyGridMeasureResult.e();
        LazyMeasuredLine lazyMeasuredLineG = lazyGridMeasureResult.g();
        boolean z10 = false;
        if (lazyMeasuredLineG == null || (lazyMeasuredItemArrB = lazyMeasuredLineG.b()) == null || (obj = (LazyMeasuredItem) kotlin.collections.p.N(lazyMeasuredItemArrB)) == null) {
            obj = 0;
        }
        if (t.e(obj, 0) && lazyGridMeasureResult.h() == 0) {
            z6 = false;
        } else {
            z6 = true;
        }
        if (zE || z6) {
            z10 = true;
        }
        overscrollEffect.setEnabled(z10);
    }
}
