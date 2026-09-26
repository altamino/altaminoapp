package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public final class LazyGridDslKt {
    /* JADX WARN: Code duplicated, block: B:101:0x0121  */
    /* JADX WARN: Code duplicated, block: B:103:0x0125  */
    /* JADX WARN: Code duplicated, block: B:105:0x0129  */
    /* JADX WARN: Code duplicated, block: B:107:0x012f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0132  */
    /* JADX WARN: Code duplicated, block: B:111:0x013e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0158  */
    /* JADX WARN: Code duplicated, block: B:117:0x0165  */
    /* JADX WARN: Code duplicated, block: B:130:0x0190 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0192  */
    /* JADX WARN: Code duplicated, block: B:132:0x0195  */
    /* JADX WARN: Code duplicated, block: B:135:0x019c  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01da  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:159:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:166:0x0266  */
    /* JADX WARN: Code duplicated, block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0066  */
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
    /* JADX WARN: Code duplicated, block: B:59:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:88:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:91:0x0101  */
    /* JADX WARN: Code duplicated, block: B:92:0x0108  */
    /* JADX WARN: Code duplicated, block: B:94:0x010e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0114  */
    /* JADX WARN: Code duplicated, block: B:97:0x0117  */
    @ComposableTarget
    @Composable
    public static final void a(@NotNull GridCells rows, @Nullable Modifier modifier, @Nullable LazyGridState lazyGridState, @Nullable PaddingValues paddingValues, boolean z6, @Nullable Arrangement.Horizontal horizontal, @Nullable Arrangement.Vertical vertical, @Nullable FlingBehavior flingBehavior, boolean z10, @NotNull l<? super LazyGridScope, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        PaddingValues paddingValues2;
        int i14;
        int i15;
        boolean z11;
        int i16;
        Arrangement.Horizontal horizontal2;
        int i17;
        Arrangement.Vertical vertical2;
        int i18;
        int i19;
        int i20;
        int i21;
        Modifier modifier2;
        LazyGridState lazyGridStateA;
        PaddingValues paddingValuesA;
        boolean z12;
        Arrangement.Horizontal horizontalC;
        Arrangement.Vertical verticalF;
        FlingBehavior flingBehaviorA;
        boolean z13;
        boolean z14;
        PaddingValues paddingValues3;
        Arrangement.Horizontal horizontal3;
        Arrangement.Vertical vertical3;
        FlingBehavior flingBehavior2;
        Arrangement arrangement;
        Modifier modifier3;
        LazyGridState lazyGridState2;
        FlingBehavior flingBehavior3;
        boolean z15;
        Arrangement.Vertical vertical4;
        boolean z16;
        Arrangement.Horizontal horizontal4;
        PaddingValues paddingValues4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(rows, "rows");
        t.j(content, "content");
        Composer composerS = composer.s(2123608858);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(rows) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i22 = i11 & 2;
        if (i22 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            if ((i10 & 896) != 0) {
                i12 |= ((i11 & 4) == 0 || !composerS.k(lazyGridState)) ? 128 : 256;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        z11 = z6;
                        if (composerS.m(z11)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((458752 & i10) == 0) {
                        if ((i11 & 32) == 0) {
                            horizontal2 = horizontal;
                            int i23 = composerS.k(horizontal2) ? 131072 : 65536;
                            i12 |= i23;
                        } else {
                            horizontal2 = horizontal;
                        }
                        i12 |= i23;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i17 = i11 & 64;
                    if (i17 != 0) {
                        i12 |= 1572864;
                        vertical2 = vertical;
                    } else {
                        vertical2 = vertical;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(vertical2)) {
                                i18 = 1048576;
                            } else {
                                i18 = 524288;
                            }
                            i12 |= i18;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i19 = i11 & 256;
                    if (i19 != 0) {
                        i12 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.m(z10)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 512) != 0) {
                        if ((i10 & 1879048192) == 0) {
                            if (composerS.k(content)) {
                                i21 = 536870912;
                            } else {
                                i21 = 268435456;
                            }
                        }
                        if ((1533916891 & i12) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i22 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if ((i11 & 4) != 0) {
                                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                    i12 &= -897;
                                } else {
                                    lazyGridStateA = lazyGridState;
                                }
                                if (i13 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                z12 = i15 == 0 ? z11 : false;
                                if ((i11 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z12) {
                                        horizontalC = arrangement.c();
                                    } else {
                                        horizontalC = arrangement.e();
                                    }
                                    i12 &= -458753;
                                } else {
                                    horizontalC = horizontal2;
                                }
                                if (i17 != 0) {
                                    verticalF = Arrangement.INSTANCE.f();
                                } else {
                                    verticalF = vertical2;
                                }
                                if ((i11 & 128) != 0) {
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    i12 &= -29360129;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                }
                                if (i19 != 0) {
                                    z13 = true;
                                } else {
                                    z13 = z10;
                                }
                                z14 = z12;
                                paddingValues3 = paddingValuesA;
                                horizontal3 = horizontalC;
                                vertical3 = verticalF;
                                flingBehavior2 = flingBehaviorA;
                            } else {
                                composerS.g();
                                if ((i11 & 4) != 0) {
                                    i12 &= -897;
                                }
                                if ((i11 & 32) != 0) {
                                    i12 &= -458753;
                                }
                                if ((i11 & 128) != 0) {
                                    i12 &= -29360129;
                                }
                                modifier2 = modifier;
                                lazyGridStateA = lazyGridState;
                                flingBehavior2 = flingBehavior;
                                z13 = z10;
                                paddingValues3 = paddingValues2;
                                z14 = z11;
                                horizontal3 = horizontal2;
                                vertical3 = vertical2;
                            }
                            composerS.A();
                            int i24 = i12 >> 3;
                            p<Density, Constraints, List<Integer>> pVarF = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i24 & 896));
                            int i25 = (i24 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i24 & 112) | (i12 & 7168) | (57344 & i12) | (i24 & 3670016) | (i24 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                            int i26 = (i12 >> 27) & 14;
                            modifier3 = modifier2;
                            lazyGridState2 = lazyGridStateA;
                            flingBehavior3 = flingBehavior2;
                            z15 = z13;
                            LazyGridKt.a(modifier3, lazyGridState2, pVarF, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i25, i26, 0);
                            vertical4 = vertical3;
                            z16 = z14;
                            horizontal4 = horizontal3;
                            paddingValues4 = paddingValues3;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            lazyGridState2 = lazyGridState;
                            flingBehavior3 = flingBehavior;
                            paddingValues4 = paddingValues2;
                            vertical4 = vertical2;
                            z16 = z11;
                            horizontal4 = horizontal2;
                            z15 = z10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
                    }
                    i21 = 805306368;
                    i12 |= i21;
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i27 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF2 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i27 & 896));
                        int i28 = (i27 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i27 & 112) | (i12 & 7168) | (57344 & i12) | (i27 & 3670016) | (i27 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i29 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF2, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i28, i29, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i210 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF3 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i210 & 896));
                        int i211 = (i210 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i210 & 112) | (i12 & 7168) | (57344 & i12) | (i210 & 3670016) | (i210 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i212 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF3, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211, i212, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                z11 = z6;
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerS.k(horizontal2)) {
                        }
                        i12 |= i23;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    vertical2 = vertical;
                } else {
                    vertical2 = vertical;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(vertical2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i213 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF4 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i213 & 896));
                        int i214 = (i213 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i213 & 112) | (i12 & 7168) | (57344 & i12) | (i213 & 3670016) | (i213 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i215 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF4, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i214, i215, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i216 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF5 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i216 & 896));
                        int i217 = (i216 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i216 & 112) | (i12 & 7168) | (57344 & i12) | (i216 & 3670016) | (i216 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i218 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF5, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i217, i218, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i219 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF6 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i219 & 896));
                    int i2110 = (i219 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i219 & 112) | (i12 & 7168) | (57344 & i12) | (i219 & 3670016) | (i219 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i2111 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF6, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2110, i2111, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2112 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF7 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2112 & 896));
                    int i2113 = (i2112 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2112 & 112) | (i12 & 7168) | (57344 & i12) | (i2112 & 3670016) | (i2112 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i2114 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF7, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2113, i2114, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerS.k(horizontal2)) {
                        }
                        i12 |= i23;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    vertical2 = vertical;
                } else {
                    vertical2 = vertical;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(vertical2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2115 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF8 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2115 & 896));
                        int i2116 = (i2115 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2115 & 112) | (i12 & 7168) | (57344 & i12) | (i2115 & 3670016) | (i2115 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i2117 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF8, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2116, i2117, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2118 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF9 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2118 & 896));
                        int i2119 = (i2118 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2118 & 112) | (i12 & 7168) | (57344 & i12) | (i2118 & 3670016) | (i2118 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i21110 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF9, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2119, i21110, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF10 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111 & 896));
                    int i21112 = (i21111 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111 & 112) | (i12 & 7168) | (57344 & i12) | (i21111 & 3670016) | (i21111 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF10, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21112, i21113, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF11 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21114 & 896));
                    int i21115 = (i21114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21114 & 112) | (i12 & 7168) | (57344 & i12) | (i21114 & 3670016) | (i21114 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21116 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF11, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21115, i21116, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            z11 = z6;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i12 |= i23;
            } else {
                horizontal2 = horizontal;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                vertical2 = vertical;
            } else {
                vertical2 = vertical;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(vertical2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21117 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF12 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21117 & 896));
                    int i21118 = (i21117 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21117 & 112) | (i12 & 7168) | (57344 & i12) | (i21117 & 3670016) | (i21117 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21119 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF12, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21118, i21119, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i211110 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF13 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211110 & 896));
                    int i211111 = (i211110 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211110 & 112) | (i12 & 7168) | (57344 & i12) | (i211110 & 3670016) | (i211110 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i211112 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF13, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111, i211112, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211113 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF14 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211113 & 896));
                int i211114 = (i211113 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211113 & 112) | (i12 & 7168) | (57344 & i12) | (i211113 & 3670016) | (i211113 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i211115 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF14, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211114, i211115, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211116 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF15 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211116 & 896));
                int i211117 = (i211116 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211116 & 112) | (i12 & 7168) | (57344 & i12) | (i211116 & 3670016) | (i211116 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i211118 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF15, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211117, i211118, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= 48;
        if ((i10 & 896) != 0) {
            i12 |= ((i11 & 4) == 0 || !composerS.k(lazyGridState)) ? 128 : 256;
        }
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                paddingValues2 = paddingValues;
                if (composerS.k(paddingValues2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        horizontal2 = horizontal;
                        if (composerS.k(horizontal2)) {
                        }
                        i12 |= i23;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    vertical2 = vertical;
                } else {
                    vertical2 = vertical;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(vertical2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i211119 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF16 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211119 & 896));
                        int i2111110 = (i211119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211119 & 112) | (i12 & 7168) | (57344 & i12) | (i211119 & 3670016) | (i211119 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i2111111 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF16, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111110, i2111111, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -458753;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i17 != 0) {
                                verticalF = Arrangement.INSTANCE.f();
                            } else {
                                verticalF = vertical2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            horizontal3 = horizontalC;
                            vertical3 = verticalF;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2111112 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarF17 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111112 & 896));
                        int i2111113 = (i2111112 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111112 & 112) | (i12 & 7168) | (57344 & i12) | (i2111112 & 3670016) | (i2111112 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                        int i2111114 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarF17, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111113, i2111114, 0);
                        vertical4 = vertical3;
                        z16 = z14;
                        horizontal4 = horizontal3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111115 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF18 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111115 & 896));
                    int i2111116 = (i2111115 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111115 & 112) | (i12 & 7168) | (57344 & i12) | (i2111115 & 3670016) | (i2111115 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i2111117 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF18, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111116, i2111117, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111118 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF19 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111118 & 896));
                    int i2111119 = (i2111118 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111118 & 112) | (i12 & 7168) | (57344 & i12) | (i2111118 & 3670016) | (i2111118 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21111110 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF19, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111119, i21111110, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            z11 = z6;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i12 |= i23;
            } else {
                horizontal2 = horizontal;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                vertical2 = vertical;
            } else {
                vertical2 = vertical;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(vertical2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111111 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF110 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111 & 896));
                    int i21111112 = (i21111111 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111 & 3670016) | (i21111111 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF110, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111112, i21111113, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF111 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111114 & 896));
                    int i21111115 = (i21111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111114 & 3670016) | (i21111114 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i21111116 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF111, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111115, i21111116, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i21111117 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF112 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111117 & 896));
                int i21111118 = (i21111117 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111117 & 112) | (i12 & 7168) | (57344 & i12) | (i21111117 & 3670016) | (i21111117 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i21111119 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF112, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111118, i21111119, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111110 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF113 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111110 & 896));
                int i211111111 = (i211111110 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111110 & 112) | (i12 & 7168) | (57344 & i12) | (i211111110 & 3670016) | (i211111110 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i211111112 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF113, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111111, i211111112, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= 3072;
        paddingValues2 = paddingValues;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                z11 = z6;
                if (composerS.m(z11)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i12 |= i23;
            } else {
                horizontal2 = horizontal;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                vertical2 = vertical;
            } else {
                vertical2 = vertical;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(vertical2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i211111113 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF114 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111113 & 896));
                    int i211111114 = (i211111113 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111113 & 112) | (i12 & 7168) | (57344 & i12) | (i211111113 & 3670016) | (i211111113 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i211111115 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF114, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111114, i211111115, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -458753;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i17 != 0) {
                            verticalF = Arrangement.INSTANCE.f();
                        } else {
                            verticalF = vertical2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        horizontal3 = horizontalC;
                        vertical3 = verticalF;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i211111116 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarF115 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111116 & 896));
                    int i211111117 = (i211111116 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111116 & 112) | (i12 & 7168) | (57344 & i12) | (i211111116 & 3670016) | (i211111116 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                    int i211111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarF115, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111117, i211111118, 0);
                    vertical4 = vertical3;
                    z16 = z14;
                    horizontal4 = horizontal3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111119 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF116 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111119 & 896));
                int i2111111110 = (i211111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111119 & 112) | (i12 & 7168) | (57344 & i12) | (i211111119 & 3670016) | (i211111119 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i2111111111 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF116, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111110, i2111111111, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i2111111112 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF117 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111112 & 896));
                int i2111111113 = (i2111111112 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111112 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111112 & 3670016) | (i2111111112 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i2111111114 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF117, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111113, i2111111114, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        z11 = z6;
        if ((458752 & i10) == 0) {
            if ((i11 & 32) == 0) {
                horizontal2 = horizontal;
                if (composerS.k(horizontal2)) {
                }
                i12 |= i23;
            } else {
                horizontal2 = horizontal;
            }
            i12 |= i23;
        } else {
            horizontal2 = horizontal;
        }
        i17 = i11 & 64;
        if (i17 != 0) {
            i12 |= 1572864;
            vertical2 = vertical;
        } else {
            vertical2 = vertical;
            if ((i10 & 3670016) == 0) {
                if (composerS.k(vertical2)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
        }
        i19 = i11 & 256;
        if (i19 != 0) {
            i12 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.m(z10)) {
                i20 = 67108864;
            } else {
                i20 = 33554432;
            }
            i12 |= i20;
        }
        if ((i11 & 512) != 0) {
            if ((i10 & 1879048192) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i2111111115 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF118 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111115 & 896));
                int i2111111116 = (i2111111115 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111115 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111115 & 3670016) | (i2111111115 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i2111111117 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF118, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111116, i2111111117, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -458753;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i17 != 0) {
                        verticalF = Arrangement.INSTANCE.f();
                    } else {
                        verticalF = vertical2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    horizontal3 = horizontalC;
                    vertical3 = verticalF;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i2111111118 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarF119 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111118 & 896));
                int i2111111119 = (i2111111118 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111118 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111118 & 3670016) | (i2111111118 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
                int i21111111110 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarF119, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111119, i21111111110, 0);
                vertical4 = vertical3;
                z16 = z14;
                horizontal4 = horizontal3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
        }
        i21 = 805306368;
        i12 |= i21;
        if ((1533916891 & i12) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -458753;
                } else {
                    horizontalC = horizontal2;
                }
                if (i17 != 0) {
                    verticalF = Arrangement.INSTANCE.f();
                } else {
                    verticalF = vertical2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                horizontal3 = horizontalC;
                vertical3 = verticalF;
                flingBehavior2 = flingBehaviorA;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -458753;
                } else {
                    horizontalC = horizontal2;
                }
                if (i17 != 0) {
                    verticalF = Arrangement.INSTANCE.f();
                } else {
                    verticalF = vertical2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                horizontal3 = horizontalC;
                vertical3 = verticalF;
                flingBehavior2 = flingBehaviorA;
            }
            composerS.A();
            int i21111111111 = i12 >> 3;
            p<Density, Constraints, List<Integer>> pVarF1110 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111111 & 896));
            int i21111111112 = (i21111111111 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111111 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111111 & 3670016) | (i21111111111 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
            int i21111111113 = (i12 >> 27) & 14;
            modifier3 = modifier2;
            lazyGridState2 = lazyGridStateA;
            flingBehavior3 = flingBehavior2;
            z15 = z13;
            LazyGridKt.a(modifier3, lazyGridState2, pVarF1110, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111112, i21111111113, 0);
            vertical4 = vertical3;
            z16 = z14;
            horizontal4 = horizontal3;
            paddingValues4 = paddingValues3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -458753;
                } else {
                    horizontalC = horizontal2;
                }
                if (i17 != 0) {
                    verticalF = Arrangement.INSTANCE.f();
                } else {
                    verticalF = vertical2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                horizontal3 = horizontalC;
                vertical3 = verticalF;
                flingBehavior2 = flingBehaviorA;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -458753;
                } else {
                    horizontalC = horizontal2;
                }
                if (i17 != 0) {
                    verticalF = Arrangement.INSTANCE.f();
                } else {
                    verticalF = vertical2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                horizontal3 = horizontalC;
                vertical3 = verticalF;
                flingBehavior2 = flingBehaviorA;
            }
            composerS.A();
            int i21111111114 = i12 >> 3;
            p<Density, Constraints, List<Integer>> pVarF1111 = f(rows, vertical3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111114 & 896));
            int i21111111115 = (i21111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111114 & 3670016) | (i21111111114 & 29360128) | ((i12 << 6) & 234881024) | ((i12 << 12) & 1879048192);
            int i21111111116 = (i12 >> 27) & 14;
            modifier3 = modifier2;
            lazyGridState2 = lazyGridStateA;
            flingBehavior3 = flingBehavior2;
            z15 = z13;
            LazyGridKt.a(modifier3, lazyGridState2, pVarF1111, paddingValues3, z14, false, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111115, i21111111116, 0);
            vertical4 = vertical3;
            z16 = z14;
            horizontal4 = horizontal3;
            paddingValues4 = paddingValues3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyGridDslKt$LazyHorizontalGrid$1(rows, modifier3, lazyGridState2, paddingValues4, z16, horizontal4, vertical4, flingBehavior3, z15, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0121  */
    /* JADX WARN: Code duplicated, block: B:103:0x0125  */
    /* JADX WARN: Code duplicated, block: B:105:0x0129  */
    /* JADX WARN: Code duplicated, block: B:107:0x012f  */
    /* JADX WARN: Code duplicated, block: B:108:0x0132  */
    /* JADX WARN: Code duplicated, block: B:111:0x013e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0158  */
    /* JADX WARN: Code duplicated, block: B:117:0x0165  */
    /* JADX WARN: Code duplicated, block: B:130:0x0190 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:131:0x0192  */
    /* JADX WARN: Code duplicated, block: B:132:0x0195  */
    /* JADX WARN: Code duplicated, block: B:135:0x019c  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:138:0x01a8  */
    /* JADX WARN: Code duplicated, block: B:139:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bb  */
    /* JADX WARN: Code duplicated, block: B:147:0x01bf  */
    /* JADX WARN: Code duplicated, block: B:148:0x01c4  */
    /* JADX WARN: Code duplicated, block: B:150:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:152:0x01ce  */
    /* JADX WARN: Code duplicated, block: B:153:0x01d5  */
    /* JADX WARN: Code duplicated, block: B:156:0x01da  */
    /* JADX WARN: Code duplicated, block: B:157:0x01e6  */
    /* JADX WARN: Code duplicated, block: B:159:0x01ea  */
    /* JADX WARN: Code duplicated, block: B:161:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:166:0x0263  */
    /* JADX WARN: Code duplicated, block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:26:0x0051  */
    /* JADX WARN: Code duplicated, block: B:34:0x0066  */
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
    /* JADX WARN: Code duplicated, block: B:59:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:64:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:67:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:71:0x00ca  */
    /* JADX WARN: Code duplicated, block: B:73:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:82:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:88:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:91:0x0101  */
    /* JADX WARN: Code duplicated, block: B:92:0x0108  */
    /* JADX WARN: Code duplicated, block: B:94:0x010e  */
    /* JADX WARN: Code duplicated, block: B:96:0x0114  */
    /* JADX WARN: Code duplicated, block: B:97:0x0117  */
    @ComposableTarget
    @Composable
    public static final void b(@NotNull GridCells columns, @Nullable Modifier modifier, @Nullable LazyGridState lazyGridState, @Nullable PaddingValues paddingValues, boolean z6, @Nullable Arrangement.Vertical vertical, @Nullable Arrangement.Horizontal horizontal, @Nullable FlingBehavior flingBehavior, boolean z10, @NotNull l<? super LazyGridScope, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        PaddingValues paddingValues2;
        int i14;
        int i15;
        boolean z11;
        int i16;
        Arrangement.Vertical vertical2;
        int i17;
        Arrangement.Horizontal horizontal2;
        int i18;
        int i19;
        int i20;
        int i21;
        Modifier modifier2;
        LazyGridState lazyGridStateA;
        PaddingValues paddingValuesA;
        boolean z12;
        Arrangement.Vertical verticalA;
        Arrangement.Horizontal horizontalE;
        FlingBehavior flingBehaviorA;
        boolean z13;
        boolean z14;
        PaddingValues paddingValues3;
        Arrangement.Vertical vertical3;
        Arrangement.Horizontal horizontal3;
        FlingBehavior flingBehavior2;
        Arrangement arrangement;
        Modifier modifier3;
        LazyGridState lazyGridState2;
        FlingBehavior flingBehavior3;
        boolean z15;
        Arrangement.Horizontal horizontal4;
        boolean z16;
        Arrangement.Vertical vertical4;
        PaddingValues paddingValues4;
        ScopeUpdateScope scopeUpdateScopeU;
        t.j(columns, "columns");
        t.j(content, "content");
        Composer composerS = composer.s(1485410512);
        if ((i11 & 1) != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(columns) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        int i22 = i11 & 2;
        if (i22 == 0) {
            if ((i10 & 112) == 0) {
                i12 |= composerS.k(modifier) ? 32 : 16;
            }
            if ((i10 & 896) != 0) {
                i12 |= ((i11 & 4) == 0 || !composerS.k(lazyGridState)) ? 128 : 256;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    paddingValues2 = paddingValues;
                    if (composerS.k(paddingValues2)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                i15 = i11 & 16;
                if (i15 != 0) {
                    if ((i10 & 57344) == 0) {
                        z11 = z6;
                        if (composerS.m(z11)) {
                            i16 = 16384;
                        } else {
                            i16 = 8192;
                        }
                        i12 |= i16;
                    }
                    if ((458752 & i10) == 0) {
                        if ((i11 & 32) == 0) {
                            vertical2 = vertical;
                            int i23 = composerS.k(vertical2) ? 131072 : 65536;
                            i12 |= i23;
                        } else {
                            vertical2 = vertical;
                        }
                        i12 |= i23;
                    } else {
                        vertical2 = vertical;
                    }
                    i17 = i11 & 64;
                    if (i17 != 0) {
                        i12 |= 1572864;
                        horizontal2 = horizontal;
                    } else {
                        horizontal2 = horizontal;
                        if ((i10 & 3670016) == 0) {
                            if (composerS.k(horizontal2)) {
                                i18 = 1048576;
                            } else {
                                i18 = 524288;
                            }
                            i12 |= i18;
                        }
                    }
                    if ((i10 & 29360128) != 0) {
                        i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                    }
                    i19 = i11 & 256;
                    if (i19 != 0) {
                        i12 |= 100663296;
                    } else if ((i10 & 234881024) == 0) {
                        if (composerS.m(z10)) {
                            i20 = 67108864;
                        } else {
                            i20 = 33554432;
                        }
                        i12 |= i20;
                    }
                    if ((i11 & 512) != 0) {
                        if ((i10 & 1879048192) == 0) {
                            if (composerS.k(content)) {
                                i21 = 536870912;
                            } else {
                                i21 = 268435456;
                            }
                        }
                        if ((1533916891 & i12) == 306783378 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i22 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if ((i11 & 4) != 0) {
                                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                    i12 &= -897;
                                } else {
                                    lazyGridStateA = lazyGridState;
                                }
                                if (i13 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues2;
                                }
                                z12 = i15 == 0 ? z11 : false;
                                if ((i11 & 32) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z12) {
                                        verticalA = arrangement.a();
                                    } else {
                                        verticalA = arrangement.f();
                                    }
                                    i12 &= -458753;
                                } else {
                                    verticalA = vertical2;
                                }
                                if (i17 != 0) {
                                    horizontalE = Arrangement.INSTANCE.e();
                                } else {
                                    horizontalE = horizontal2;
                                }
                                if ((i11 & 128) != 0) {
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    i12 &= -29360129;
                                } else {
                                    flingBehaviorA = flingBehavior;
                                }
                                if (i19 != 0) {
                                    z13 = true;
                                } else {
                                    z13 = z10;
                                }
                                z14 = z12;
                                paddingValues3 = paddingValuesA;
                                vertical3 = verticalA;
                                horizontal3 = horizontalE;
                                flingBehavior2 = flingBehaviorA;
                            } else {
                                composerS.g();
                                if ((i11 & 4) != 0) {
                                    i12 &= -897;
                                }
                                if ((i11 & 32) != 0) {
                                    i12 &= -458753;
                                }
                                if ((i11 & 128) != 0) {
                                    i12 &= -29360129;
                                }
                                modifier2 = modifier;
                                lazyGridStateA = lazyGridState;
                                flingBehavior2 = flingBehavior;
                                z13 = z10;
                                paddingValues3 = paddingValues2;
                                z14 = z11;
                                vertical3 = vertical2;
                                horizontal3 = horizontal2;
                            }
                            composerS.A();
                            int i24 = i12 >> 3;
                            p<Density, Constraints, List<Integer>> pVarE = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i24 & 896));
                            int i25 = (i24 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i24 & 112) | (i12 & 7168) | (57344 & i12) | (i24 & 3670016) | (i24 & 29360128);
                            int i26 = i12 << 9;
                            int i27 = i25 | (i26 & 234881024) | (i26 & 1879048192);
                            int i28 = (i12 >> 27) & 14;
                            modifier3 = modifier2;
                            lazyGridState2 = lazyGridStateA;
                            flingBehavior3 = flingBehavior2;
                            z15 = z13;
                            LazyGridKt.a(modifier3, lazyGridState2, pVarE, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i27, i28, 0);
                            horizontal4 = horizontal3;
                            z16 = z14;
                            vertical4 = vertical3;
                            paddingValues4 = paddingValues3;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            lazyGridState2 = lazyGridState;
                            flingBehavior3 = flingBehavior;
                            paddingValues4 = paddingValues2;
                            horizontal4 = horizontal2;
                            z16 = z11;
                            vertical4 = vertical2;
                            z15 = z10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
                    }
                    i21 = 805306368;
                    i12 |= i21;
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i29 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE2 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i29 & 896));
                        int i210 = (i29 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i29 & 112) | (i12 & 7168) | (57344 & i12) | (i29 & 3670016) | (i29 & 29360128);
                        int i211 = i12 << 9;
                        int i212 = i210 | (i211 & 234881024) | (i211 & 1879048192);
                        int i213 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE2, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i212, i213, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i214 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE3 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i214 & 896));
                        int i215 = (i214 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i214 & 112) | (i12 & 7168) | (57344 & i12) | (i214 & 3670016) | (i214 & 29360128);
                        int i216 = i12 << 9;
                        int i217 = i215 | (i216 & 234881024) | (i216 & 1879048192);
                        int i218 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE3, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i217, i218, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
                }
                i12 |= CpioConstants.C_ISBLK;
                z11 = z6;
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerS.k(vertical2)) {
                        }
                        i12 |= i23;
                    } else {
                        vertical2 = vertical;
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    horizontal2 = horizontal;
                } else {
                    horizontal2 = horizontal;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(horizontal2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i219 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE4 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i219 & 896));
                        int i2110 = (i219 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i219 & 112) | (i12 & 7168) | (57344 & i12) | (i219 & 3670016) | (i219 & 29360128);
                        int i2111 = i12 << 9;
                        int i2112 = i2110 | (i2111 & 234881024) | (i2111 & 1879048192);
                        int i2113 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE4, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2112, i2113, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2114 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE5 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2114 & 896));
                        int i2115 = (i2114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2114 & 112) | (i12 & 7168) | (57344 & i12) | (i2114 & 3670016) | (i2114 & 29360128);
                        int i2116 = i12 << 9;
                        int i2117 = i2115 | (i2116 & 234881024) | (i2116 & 1879048192);
                        int i2118 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE5, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2117, i2118, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE6 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2119 & 896));
                    int i21110 = (i2119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2119 & 112) | (i12 & 7168) | (57344 & i12) | (i2119 & 3670016) | (i2119 & 29360128);
                    int i21111 = i12 << 9;
                    int i21112 = i21110 | (i21111 & 234881024) | (i21111 & 1879048192);
                    int i21113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE6, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21112, i21113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE7 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21114 & 896));
                    int i21115 = (i21114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21114 & 112) | (i12 & 7168) | (57344 & i12) | (i21114 & 3670016) | (i21114 & 29360128);
                    int i21116 = i12 << 9;
                    int i21117 = i21115 | (i21116 & 234881024) | (i21116 & 1879048192);
                    int i21118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE7, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21117, i21118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= 3072;
            paddingValues2 = paddingValues;
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerS.k(vertical2)) {
                        }
                        i12 |= i23;
                    } else {
                        vertical2 = vertical;
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    horizontal2 = horizontal;
                } else {
                    horizontal2 = horizontal;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(horizontal2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i21119 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE8 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21119 & 896));
                        int i211110 = (i21119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21119 & 112) | (i12 & 7168) | (57344 & i12) | (i21119 & 3670016) | (i21119 & 29360128);
                        int i211111 = i12 << 9;
                        int i211112 = i211110 | (i211111 & 234881024) | (i211111 & 1879048192);
                        int i211113 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE8, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211112, i211113, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i211114 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE9 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211114 & 896));
                        int i211115 = (i211114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211114 & 112) | (i12 & 7168) | (57344 & i12) | (i211114 & 3670016) | (i211114 & 29360128);
                        int i211116 = i12 << 9;
                        int i211117 = i211115 | (i211116 & 234881024) | (i211116 & 1879048192);
                        int i211118 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE9, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211117, i211118, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i211119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE10 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211119 & 896));
                    int i2111110 = (i211119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211119 & 112) | (i12 & 7168) | (57344 & i12) | (i211119 & 3670016) | (i211119 & 29360128);
                    int i2111111 = i12 << 9;
                    int i2111112 = i2111110 | (i2111111 & 234881024) | (i2111111 & 1879048192);
                    int i2111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE10, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111112, i2111113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE11 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111114 & 896));
                    int i2111115 = (i2111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111114 & 112) | (i12 & 7168) | (57344 & i12) | (i2111114 & 3670016) | (i2111114 & 29360128);
                    int i2111116 = i12 << 9;
                    int i2111117 = i2111115 | (i2111116 & 234881024) | (i2111116 & 1879048192);
                    int i2111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE11, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111117, i2111118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            z11 = z6;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i12 |= i23;
            } else {
                vertical2 = vertical;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                horizontal2 = horizontal;
            } else {
                horizontal2 = horizontal;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(horizontal2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE12 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111119 & 896));
                    int i21111110 = (i2111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111119 & 112) | (i12 & 7168) | (57344 & i12) | (i2111119 & 3670016) | (i2111119 & 29360128);
                    int i21111111 = i12 << 9;
                    int i21111112 = i21111110 | (i21111111 & 234881024) | (i21111111 & 1879048192);
                    int i21111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE12, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111112, i21111113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE13 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111114 & 896));
                    int i21111115 = (i21111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111114 & 3670016) | (i21111114 & 29360128);
                    int i21111116 = i12 << 9;
                    int i21111117 = i21111115 | (i21111116 & 234881024) | (i21111116 & 1879048192);
                    int i21111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE13, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111117, i21111118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i21111119 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE14 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111119 & 896));
                int i211111110 = (i21111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111119 & 112) | (i12 & 7168) | (57344 & i12) | (i21111119 & 3670016) | (i21111119 & 29360128);
                int i211111111 = i12 << 9;
                int i211111112 = i211111110 | (i211111111 & 234881024) | (i211111111 & 1879048192);
                int i211111113 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE14, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111112, i211111113, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111114 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE15 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111114 & 896));
                int i211111115 = (i211111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111114 & 112) | (i12 & 7168) | (57344 & i12) | (i211111114 & 3670016) | (i211111114 & 29360128);
                int i211111116 = i12 << 9;
                int i211111117 = i211111115 | (i211111116 & 234881024) | (i211111116 & 1879048192);
                int i211111118 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE15, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111117, i211111118, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= 48;
        if ((i10 & 896) != 0) {
            i12 |= ((i11 & 4) == 0 || !composerS.k(lazyGridState)) ? 128 : 256;
        }
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                paddingValues2 = paddingValues;
                if (composerS.k(paddingValues2)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            i15 = i11 & 16;
            if (i15 != 0) {
                if ((i10 & 57344) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i16 = 16384;
                    } else {
                        i16 = 8192;
                    }
                    i12 |= i16;
                }
                if ((458752 & i10) == 0) {
                    if ((i11 & 32) == 0) {
                        vertical2 = vertical;
                        if (composerS.k(vertical2)) {
                        }
                        i12 |= i23;
                    } else {
                        vertical2 = vertical;
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i17 = i11 & 64;
                if (i17 != 0) {
                    i12 |= 1572864;
                    horizontal2 = horizontal;
                } else {
                    horizontal2 = horizontal;
                    if ((i10 & 3670016) == 0) {
                        if (composerS.k(horizontal2)) {
                            i18 = 1048576;
                        } else {
                            i18 = 524288;
                        }
                        i12 |= i18;
                    }
                }
                if ((i10 & 29360128) != 0) {
                    i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
                }
                i19 = i11 & 256;
                if (i19 != 0) {
                    i12 |= 100663296;
                } else if ((i10 & 234881024) == 0) {
                    if (composerS.m(z10)) {
                        i20 = 67108864;
                    } else {
                        i20 = 33554432;
                    }
                    i12 |= i20;
                }
                if ((i11 & 512) != 0) {
                    if ((i10 & 1879048192) == 0) {
                        if (composerS.k(content)) {
                            i21 = 536870912;
                        } else {
                            i21 = 268435456;
                        }
                    }
                    if ((1533916891 & i12) == 306783378) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i211111119 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE16 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111119 & 896));
                        int i2111111110 = (i211111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111119 & 112) | (i12 & 7168) | (57344 & i12) | (i211111119 & 3670016) | (i211111119 & 29360128);
                        int i2111111111 = i12 << 9;
                        int i2111111112 = i2111111110 | (i2111111111 & 234881024) | (i2111111111 & 1879048192);
                        int i2111111113 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE16, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111112, i2111111113, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        } else {
                            if (i22 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 4) != 0) {
                                lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -897;
                            } else {
                                lazyGridStateA = lazyGridState;
                            }
                            if (i13 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues2;
                            }
                            if (i15 == 0) {
                            }
                            if ((i11 & 32) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -458753;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i17 != 0) {
                                horizontalE = Arrangement.INSTANCE.e();
                            } else {
                                horizontalE = horizontal2;
                            }
                            if ((i11 & 128) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -29360129;
                            } else {
                                flingBehaviorA = flingBehavior;
                            }
                            if (i19 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            z14 = z12;
                            paddingValues3 = paddingValuesA;
                            vertical3 = verticalA;
                            horizontal3 = horizontalE;
                            flingBehavior2 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2111111114 = i12 >> 3;
                        p<Density, Constraints, List<Integer>> pVarE17 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111114 & 896));
                        int i2111111115 = (i2111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111114 & 3670016) | (i2111111114 & 29360128);
                        int i2111111116 = i12 << 9;
                        int i2111111117 = i2111111115 | (i2111111116 & 234881024) | (i2111111116 & 1879048192);
                        int i2111111118 = (i12 >> 27) & 14;
                        modifier3 = modifier2;
                        lazyGridState2 = lazyGridStateA;
                        flingBehavior3 = flingBehavior2;
                        z15 = z13;
                        LazyGridKt.a(modifier3, lazyGridState2, pVarE17, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111117, i2111111118, 0);
                        horizontal4 = horizontal3;
                        z16 = z14;
                        vertical4 = vertical3;
                        paddingValues4 = paddingValues3;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
                }
                i21 = 805306368;
                i12 |= i21;
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111111119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE18 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111119 & 896));
                    int i21111111110 = (i2111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111119 & 3670016) | (i2111111119 & 29360128);
                    int i21111111111 = i12 << 9;
                    int i21111111112 = i21111111110 | (i21111111111 & 234881024) | (i21111111111 & 1879048192);
                    int i21111111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE18, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111112, i21111111113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE19 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111114 & 896));
                    int i21111111115 = (i21111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111114 & 3670016) | (i21111111114 & 29360128);
                    int i21111111116 = i12 << 9;
                    int i21111111117 = i21111111115 | (i21111111116 & 234881024) | (i21111111116 & 1879048192);
                    int i21111111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE19, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111117, i21111111118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i12 |= CpioConstants.C_ISBLK;
            z11 = z6;
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i12 |= i23;
            } else {
                vertical2 = vertical;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                horizontal2 = horizontal;
            } else {
                horizontal2 = horizontal;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(horizontal2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111111119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE110 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111119 & 896));
                    int i211111111110 = (i21111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111119 & 3670016) | (i21111111119 & 29360128);
                    int i211111111111 = i12 << 9;
                    int i211111111112 = i211111111110 | (i211111111111 & 234881024) | (i211111111111 & 1879048192);
                    int i211111111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE110, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111111112, i211111111113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i211111111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE111 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111111114 & 896));
                    int i211111111115 = (i211111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i211111111114 & 3670016) | (i211111111114 & 29360128);
                    int i211111111116 = i12 << 9;
                    int i211111111117 = i211111111115 | (i211111111116 & 234881024) | (i211111111116 & 1879048192);
                    int i211111111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE111, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111111117, i211111111118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111111119 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE112 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111111119 & 896));
                int i2111111111110 = (i211111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i211111111119 & 3670016) | (i211111111119 & 29360128);
                int i2111111111111 = i12 << 9;
                int i2111111111112 = i2111111111110 | (i2111111111111 & 234881024) | (i2111111111111 & 1879048192);
                int i2111111111113 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE112, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111111112, i2111111111113, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i2111111111114 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE113 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111111114 & 896));
                int i2111111111115 = (i2111111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111111114 & 3670016) | (i2111111111114 & 29360128);
                int i2111111111116 = i12 << 9;
                int i2111111111117 = i2111111111115 | (i2111111111116 & 234881024) | (i2111111111116 & 1879048192);
                int i2111111111118 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE113, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111111117, i2111111111118, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= 3072;
        paddingValues2 = paddingValues;
        i15 = i11 & 16;
        if (i15 != 0) {
            if ((i10 & 57344) == 0) {
                z11 = z6;
                if (composerS.m(z11)) {
                    i16 = 16384;
                } else {
                    i16 = 8192;
                }
                i12 |= i16;
            }
            if ((458752 & i10) == 0) {
                if ((i11 & 32) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i12 |= i23;
            } else {
                vertical2 = vertical;
            }
            i17 = i11 & 64;
            if (i17 != 0) {
                i12 |= 1572864;
                horizontal2 = horizontal;
            } else {
                horizontal2 = horizontal;
                if ((i10 & 3670016) == 0) {
                    if (composerS.k(horizontal2)) {
                        i18 = 1048576;
                    } else {
                        i18 = 524288;
                    }
                    i12 |= i18;
                }
            }
            if ((i10 & 29360128) != 0) {
                i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
            }
            i19 = i11 & 256;
            if (i19 != 0) {
                i12 |= 100663296;
            } else if ((i10 & 234881024) == 0) {
                if (composerS.m(z10)) {
                    i20 = 67108864;
                } else {
                    i20 = 33554432;
                }
                i12 |= i20;
            }
            if ((i11 & 512) != 0) {
                if ((i10 & 1879048192) == 0) {
                    if (composerS.k(content)) {
                        i21 = 536870912;
                    } else {
                        i21 = 268435456;
                    }
                }
                if ((1533916891 & i12) == 306783378) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111111111119 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE114 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111111119 & 896));
                    int i21111111111110 = (i2111111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111111119 & 3670016) | (i2111111111119 & 29360128);
                    int i21111111111111 = i12 << 9;
                    int i21111111111112 = i21111111111110 | (i21111111111111 & 234881024) | (i21111111111111 & 1879048192);
                    int i21111111111113 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE114, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111111112, i21111111111113, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    } else {
                        if (i22 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 4) != 0) {
                            lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -897;
                        } else {
                            lazyGridStateA = lazyGridState;
                        }
                        if (i13 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues2;
                        }
                        if (i15 == 0) {
                        }
                        if ((i11 & 32) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -458753;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i17 != 0) {
                            horizontalE = Arrangement.INSTANCE.e();
                        } else {
                            horizontalE = horizontal2;
                        }
                        if ((i11 & 128) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -29360129;
                        } else {
                            flingBehaviorA = flingBehavior;
                        }
                        if (i19 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        z14 = z12;
                        paddingValues3 = paddingValuesA;
                        vertical3 = verticalA;
                        horizontal3 = horizontalE;
                        flingBehavior2 = flingBehaviorA;
                    }
                    composerS.A();
                    int i21111111111114 = i12 >> 3;
                    p<Density, Constraints, List<Integer>> pVarE115 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111111114 & 896));
                    int i21111111111115 = (i21111111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111111114 & 3670016) | (i21111111111114 & 29360128);
                    int i21111111111116 = i12 << 9;
                    int i21111111111117 = i21111111111115 | (i21111111111116 & 234881024) | (i21111111111116 & 1879048192);
                    int i21111111111118 = (i12 >> 27) & 14;
                    modifier3 = modifier2;
                    lazyGridState2 = lazyGridStateA;
                    flingBehavior3 = flingBehavior2;
                    z15 = z13;
                    LazyGridKt.a(modifier3, lazyGridState2, pVarE115, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111111117, i21111111111118, 0);
                    horizontal4 = horizontal3;
                    z16 = z14;
                    vertical4 = vertical3;
                    paddingValues4 = paddingValues3;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
            }
            i21 = 805306368;
            i12 |= i21;
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i21111111111119 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE116 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111111119 & 896));
                int i211111111111110 = (i21111111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111111119 & 3670016) | (i21111111111119 & 29360128);
                int i211111111111111 = i12 << 9;
                int i211111111111112 = i211111111111110 | (i211111111111111 & 234881024) | (i211111111111111 & 1879048192);
                int i211111111111113 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE116, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111111111112, i211111111111113, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111111111114 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE117 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111111111114 & 896));
                int i211111111111115 = (i211111111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i211111111111114 & 3670016) | (i211111111111114 & 29360128);
                int i211111111111116 = i12 << 9;
                int i211111111111117 = i211111111111115 | (i211111111111116 & 234881024) | (i211111111111116 & 1879048192);
                int i211111111111118 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE117, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i211111111111117, i211111111111118, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
        }
        i12 |= CpioConstants.C_ISBLK;
        z11 = z6;
        if ((458752 & i10) == 0) {
            if ((i11 & 32) == 0) {
                vertical2 = vertical;
                if (composerS.k(vertical2)) {
                }
                i12 |= i23;
            } else {
                vertical2 = vertical;
            }
            i12 |= i23;
        } else {
            vertical2 = vertical;
        }
        i17 = i11 & 64;
        if (i17 != 0) {
            i12 |= 1572864;
            horizontal2 = horizontal;
        } else {
            horizontal2 = horizontal;
            if ((i10 & 3670016) == 0) {
                if (composerS.k(horizontal2)) {
                    i18 = 1048576;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            }
        }
        if ((i10 & 29360128) != 0) {
            i12 |= ((i11 & 128) == 0 || !composerS.k(flingBehavior)) ? 4194304 : 8388608;
        }
        i19 = i11 & 256;
        if (i19 != 0) {
            i12 |= 100663296;
        } else if ((i10 & 234881024) == 0) {
            if (composerS.m(z10)) {
                i20 = 67108864;
            } else {
                i20 = 33554432;
            }
            i12 |= i20;
        }
        if ((i11 & 512) != 0) {
            if ((i10 & 1879048192) == 0) {
                if (composerS.k(content)) {
                    i21 = 536870912;
                } else {
                    i21 = 268435456;
                }
            }
            if ((1533916891 & i12) == 306783378) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i211111111111119 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE118 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i211111111111119 & 896));
                int i2111111111111110 = (i211111111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i211111111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i211111111111119 & 3670016) | (i211111111111119 & 29360128);
                int i2111111111111111 = i12 << 9;
                int i2111111111111112 = i2111111111111110 | (i2111111111111111 & 234881024) | (i2111111111111111 & 1879048192);
                int i2111111111111113 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE118, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111111111112, i2111111111111113, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                } else {
                    if (i22 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 4) != 0) {
                        lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -897;
                    } else {
                        lazyGridStateA = lazyGridState;
                    }
                    if (i13 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues2;
                    }
                    if (i15 == 0) {
                    }
                    if ((i11 & 32) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -458753;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i17 != 0) {
                        horizontalE = Arrangement.INSTANCE.e();
                    } else {
                        horizontalE = horizontal2;
                    }
                    if ((i11 & 128) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -29360129;
                    } else {
                        flingBehaviorA = flingBehavior;
                    }
                    if (i19 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    z14 = z12;
                    paddingValues3 = paddingValuesA;
                    vertical3 = verticalA;
                    horizontal3 = horizontalE;
                    flingBehavior2 = flingBehaviorA;
                }
                composerS.A();
                int i2111111111111114 = i12 >> 3;
                p<Density, Constraints, List<Integer>> pVarE119 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111111111114 & 896));
                int i2111111111111115 = (i2111111111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111111111114 & 3670016) | (i2111111111111114 & 29360128);
                int i2111111111111116 = i12 << 9;
                int i2111111111111117 = i2111111111111115 | (i2111111111111116 & 234881024) | (i2111111111111116 & 1879048192);
                int i2111111111111118 = (i12 >> 27) & 14;
                modifier3 = modifier2;
                lazyGridState2 = lazyGridStateA;
                flingBehavior3 = flingBehavior2;
                z15 = z13;
                LazyGridKt.a(modifier3, lazyGridState2, pVarE119, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i2111111111111117, i2111111111111118, 0);
                horizontal4 = horizontal3;
                z16 = z14;
                vertical4 = vertical3;
                paddingValues4 = paddingValues3;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
        }
        i21 = 805306368;
        i12 |= i21;
        if ((1533916891 & i12) == 306783378) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -458753;
                } else {
                    verticalA = vertical2;
                }
                if (i17 != 0) {
                    horizontalE = Arrangement.INSTANCE.e();
                } else {
                    horizontalE = horizontal2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                vertical3 = verticalA;
                horizontal3 = horizontalE;
                flingBehavior2 = flingBehaviorA;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -458753;
                } else {
                    verticalA = vertical2;
                }
                if (i17 != 0) {
                    horizontalE = Arrangement.INSTANCE.e();
                } else {
                    horizontalE = horizontal2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                vertical3 = verticalA;
                horizontal3 = horizontalE;
                flingBehavior2 = flingBehaviorA;
            }
            composerS.A();
            int i2111111111111119 = i12 >> 3;
            p<Density, Constraints, List<Integer>> pVarE1110 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i2111111111111119 & 896));
            int i21111111111111110 = (i2111111111111119 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i2111111111111119 & 112) | (i12 & 7168) | (57344 & i12) | (i2111111111111119 & 3670016) | (i2111111111111119 & 29360128);
            int i21111111111111111 = i12 << 9;
            int i21111111111111112 = i21111111111111110 | (i21111111111111111 & 234881024) | (i21111111111111111 & 1879048192);
            int i21111111111111113 = (i12 >> 27) & 14;
            modifier3 = modifier2;
            lazyGridState2 = lazyGridStateA;
            flingBehavior3 = flingBehavior2;
            z15 = z13;
            LazyGridKt.a(modifier3, lazyGridState2, pVarE1110, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111111111112, i21111111111111113, 0);
            horizontal4 = horizontal3;
            z16 = z14;
            vertical4 = vertical3;
            paddingValues4 = paddingValues3;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -458753;
                } else {
                    verticalA = vertical2;
                }
                if (i17 != 0) {
                    horizontalE = Arrangement.INSTANCE.e();
                } else {
                    horizontalE = horizontal2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                vertical3 = verticalA;
                horizontal3 = horizontalE;
                flingBehavior2 = flingBehaviorA;
            } else {
                if (i22 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 4) != 0) {
                    lazyGridStateA = LazyGridStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -897;
                } else {
                    lazyGridStateA = lazyGridState;
                }
                if (i13 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues2;
                }
                if (i15 == 0) {
                }
                if ((i11 & 32) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -458753;
                } else {
                    verticalA = vertical2;
                }
                if (i17 != 0) {
                    horizontalE = Arrangement.INSTANCE.e();
                } else {
                    horizontalE = horizontal2;
                }
                if ((i11 & 128) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -29360129;
                } else {
                    flingBehaviorA = flingBehavior;
                }
                if (i19 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                z14 = z12;
                paddingValues3 = paddingValuesA;
                vertical3 = verticalA;
                horizontal3 = horizontalE;
                flingBehavior2 = flingBehaviorA;
            }
            composerS.A();
            int i21111111111111114 = i12 >> 3;
            p<Density, Constraints, List<Integer>> pVarE1111 = e(columns, horizontal3, paddingValues3, composerS, (i12 & 14) | ((i12 >> 15) & 112) | (i21111111111111114 & 896));
            int i21111111111111115 = (i21111111111111114 & 14) | ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE | (i21111111111111114 & 112) | (i12 & 7168) | (57344 & i12) | (i21111111111111114 & 3670016) | (i21111111111111114 & 29360128);
            int i21111111111111116 = i12 << 9;
            int i21111111111111117 = i21111111111111115 | (i21111111111111116 & 234881024) | (i21111111111111116 & 1879048192);
            int i21111111111111118 = (i12 >> 27) & 14;
            modifier3 = modifier2;
            lazyGridState2 = lazyGridStateA;
            flingBehavior3 = flingBehavior2;
            z15 = z13;
            LazyGridKt.a(modifier3, lazyGridState2, pVarE1111, paddingValues3, z14, true, flingBehavior3, z15, vertical3, horizontal3, content, composerS, i21111111111111117, i21111111111111118, 0);
            horizontal4 = horizontal3;
            z16 = z14;
            vertical4 = vertical3;
            paddingValues4 = paddingValues3;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyGridDslKt$LazyVerticalGrid$1(columns, modifier3, lazyGridState2, paddingValues4, z16, vertical4, horizontal4, flingBehavior3, z15, content, i10, i11));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Integer> d(int i10, int i11, int i12) {
        int i13 = i10 - (i12 * (i11 - 1));
        int i14 = i13 / i11;
        int i15 = i13 % i11;
        ArrayList arrayList = new ArrayList(i11);
        int i16 = 0;
        while (i16 < i11) {
            arrayList.add(Integer.valueOf((i16 < i15 ? 1 : 0) + i14));
            i16++;
        }
        return arrayList;
    }

    @Composable
    private static final p<Density, Constraints, List<Integer>> e(GridCells gridCells, Arrangement.Horizontal horizontal, PaddingValues paddingValues, Composer composer, int i10) {
        composer.G(-1355301804);
        composer.G(1618982084);
        boolean zK = composer.k(gridCells) | composer.k(horizontal) | composer.k(paddingValues);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyGridDslKt$rememberColumnWidthSums$1$1(paddingValues, gridCells, horizontal);
            composer.z(objH);
        }
        composer.Q();
        p<Density, Constraints, List<Integer>> pVar = (p) objH;
        composer.Q();
        return pVar;
    }

    @Composable
    private static final p<Density, Constraints, List<Integer>> f(GridCells gridCells, Arrangement.Vertical vertical, PaddingValues paddingValues, Composer composer, int i10) {
        composer.G(239683573);
        composer.G(1618982084);
        boolean zK = composer.k(gridCells) | composer.k(vertical) | composer.k(paddingValues);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new LazyGridDslKt$rememberRowHeightSums$1$1(paddingValues, gridCells, vertical);
            composer.z(objH);
        }
        composer.Q();
        p<Density, Constraints, List<Integer>> pVar = (p) objH;
        composer.Q();
        return pVar;
    }
}
