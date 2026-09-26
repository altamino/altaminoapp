package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollableDefaults;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Dp;
import androidx.profileinstaller.ProfileVerifier;
import e8.l;
import kotlin.jvm.internal.t;
import org.apache.commons.compress.archivers.cpio.CpioConstants;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class LazyDslKt {
    /* JADX WARN: Code duplicated, block: B:110:0x014f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x0151  */
    /* JADX WARN: Code duplicated, block: B:112:0x0154  */
    /* JADX WARN: Code duplicated, block: B:115:0x015d  */
    /* JADX WARN: Code duplicated, block: B:116:0x0164  */
    /* JADX WARN: Code duplicated, block: B:118:0x0168  */
    /* JADX WARN: Code duplicated, block: B:120:0x0174  */
    /* JADX WARN: Code duplicated, block: B:123:0x0179  */
    /* JADX WARN: Code duplicated, block: B:125:0x017d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0182  */
    /* JADX WARN: Code duplicated, block: B:129:0x018b  */
    /* JADX WARN: Code duplicated, block: B:132:0x0196  */
    /* JADX WARN: Code duplicated, block: B:133:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:138:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:140:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0096  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00db  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:89:0x0100  */
    /* JADX WARN: Code duplicated, block: B:93:0x0115  */
    /* JADX WARN: Code duplicated, block: B:95:0x0123  */
    @ComposableTarget
    @Composable
    public static final /* synthetic */ void a(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z6, Arrangement.Vertical vertical, Alignment.Horizontal horizontal, FlingBehavior flingBehavior, l content, Composer composer, int i10, int i11) {
        int i12;
        PaddingValues paddingValuesA;
        int i13;
        boolean z10;
        int i14;
        Arrangement.Vertical vertical2;
        int i15;
        Alignment.Horizontal horizontalK;
        int i16;
        FlingBehavior flingBehavior2;
        int i17;
        Modifier modifier2;
        Modifier modifier3;
        LazyListState lazyListStateA;
        Modifier modifier4;
        LazyListState lazyListState2;
        FlingBehavior flingBehaviorA;
        PaddingValues paddingValues2;
        boolean z11;
        Arrangement arrangement;
        Arrangement.Vertical verticalA;
        Modifier modifier5;
        LazyListState lazyListState3;
        PaddingValues paddingValues3;
        boolean z12;
        Arrangement.Vertical vertical3;
        Alignment.Horizontal horizontal2;
        FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeU;
        int i18;
        t.j(content, "content");
        Composer composerS = composer.s(-563353797);
        int i19 = i11 & 1;
        if (i19 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            i12 |= ((i11 & 2) == 0 && composerS.k(lazyListState)) ? 32 : 16;
        }
        int i20 = i11 & 4;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                paddingValuesA = paddingValues;
                i12 |= composerS.k(paddingValuesA) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i10 & 57344) == 0) {
                    if ((i11 & 16) == 0) {
                        vertical2 = vertical;
                        int i21 = composerS.k(vertical2) ? 16384 : 8192;
                        i12 |= i21;
                    } else {
                        vertical2 = vertical;
                    }
                    i12 |= i21;
                } else {
                    vertical2 = vertical;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    horizontalK = horizontal;
                } else {
                    horizontalK = horizontal;
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(horizontalK)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0 || !composerS.k(flingBehavior2)) {
                        i18 = 524288;
                    } else {
                        i18 = 1048576;
                    }
                    i12 |= i18;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i11 & 128) != 0) {
                    i12 |= 12582912;
                } else if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                }
                if ((23967451 & i12) == 4793490 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        modifier3 = modifier2;
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i20 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        }
                        if (i13 != 0) {
                            z10 = false;
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z10) {
                                verticalA = arrangement.a();
                            } else {
                                verticalA = arrangement.f();
                            }
                            i12 &= -57345;
                            vertical2 = verticalA;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        }
                        if ((i11 & 64) != 0) {
                            i12 &= -3670017;
                            modifier4 = modifier3;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z11 = z10;
                        } else {
                            modifier4 = modifier3;
                            lazyListState2 = lazyListStateA;
                        }
                        Arrangement.Vertical vertical4 = vertical2;
                        Alignment.Horizontal horizontal3 = horizontalK;
                        composerS.A();
                        b(modifier4, lazyListState2, paddingValues2, z11, vertical4, horizontal3, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                        modifier5 = modifier4;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z12 = z11;
                        vertical3 = vertical4;
                        horizontal2 = horizontal3;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        composerS.g();
                        if ((i11 & 2) != 0) {
                            i12 &= -113;
                        }
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                        }
                        if ((i11 & 64) != 0) {
                            i12 &= -3670017;
                        }
                        modifier4 = modifier;
                        lazyListState2 = lazyListState;
                    }
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                    Arrangement.Vertical vertical5 = vertical2;
                    Alignment.Horizontal horizontal4 = horizontalK;
                    composerS.A();
                    b(modifier4, lazyListState2, paddingValues2, z11, vertical5, horizontal4, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                    modifier5 = modifier4;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z12 = z11;
                    vertical3 = vertical5;
                    horizontal2 = horizontal4;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    composerS.g();
                    modifier5 = modifier;
                    lazyListState3 = lazyListState;
                    paddingValues3 = paddingValuesA;
                    z12 = z10;
                    flingBehavior3 = flingBehavior2;
                    vertical3 = vertical2;
                    horizontal2 = horizontalK;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$2(modifier5, lazyListState3, paddingValues3, z12, vertical3, horizontal2, flingBehavior3, content, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                    }
                    i12 |= i21;
                } else {
                    vertical2 = vertical;
                }
                i12 |= i21;
            } else {
                vertical2 = vertical;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                horizontalK = horizontal;
            } else {
                horizontalK = horizontal;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(horizontalK)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
            } else if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Vertical vertical6 = vertical2;
                Alignment.Horizontal horizontal5 = horizontalK;
                composerS.A();
                b(modifier4, lazyListState2, paddingValues2, z11, vertical6, horizontal5, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                vertical3 = vertical6;
                horizontal2 = horizontal5;
                flingBehavior3 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Vertical vertical7 = vertical2;
                Alignment.Horizontal horizontal6 = horizontalK;
                composerS.A();
                b(modifier4, lazyListState2, paddingValues2, z11, vertical7, horizontal6, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                vertical3 = vertical7;
                horizontal2 = horizontal6;
                flingBehavior3 = flingBehaviorA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$2(modifier5, lazyListState3, paddingValues3, z12, vertical3, horizontal2, flingBehavior3, content, i10, i11));
        }
        i12 |= 384;
        paddingValuesA = paddingValues;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                    }
                    i12 |= i21;
                } else {
                    vertical2 = vertical;
                }
                i12 |= i21;
            } else {
                vertical2 = vertical;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                horizontalK = horizontal;
            } else {
                horizontalK = horizontal;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(horizontalK)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
            } else if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Vertical vertical8 = vertical2;
                Alignment.Horizontal horizontal7 = horizontalK;
                composerS.A();
                b(modifier4, lazyListState2, paddingValues2, z11, vertical8, horizontal7, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                vertical3 = vertical8;
                horizontal2 = horizontal7;
                flingBehavior3 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                        vertical2 = verticalA;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Vertical vertical9 = vertical2;
                Alignment.Horizontal horizontal8 = horizontalK;
                composerS.A();
                b(modifier4, lazyListState2, paddingValues2, z11, vertical9, horizontal8, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                vertical3 = vertical9;
                horizontal2 = horizontal8;
                flingBehavior3 = flingBehaviorA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$2(modifier5, lazyListState3, paddingValues3, z12, vertical3, horizontal2, flingBehavior3, content, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        if ((i10 & 57344) == 0) {
            if ((i11 & 16) == 0) {
                vertical2 = vertical;
                if (composerS.k(vertical2)) {
                }
                i12 |= i21;
            } else {
                vertical2 = vertical;
            }
            i12 |= i21;
        } else {
            vertical2 = vertical;
        }
        i15 = i11 & 32;
        if (i15 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontalK = horizontal;
        } else {
            horizontalK = horizontal;
            if ((i10 & 458752) == 0) {
                if (composerS.k(horizontalK)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
        }
        if ((i10 & 3670016) == 0) {
            flingBehavior2 = flingBehavior;
            if ((i11 & 64) == 0) {
                i18 = 524288;
            } else {
                i18 = 524288;
            }
            i12 |= i18;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i11 & 128) != 0) {
            i12 |= 12582912;
        } else if ((29360128 & i10) == 0) {
            if (composerS.k(content)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i12 |= i17;
        }
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                    vertical2 = verticalA;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                    vertical2 = verticalA;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            }
            Arrangement.Vertical vertical10 = vertical2;
            Alignment.Horizontal horizontal9 = horizontalK;
            composerS.A();
            b(modifier4, lazyListState2, paddingValues2, z11, vertical10, horizontal9, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
            modifier5 = modifier4;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z12 = z11;
            vertical3 = vertical10;
            horizontal2 = horizontal9;
            flingBehavior3 = flingBehaviorA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                    vertical2 = verticalA;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                    vertical2 = verticalA;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            }
            Arrangement.Vertical vertical11 = vertical2;
            Alignment.Horizontal horizontal10 = horizontalK;
            composerS.A();
            b(modifier4, lazyListState2, paddingValues2, z11, vertical11, horizontal10, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
            modifier5 = modifier4;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z12 = z11;
            vertical3 = vertical11;
            horizontal2 = horizontal10;
            flingBehavior3 = flingBehaviorA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$2(modifier5, lazyListState3, paddingValues3, z12, vertical3, horizontal2, flingBehavior3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011e  */
    /* JADX WARN: Code duplicated, block: B:104:0x0138  */
    /* JADX WARN: Code duplicated, block: B:106:0x0145  */
    /* JADX WARN: Code duplicated, block: B:119:0x0172 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0174  */
    /* JADX WARN: Code duplicated, block: B:121:0x0177  */
    /* JADX WARN: Code duplicated, block: B:124:0x017e  */
    /* JADX WARN: Code duplicated, block: B:125:0x0186  */
    /* JADX WARN: Code duplicated, block: B:127:0x018a  */
    /* JADX WARN: Code duplicated, block: B:128:0x0194  */
    /* JADX WARN: Code duplicated, block: B:131:0x0199  */
    /* JADX WARN: Code duplicated, block: B:134:0x019e  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a2  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a7  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ae  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b1  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:148:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:150:0x01de  */
    /* JADX WARN: Code duplicated, block: B:155:0x0244  */
    /* JADX WARN: Code duplicated, block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:90:0x0101  */
    /* JADX WARN: Code duplicated, block: B:92:0x0105  */
    /* JADX WARN: Code duplicated, block: B:94:0x0109  */
    /* JADX WARN: Code duplicated, block: B:96:0x010f  */
    /* JADX WARN: Code duplicated, block: B:97:0x0112  */
    @ComposableTarget
    @Composable
    public static final void b(@Nullable Modifier modifier, @Nullable LazyListState lazyListState, @Nullable PaddingValues paddingValues, boolean z6, @Nullable Arrangement.Vertical vertical, @Nullable Alignment.Horizontal horizontal, @Nullable FlingBehavior flingBehavior, boolean z10, @NotNull l<? super LazyListScope, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        boolean z11;
        int i14;
        Arrangement.Vertical vertical2;
        int i15;
        Alignment.Horizontal horizontal2;
        int i16;
        FlingBehavior flingBehavior2;
        int i17;
        int i18;
        int i19;
        Modifier modifier2;
        LazyListState lazyListStateA;
        PaddingValues paddingValuesA;
        boolean z12;
        Arrangement.Vertical verticalA;
        Alignment.Horizontal horizontalK;
        FlingBehavior flingBehaviorA;
        boolean z13;
        LazyListState lazyListState2;
        PaddingValues paddingValues2;
        boolean z14;
        Arrangement.Vertical vertical3;
        Alignment.Horizontal horizontal3;
        FlingBehavior flingBehavior3;
        Arrangement arrangement;
        Modifier modifier3;
        LazyListState lazyListState3;
        PaddingValues paddingValues3;
        boolean z15;
        Arrangement.Vertical vertical4;
        Alignment.Horizontal horizontal4;
        FlingBehavior flingBehavior4;
        boolean z16;
        ScopeUpdateScope scopeUpdateScopeU;
        int i20;
        t.j(content, "content");
        Composer composerS = composer.s(-740714857);
        int i21 = i11 & 1;
        if (i21 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            i12 |= ((i11 & 2) == 0 && composerS.k(lazyListState)) ? 32 : 16;
        }
        int i22 = i11 & 4;
        if (i22 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(paddingValues) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        vertical2 = vertical;
                        int i23 = composerS.k(vertical2) ? 16384 : 8192;
                        i12 |= i23;
                    } else {
                        vertical2 = vertical;
                    }
                    i12 |= i23;
                } else {
                    vertical2 = vertical;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((i10 & 458752) == 0) {
                        horizontal2 = horizontal;
                        if (composerS.k(horizontal2)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    if ((i10 & 3670016) == 0) {
                        flingBehavior2 = flingBehavior;
                        if ((i11 & 64) == 0 || !composerS.k(flingBehavior2)) {
                            i20 = 524288;
                        } else {
                            i20 = 1048576;
                        }
                        i12 |= i20;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i17 = i11 & 128;
                    if (i17 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.m(z10)) {
                            i18 = 8388608;
                        } else {
                            i18 = 4194304;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 256) != 0) {
                        if ((i10 & 234881024) == 0) {
                            if (composerS.k(content)) {
                                i19 = 67108864;
                            } else {
                                i19 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i21 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if ((i11 & 2) != 0) {
                                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                    i12 &= -113;
                                } else {
                                    lazyListStateA = lazyListState;
                                }
                                if (i22 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues;
                                }
                                z12 = i13 == 0 ? z11 : false;
                                if ((i11 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z12) {
                                        verticalA = arrangement.a();
                                    } else {
                                        verticalA = arrangement.f();
                                    }
                                    i12 &= -57345;
                                } else {
                                    verticalA = vertical2;
                                }
                                if (i15 != 0) {
                                    horizontalK = Alignment.Companion.k();
                                } else {
                                    horizontalK = horizontal2;
                                }
                                if ((i11 & 64) != 0) {
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    i12 &= -3670017;
                                } else {
                                    flingBehaviorA = flingBehavior2;
                                }
                                if (i17 != 0) {
                                    z13 = true;
                                } else {
                                    z13 = z10;
                                }
                                lazyListState2 = lazyListStateA;
                                paddingValues2 = paddingValuesA;
                                z14 = z12;
                                vertical3 = verticalA;
                                horizontal3 = horizontalK;
                                flingBehavior3 = flingBehaviorA;
                            } else {
                                composerS.g();
                                if ((i11 & 2) != 0) {
                                    i12 &= -113;
                                }
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
                                }
                                if ((i11 & 64) != 0) {
                                    i12 &= -3670017;
                                }
                                modifier2 = modifier;
                                lazyListState2 = lazyListState;
                                paddingValues2 = paddingValues;
                                z13 = z10;
                                z14 = z11;
                                vertical3 = vertical2;
                                flingBehavior3 = flingBehavior2;
                                horizontal3 = horizontal2;
                            }
                            composerS.A();
                            int i24 = i12 >> 3;
                            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i24) | (i24 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                            modifier3 = modifier2;
                            lazyListState3 = lazyListState2;
                            paddingValues3 = paddingValues2;
                            z15 = z14;
                            vertical4 = vertical3;
                            horizontal4 = horizontal3;
                            flingBehavior4 = flingBehavior3;
                            z16 = z13;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            lazyListState3 = lazyListState;
                            paddingValues3 = paddingValues;
                            z15 = z11;
                            vertical4 = vertical2;
                            flingBehavior4 = flingBehavior2;
                            horizontal4 = horizontal2;
                            z16 = z10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
                    }
                    i19 = 100663296;
                    i12 |= i19;
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i25 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i25) | (i25 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i26 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i26) | (i26 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                horizontal2 = horizontal;
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i27 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i27) | (i27 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i28 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i28) | (i28 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i29 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i29) | (i29 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i210 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i210) | (i210 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= 3072;
            z11 = z6;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
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
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((i10 & 458752) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i211 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i211) | (i211 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i212 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i212) | (i212 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i213 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i213) | (i213 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i214 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i214) | (i214 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i215 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i215) | (i215 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i216 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i216) | (i216 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i217 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i217) | (i217 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i218 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i218) | (i218 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z6;
                if (composerS.m(z11)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
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
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((i10 & 458752) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((i10 & 234881024) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i219 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i219) | (i219 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    verticalA = arrangement.f();
                                } else {
                                    verticalA = arrangement.a();
                                }
                                i12 &= -57345;
                            } else {
                                verticalA = vertical2;
                            }
                            if (i15 != 0) {
                                horizontalK = Alignment.Companion.k();
                            } else {
                                horizontalK = horizontal2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            vertical3 = verticalA;
                            horizontal3 = horizontalK;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2110 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2110) | (i2110 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        vertical4 = vertical3;
                        horizontal4 = horizontal3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2111) | (i2111 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2112 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2112) | (i2112 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            horizontal2 = horizontal;
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2113 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2113) | (i2113 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2114 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2114) | (i2114 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2115 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2115) | (i2115 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2116 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2116) | (i2116 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= 3072;
        z11 = z6;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
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
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((i10 & 458752) == 0) {
                horizontal2 = horizontal;
                if (composerS.k(horizontal2)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((i10 & 234881024) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2117 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2117) | (i2117 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                verticalA = arrangement.f();
                            } else {
                                verticalA = arrangement.a();
                            }
                            i12 &= -57345;
                        } else {
                            verticalA = vertical2;
                        }
                        if (i15 != 0) {
                            horizontalK = Alignment.Companion.k();
                        } else {
                            horizontalK = horizontal2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        vertical3 = verticalA;
                        horizontal3 = horizontalK;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2118 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2118) | (i2118 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    vertical4 = vertical3;
                    horizontal4 = horizontal3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2119 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2119) | (i2119 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21110 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21110) | (i21110 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        horizontal2 = horizontal;
        if ((i10 & 3670016) == 0) {
            flingBehavior2 = flingBehavior;
            if ((i11 & 64) == 0) {
                i20 = 524288;
            } else {
                i20 = 524288;
            }
            i12 |= i20;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i17 = i11 & 128;
        if (i17 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.m(z10)) {
                i18 = 8388608;
            } else {
                i18 = 4194304;
            }
            i12 |= i18;
        }
        if ((i11 & 256) != 0) {
            if ((i10 & 234881024) == 0) {
                if (composerS.k(content)) {
                    i19 = 67108864;
                } else {
                    i19 = 33554432;
                }
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21111 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21111) | (i21111 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            verticalA = arrangement.f();
                        } else {
                            verticalA = arrangement.a();
                        }
                        i12 &= -57345;
                    } else {
                        verticalA = vertical2;
                    }
                    if (i15 != 0) {
                        horizontalK = Alignment.Companion.k();
                    } else {
                        horizontalK = horizontal2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    vertical3 = verticalA;
                    horizontal3 = horizontalK;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21112 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21112) | (i21112 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                vertical4 = vertical3;
                horizontal4 = horizontal3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
        }
        i19 = 100663296;
        i12 |= i19;
        if ((191739611 & i12) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                } else {
                    verticalA = vertical2;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                } else {
                    horizontalK = horizontal2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                vertical3 = verticalA;
                horizontal3 = horizontalK;
                flingBehavior3 = flingBehaviorA;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                } else {
                    verticalA = vertical2;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                } else {
                    horizontalK = horizontal2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                vertical3 = verticalA;
                horizontal3 = horizontalK;
                flingBehavior3 = flingBehaviorA;
            }
            composerS.A();
            int i21113 = i12 >> 3;
            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21113) | (i21113 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
            modifier3 = modifier2;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z15 = z14;
            vertical4 = vertical3;
            horizontal4 = horizontal3;
            flingBehavior4 = flingBehavior3;
            z16 = z13;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                } else {
                    verticalA = vertical2;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                } else {
                    horizontalK = horizontal2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                vertical3 = verticalA;
                horizontal3 = horizontalK;
                flingBehavior3 = flingBehaviorA;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        verticalA = arrangement.f();
                    } else {
                        verticalA = arrangement.a();
                    }
                    i12 &= -57345;
                } else {
                    verticalA = vertical2;
                }
                if (i15 != 0) {
                    horizontalK = Alignment.Companion.k();
                } else {
                    horizontalK = horizontal2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                vertical3 = verticalA;
                horizontal3 = horizontalK;
                flingBehavior3 = flingBehaviorA;
            }
            composerS.A();
            int i21114 = i12 >> 3;
            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, true, flingBehavior3, z13, horizontal3, vertical3, null, null, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21114) | (i21114 & 3670016) | ((i12 << 6) & 29360128) | ((i12 << 12) & 234881024), (i12 >> 21) & 112, 1536);
            modifier3 = modifier2;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z15 = z14;
            vertical4 = vertical3;
            horizontal4 = horizontal3;
            flingBehavior4 = flingBehavior3;
            z16 = z13;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyDslKt$LazyColumn$1(modifier3, lazyListState3, paddingValues3, z15, vertical4, horizontal4, flingBehavior4, z16, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:110:0x014f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x0151  */
    /* JADX WARN: Code duplicated, block: B:112:0x0154  */
    /* JADX WARN: Code duplicated, block: B:115:0x015d  */
    /* JADX WARN: Code duplicated, block: B:116:0x0164  */
    /* JADX WARN: Code duplicated, block: B:118:0x0168  */
    /* JADX WARN: Code duplicated, block: B:120:0x0174  */
    /* JADX WARN: Code duplicated, block: B:123:0x0179  */
    /* JADX WARN: Code duplicated, block: B:125:0x017d  */
    /* JADX WARN: Code duplicated, block: B:126:0x0182  */
    /* JADX WARN: Code duplicated, block: B:129:0x018b  */
    /* JADX WARN: Code duplicated, block: B:132:0x0196  */
    /* JADX WARN: Code duplicated, block: B:133:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:138:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:140:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x008a  */
    /* JADX WARN: Code duplicated, block: B:50:0x008e  */
    /* JADX WARN: Code duplicated, block: B:52:0x0096  */
    /* JADX WARN: Code duplicated, block: B:53:0x0099  */
    /* JADX WARN: Code duplicated, block: B:56:0x009f  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:60:0x00ae  */
    /* JADX WARN: Code duplicated, block: B:62:0x00b4  */
    /* JADX WARN: Code duplicated, block: B:64:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:65:0x00bd  */
    /* JADX WARN: Code duplicated, block: B:69:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:71:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:74:0x00d6  */
    /* JADX WARN: Code duplicated, block: B:76:0x00db  */
    /* JADX WARN: Code duplicated, block: B:79:0x00e3  */
    /* JADX WARN: Code duplicated, block: B:80:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:82:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:84:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:89:0x0100  */
    /* JADX WARN: Code duplicated, block: B:93:0x0115  */
    /* JADX WARN: Code duplicated, block: B:95:0x0123  */
    @ComposableTarget
    @Composable
    public static final /* synthetic */ void c(Modifier modifier, LazyListState lazyListState, PaddingValues paddingValues, boolean z6, Arrangement.Horizontal horizontal, Alignment.Vertical vertical, FlingBehavior flingBehavior, l content, Composer composer, int i10, int i11) {
        int i12;
        PaddingValues paddingValuesA;
        int i13;
        boolean z10;
        int i14;
        Arrangement.Horizontal horizontal2;
        int i15;
        Alignment.Vertical verticalL;
        int i16;
        FlingBehavior flingBehavior2;
        int i17;
        Modifier modifier2;
        Modifier modifier3;
        LazyListState lazyListStateA;
        Modifier modifier4;
        LazyListState lazyListState2;
        FlingBehavior flingBehaviorA;
        PaddingValues paddingValues2;
        boolean z11;
        Arrangement arrangement;
        Arrangement.Horizontal horizontalC;
        Modifier modifier5;
        LazyListState lazyListState3;
        PaddingValues paddingValues3;
        boolean z12;
        Arrangement.Horizontal horizontal3;
        Alignment.Vertical vertical2;
        FlingBehavior flingBehavior3;
        ScopeUpdateScope scopeUpdateScopeU;
        int i18;
        t.j(content, "content");
        Composer composerS = composer.s(407929823);
        int i19 = i11 & 1;
        if (i19 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            i12 |= ((i11 & 2) == 0 && composerS.k(lazyListState)) ? 32 : 16;
        }
        int i20 = i11 & 4;
        if (i20 == 0) {
            if ((i10 & 896) == 0) {
                paddingValuesA = paddingValues;
                i12 |= composerS.k(paddingValuesA) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z10 = z6;
                    if (composerS.m(z10)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((i10 & 57344) == 0) {
                    if ((i11 & 16) == 0) {
                        horizontal2 = horizontal;
                        int i21 = composerS.k(horizontal2) ? 16384 : 8192;
                        i12 |= i21;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i12 |= i21;
                } else {
                    horizontal2 = horizontal;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                    verticalL = vertical;
                } else {
                    verticalL = vertical;
                    if ((i10 & 458752) == 0) {
                        if (composerS.k(verticalL)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0 || !composerS.k(flingBehavior2)) {
                        i18 = 524288;
                    } else {
                        i18 = 1048576;
                    }
                    i12 |= i18;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                if ((i11 & 128) != 0) {
                    i12 |= 12582912;
                } else if ((29360128 & i10) == 0) {
                    if (composerS.k(content)) {
                        i17 = 8388608;
                    } else {
                        i17 = 4194304;
                    }
                    i12 |= i17;
                }
                if ((23967451 & i12) == 4793490 || !composerS.b()) {
                    composerS.J();
                    if ((i10 & 1) != 0 || composerS.h()) {
                        if (i19 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        modifier3 = modifier2;
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i20 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        }
                        if (i13 != 0) {
                            z10 = false;
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z10) {
                                horizontalC = arrangement.c();
                            } else {
                                horizontalC = arrangement.e();
                            }
                            i12 &= -57345;
                            horizontal2 = horizontalC;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        }
                        if ((i11 & 64) != 0) {
                            i12 &= -3670017;
                            modifier4 = modifier3;
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z11 = z10;
                        } else {
                            modifier4 = modifier3;
                            lazyListState2 = lazyListStateA;
                        }
                        Arrangement.Horizontal horizontal4 = horizontal2;
                        Alignment.Vertical vertical3 = verticalL;
                        composerS.A();
                        d(modifier4, lazyListState2, paddingValues2, z11, horizontal4, vertical3, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                        modifier5 = modifier4;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z12 = z11;
                        horizontal3 = horizontal4;
                        vertical2 = vertical3;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        composerS.g();
                        if ((i11 & 2) != 0) {
                            i12 &= -113;
                        }
                        if ((i11 & 16) != 0) {
                            i12 &= -57345;
                        }
                        if ((i11 & 64) != 0) {
                            i12 &= -3670017;
                        }
                        modifier4 = modifier;
                        lazyListState2 = lazyListState;
                    }
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                    Arrangement.Horizontal horizontal5 = horizontal2;
                    Alignment.Vertical vertical4 = verticalL;
                    composerS.A();
                    d(modifier4, lazyListState2, paddingValues2, z11, horizontal5, vertical4, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                    modifier5 = modifier4;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z12 = z11;
                    horizontal3 = horizontal5;
                    vertical2 = vertical4;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    composerS.g();
                    modifier5 = modifier;
                    lazyListState3 = lazyListState;
                    paddingValues3 = paddingValuesA;
                    z12 = z10;
                    flingBehavior3 = flingBehavior2;
                    horizontal3 = horizontal2;
                    vertical2 = verticalL;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$2(modifier5, lazyListState3, paddingValues3, z12, horizontal3, vertical2, flingBehavior3, content, i10, i11));
            }
            i12 |= 3072;
            z10 = z6;
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                    }
                    i12 |= i21;
                } else {
                    horizontal2 = horizontal;
                }
                i12 |= i21;
            } else {
                horizontal2 = horizontal;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                verticalL = vertical;
            } else {
                verticalL = vertical;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(verticalL)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
            } else if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Horizontal horizontal6 = horizontal2;
                Alignment.Vertical vertical5 = verticalL;
                composerS.A();
                d(modifier4, lazyListState2, paddingValues2, z11, horizontal6, vertical5, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                horizontal3 = horizontal6;
                vertical2 = vertical5;
                flingBehavior3 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Horizontal horizontal7 = horizontal2;
                Alignment.Vertical vertical6 = verticalL;
                composerS.A();
                d(modifier4, lazyListState2, paddingValues2, z11, horizontal7, vertical6, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                horizontal3 = horizontal7;
                vertical2 = vertical6;
                flingBehavior3 = flingBehaviorA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$2(modifier5, lazyListState3, paddingValues3, z12, horizontal3, vertical2, flingBehavior3, content, i10, i11));
        }
        i12 |= 384;
        paddingValuesA = paddingValues;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z10 = z6;
                if (composerS.m(z10)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((i10 & 57344) == 0) {
                if ((i11 & 16) == 0) {
                    horizontal2 = horizontal;
                    if (composerS.k(horizontal2)) {
                    }
                    i12 |= i21;
                } else {
                    horizontal2 = horizontal;
                }
                i12 |= i21;
            } else {
                horizontal2 = horizontal;
            }
            i15 = i11 & 32;
            if (i15 != 0) {
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                verticalL = vertical;
            } else {
                verticalL = vertical;
                if ((i10 & 458752) == 0) {
                    if (composerS.k(verticalL)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i18 = 524288;
                } else {
                    i18 = 524288;
                }
                i12 |= i18;
            } else {
                flingBehavior2 = flingBehavior;
            }
            if ((i11 & 128) != 0) {
                i12 |= 12582912;
            } else if ((29360128 & i10) == 0) {
                if (composerS.k(content)) {
                    i17 = 8388608;
                } else {
                    i17 = 4194304;
                }
                i12 |= i17;
            }
            if ((23967451 & i12) == 4793490) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Horizontal horizontal8 = horizontal2;
                Alignment.Vertical vertical7 = verticalL;
                composerS.A();
                d(modifier4, lazyListState2, paddingValues2, z11, horizontal8, vertical7, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                horizontal3 = horizontal8;
                vertical2 = vertical7;
                flingBehavior3 = flingBehaviorA;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                } else {
                    if (i19 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    modifier3 = modifier2;
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i20 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    }
                    if (i13 != 0) {
                        z10 = false;
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z10) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                        horizontal2 = horizontalC;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    }
                    if ((i11 & 64) != 0) {
                        i12 &= -3670017;
                        modifier4 = modifier3;
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                    } else {
                        modifier4 = modifier3;
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z11 = z10;
                        flingBehaviorA = flingBehavior2;
                    }
                }
                Arrangement.Horizontal horizontal9 = horizontal2;
                Alignment.Vertical vertical8 = verticalL;
                composerS.A();
                d(modifier4, lazyListState2, paddingValues2, z11, horizontal9, vertical8, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
                modifier5 = modifier4;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z12 = z11;
                horizontal3 = horizontal9;
                vertical2 = vertical8;
                flingBehavior3 = flingBehaviorA;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$2(modifier5, lazyListState3, paddingValues3, z12, horizontal3, vertical2, flingBehavior3, content, i10, i11));
        }
        i12 |= 3072;
        z10 = z6;
        if ((i10 & 57344) == 0) {
            if ((i11 & 16) == 0) {
                horizontal2 = horizontal;
                if (composerS.k(horizontal2)) {
                }
                i12 |= i21;
            } else {
                horizontal2 = horizontal;
            }
            i12 |= i21;
        } else {
            horizontal2 = horizontal;
        }
        i15 = i11 & 32;
        if (i15 != 0) {
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            verticalL = vertical;
        } else {
            verticalL = vertical;
            if ((i10 & 458752) == 0) {
                if (composerS.k(verticalL)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
        }
        if ((i10 & 3670016) == 0) {
            flingBehavior2 = flingBehavior;
            if ((i11 & 64) == 0) {
                i18 = 524288;
            } else {
                i18 = 524288;
            }
            i12 |= i18;
        } else {
            flingBehavior2 = flingBehavior;
        }
        if ((i11 & 128) != 0) {
            i12 |= 12582912;
        } else if ((29360128 & i10) == 0) {
            if (composerS.k(content)) {
                i17 = 8388608;
            } else {
                i17 = 4194304;
            }
            i12 |= i17;
        }
        if ((23967451 & i12) == 4793490) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                    horizontal2 = horizontalC;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                    horizontal2 = horizontalC;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            }
            Arrangement.Horizontal horizontal10 = horizontal2;
            Alignment.Vertical vertical9 = verticalL;
            composerS.A();
            d(modifier4, lazyListState2, paddingValues2, z11, horizontal10, vertical9, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
            modifier5 = modifier4;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z12 = z11;
            horizontal3 = horizontal10;
            vertical2 = vertical9;
            flingBehavior3 = flingBehaviorA;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                    horizontal2 = horizontalC;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            } else {
                if (i19 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                modifier3 = modifier2;
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i20 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                }
                if (i13 != 0) {
                    z10 = false;
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z10) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                    horizontal2 = horizontalC;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                }
                if ((i11 & 64) != 0) {
                    i12 &= -3670017;
                    modifier4 = modifier3;
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                } else {
                    modifier4 = modifier3;
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z11 = z10;
                    flingBehaviorA = flingBehavior2;
                }
            }
            Arrangement.Horizontal horizontal11 = horizontal2;
            Alignment.Vertical vertical10 = verticalL;
            composerS.A();
            d(modifier4, lazyListState2, paddingValues2, z11, horizontal11, vertical10, flingBehaviorA, true, content, composerS, (i12 & 14) | 12582912 | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (57344 & i12) | (458752 & i12) | (i12 & 3670016) | (234881024 & (i12 << 3)), 0);
            modifier5 = modifier4;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z12 = z11;
            horizontal3 = horizontal11;
            vertical2 = vertical10;
            flingBehavior3 = flingBehaviorA;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyDslKt$LazyRow$2(modifier5, lazyListState3, paddingValues3, z12, horizontal3, vertical2, flingBehavior3, content, i10, i11));
    }

    /* JADX WARN: Code duplicated, block: B:100:0x011d  */
    /* JADX WARN: Code duplicated, block: B:104:0x0137  */
    /* JADX WARN: Code duplicated, block: B:106:0x0144  */
    /* JADX WARN: Code duplicated, block: B:119:0x0171 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:120:0x0173  */
    /* JADX WARN: Code duplicated, block: B:121:0x0176  */
    /* JADX WARN: Code duplicated, block: B:124:0x017d  */
    /* JADX WARN: Code duplicated, block: B:125:0x0185  */
    /* JADX WARN: Code duplicated, block: B:127:0x0189  */
    /* JADX WARN: Code duplicated, block: B:128:0x0193  */
    /* JADX WARN: Code duplicated, block: B:131:0x0198  */
    /* JADX WARN: Code duplicated, block: B:134:0x019d  */
    /* JADX WARN: Code duplicated, block: B:136:0x01a1  */
    /* JADX WARN: Code duplicated, block: B:137:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:139:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:141:0x01b0  */
    /* JADX WARN: Code duplicated, block: B:142:0x01b7  */
    /* JADX WARN: Code duplicated, block: B:145:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:146:0x01c8  */
    /* JADX WARN: Code duplicated, block: B:148:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:150:0x01dd  */
    /* JADX WARN: Code duplicated, block: B:155:0x0245  */
    /* JADX WARN: Code duplicated, block: B:157:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:37:0x006c  */
    /* JADX WARN: Code duplicated, block: B:39:0x0071  */
    /* JADX WARN: Code duplicated, block: B:41:0x0075  */
    /* JADX WARN: Code duplicated, block: B:43:0x007d  */
    /* JADX WARN: Code duplicated, block: B:44:0x0080  */
    /* JADX WARN: Code duplicated, block: B:48:0x0089  */
    /* JADX WARN: Code duplicated, block: B:50:0x008d  */
    /* JADX WARN: Code duplicated, block: B:52:0x0095  */
    /* JADX WARN: Code duplicated, block: B:53:0x0098  */
    /* JADX WARN: Code duplicated, block: B:56:0x009e  */
    /* JADX WARN: Code duplicated, block: B:59:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:61:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:63:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:65:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:66:0x00bb  */
    /* JADX WARN: Code duplicated, block: B:70:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:72:0x00cb  */
    /* JADX WARN: Code duplicated, block: B:75:0x00d4  */
    /* JADX WARN: Code duplicated, block: B:77:0x00d9  */
    /* JADX WARN: Code duplicated, block: B:80:0x00df  */
    /* JADX WARN: Code duplicated, block: B:81:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:83:0x00ee  */
    /* JADX WARN: Code duplicated, block: B:85:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:86:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:90:0x00ff  */
    /* JADX WARN: Code duplicated, block: B:92:0x0103  */
    /* JADX WARN: Code duplicated, block: B:94:0x0108  */
    /* JADX WARN: Code duplicated, block: B:96:0x010e  */
    /* JADX WARN: Code duplicated, block: B:97:0x0111  */
    @ComposableTarget
    @Composable
    public static final void d(@Nullable Modifier modifier, @Nullable LazyListState lazyListState, @Nullable PaddingValues paddingValues, boolean z6, @Nullable Arrangement.Horizontal horizontal, @Nullable Alignment.Vertical vertical, @Nullable FlingBehavior flingBehavior, boolean z10, @NotNull l<? super LazyListScope, l0> content, @Nullable Composer composer, int i10, int i11) {
        int i12;
        int i13;
        boolean z11;
        int i14;
        Arrangement.Horizontal horizontal2;
        int i15;
        Alignment.Vertical vertical2;
        int i16;
        FlingBehavior flingBehavior2;
        int i17;
        int i18;
        int i19;
        Modifier modifier2;
        LazyListState lazyListStateA;
        PaddingValues paddingValuesA;
        boolean z12;
        Arrangement.Horizontal horizontalC;
        Alignment.Vertical verticalL;
        FlingBehavior flingBehaviorA;
        boolean z13;
        LazyListState lazyListState2;
        PaddingValues paddingValues2;
        boolean z14;
        Arrangement.Horizontal horizontal3;
        Alignment.Vertical vertical3;
        FlingBehavior flingBehavior3;
        Arrangement arrangement;
        Modifier modifier3;
        LazyListState lazyListState3;
        PaddingValues paddingValues3;
        boolean z15;
        Arrangement.Horizontal horizontal4;
        Alignment.Vertical vertical4;
        FlingBehavior flingBehavior4;
        boolean z16;
        ScopeUpdateScope scopeUpdateScopeU;
        int i20;
        t.j(content, "content");
        Composer composerS = composer.s(-1724297413);
        int i21 = i11 & 1;
        if (i21 != 0) {
            i12 = i10 | 6;
        } else if ((i10 & 14) == 0) {
            i12 = (composerS.k(modifier) ? 4 : 2) | i10;
        } else {
            i12 = i10;
        }
        if ((i10 & 112) == 0) {
            i12 |= ((i11 & 2) == 0 && composerS.k(lazyListState)) ? 32 : 16;
        }
        int i22 = i11 & 4;
        if (i22 == 0) {
            if ((i10 & 896) == 0) {
                i12 |= composerS.k(paddingValues) ? 256 : 128;
            }
            i13 = i11 & 8;
            if (i13 != 0) {
                if ((i10 & 7168) == 0) {
                    z11 = z6;
                    if (composerS.m(z11)) {
                        i14 = 2048;
                    } else {
                        i14 = 1024;
                    }
                    i12 |= i14;
                }
                if ((57344 & i10) == 0) {
                    if ((i11 & 16) == 0) {
                        horizontal2 = horizontal;
                        int i23 = composerS.k(horizontal2) ? 16384 : 8192;
                        i12 |= i23;
                    } else {
                        horizontal2 = horizontal;
                    }
                    i12 |= i23;
                } else {
                    horizontal2 = horizontal;
                }
                i15 = i11 & 32;
                if (i15 != 0) {
                    if ((i10 & 458752) == 0) {
                        vertical2 = vertical;
                        if (composerS.k(vertical2)) {
                            i16 = 131072;
                        } else {
                            i16 = 65536;
                        }
                        i12 |= i16;
                    }
                    if ((i10 & 3670016) == 0) {
                        flingBehavior2 = flingBehavior;
                        if ((i11 & 64) == 0 || !composerS.k(flingBehavior2)) {
                            i20 = 524288;
                        } else {
                            i20 = 1048576;
                        }
                        i12 |= i20;
                    } else {
                        flingBehavior2 = flingBehavior;
                    }
                    i17 = i11 & 128;
                    if (i17 != 0) {
                        i12 |= 12582912;
                    } else if ((i10 & 29360128) == 0) {
                        if (composerS.m(z10)) {
                            i18 = 8388608;
                        } else {
                            i18 = 4194304;
                        }
                        i12 |= i18;
                    }
                    if ((i11 & 256) != 0) {
                        if ((234881024 & i10) == 0) {
                            if (composerS.k(content)) {
                                i19 = 67108864;
                            } else {
                                i19 = 33554432;
                            }
                        }
                        if ((191739611 & i12) == 38347922 || !composerS.b()) {
                            composerS.J();
                            if ((i10 & 1) != 0 || composerS.h()) {
                                if (i21 != 0) {
                                    modifier2 = Modifier.Companion;
                                } else {
                                    modifier2 = modifier;
                                }
                                if ((i11 & 2) != 0) {
                                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                    i12 &= -113;
                                } else {
                                    lazyListStateA = lazyListState;
                                }
                                if (i22 != 0) {
                                    paddingValuesA = PaddingKt.a(Dp.f(0));
                                } else {
                                    paddingValuesA = paddingValues;
                                }
                                z12 = i13 == 0 ? z11 : false;
                                if ((i11 & 16) != 0) {
                                    arrangement = Arrangement.INSTANCE;
                                    if (z12) {
                                        horizontalC = arrangement.c();
                                    } else {
                                        horizontalC = arrangement.e();
                                    }
                                    i12 &= -57345;
                                } else {
                                    horizontalC = horizontal2;
                                }
                                if (i15 != 0) {
                                    verticalL = Alignment.Companion.l();
                                } else {
                                    verticalL = vertical2;
                                }
                                if ((i11 & 64) != 0) {
                                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                    i12 &= -3670017;
                                } else {
                                    flingBehaviorA = flingBehavior2;
                                }
                                if (i17 != 0) {
                                    z13 = true;
                                } else {
                                    z13 = z10;
                                }
                                lazyListState2 = lazyListStateA;
                                paddingValues2 = paddingValuesA;
                                z14 = z12;
                                horizontal3 = horizontalC;
                                vertical3 = verticalL;
                                flingBehavior3 = flingBehaviorA;
                            } else {
                                composerS.g();
                                if ((i11 & 2) != 0) {
                                    i12 &= -113;
                                }
                                if ((i11 & 16) != 0) {
                                    i12 &= -57345;
                                }
                                if ((i11 & 64) != 0) {
                                    i12 &= -3670017;
                                }
                                modifier2 = modifier;
                                lazyListState2 = lazyListState;
                                paddingValues2 = paddingValues;
                                z13 = z10;
                                z14 = z11;
                                horizontal3 = horizontal2;
                                flingBehavior3 = flingBehavior2;
                                vertical3 = vertical2;
                            }
                            composerS.A();
                            int i24 = i12 >> 3;
                            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i24) | (i24 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                            modifier3 = modifier2;
                            lazyListState3 = lazyListState2;
                            paddingValues3 = paddingValues2;
                            z15 = z14;
                            horizontal4 = horizontal3;
                            vertical4 = vertical3;
                            flingBehavior4 = flingBehavior3;
                            z16 = z13;
                        } else {
                            composerS.g();
                            modifier3 = modifier;
                            lazyListState3 = lazyListState;
                            paddingValues3 = paddingValues;
                            z15 = z11;
                            horizontal4 = horizontal2;
                            flingBehavior4 = flingBehavior2;
                            vertical4 = vertical2;
                            z16 = z10;
                        }
                        scopeUpdateScopeU = composerS.u();
                        if (scopeUpdateScopeU == null) {
                            return;
                        }
                        scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
                    }
                    i19 = 100663296;
                    i12 |= i19;
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i25 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i25) | (i25 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i26 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i26) | (i26 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
                }
                i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
                vertical2 = vertical;
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((234881024 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i27 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i27) | (i27 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i28 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i28) | (i28 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i29 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i29) | (i29 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i210 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i210) | (i210 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= 3072;
            z11 = z6;
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
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
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((i10 & 458752) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((234881024 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i211 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i211) | (i211 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i212 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i212) | (i212 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i213 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i213) | (i213 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i214 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i214) | (i214 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((234881024 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i215 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i215) | (i215 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i216 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i216) | (i216 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i217 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i217) | (i217 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i218 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i218) | (i218 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= 384;
        i13 = i11 & 8;
        if (i13 != 0) {
            if ((i10 & 7168) == 0) {
                z11 = z6;
                if (composerS.m(z11)) {
                    i14 = 2048;
                } else {
                    i14 = 1024;
                }
                i12 |= i14;
            }
            if ((57344 & i10) == 0) {
                if ((i11 & 16) == 0) {
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
            i15 = i11 & 32;
            if (i15 != 0) {
                if ((i10 & 458752) == 0) {
                    vertical2 = vertical;
                    if (composerS.k(vertical2)) {
                        i16 = 131072;
                    } else {
                        i16 = 65536;
                    }
                    i12 |= i16;
                }
                if ((i10 & 3670016) == 0) {
                    flingBehavior2 = flingBehavior;
                    if ((i11 & 64) == 0) {
                        i20 = 524288;
                    } else {
                        i20 = 524288;
                    }
                    i12 |= i20;
                } else {
                    flingBehavior2 = flingBehavior;
                }
                i17 = i11 & 128;
                if (i17 != 0) {
                    i12 |= 12582912;
                } else if ((i10 & 29360128) == 0) {
                    if (composerS.m(z10)) {
                        i18 = 8388608;
                    } else {
                        i18 = 4194304;
                    }
                    i12 |= i18;
                }
                if ((i11 & 256) != 0) {
                    if ((234881024 & i10) == 0) {
                        if (composerS.k(content)) {
                            i19 = 67108864;
                        } else {
                            i19 = 33554432;
                        }
                    }
                    if ((191739611 & i12) == 38347922) {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i219 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i219) | (i219 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    } else {
                        composerS.J();
                        if ((i10 & 1) != 0) {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        } else {
                            if (i21 != 0) {
                                modifier2 = Modifier.Companion;
                            } else {
                                modifier2 = modifier;
                            }
                            if ((i11 & 2) != 0) {
                                lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                                i12 &= -113;
                            } else {
                                lazyListStateA = lazyListState;
                            }
                            if (i22 != 0) {
                                paddingValuesA = PaddingKt.a(Dp.f(0));
                            } else {
                                paddingValuesA = paddingValues;
                            }
                            if (i13 == 0) {
                            }
                            if ((i11 & 16) != 0) {
                                arrangement = Arrangement.INSTANCE;
                                if (z12) {
                                    horizontalC = arrangement.e();
                                } else {
                                    horizontalC = arrangement.c();
                                }
                                i12 &= -57345;
                            } else {
                                horizontalC = horizontal2;
                            }
                            if (i15 != 0) {
                                verticalL = Alignment.Companion.l();
                            } else {
                                verticalL = vertical2;
                            }
                            if ((i11 & 64) != 0) {
                                flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                                i12 &= -3670017;
                            } else {
                                flingBehaviorA = flingBehavior2;
                            }
                            if (i17 != 0) {
                                z13 = true;
                            } else {
                                z13 = z10;
                            }
                            lazyListState2 = lazyListStateA;
                            paddingValues2 = paddingValuesA;
                            z14 = z12;
                            horizontal3 = horizontalC;
                            vertical3 = verticalL;
                            flingBehavior3 = flingBehaviorA;
                        }
                        composerS.A();
                        int i2110 = i12 >> 3;
                        LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2110) | (i2110 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                        modifier3 = modifier2;
                        lazyListState3 = lazyListState2;
                        paddingValues3 = paddingValues2;
                        z15 = z14;
                        horizontal4 = horizontal3;
                        vertical4 = vertical3;
                        flingBehavior4 = flingBehavior3;
                        z16 = z13;
                    }
                    scopeUpdateScopeU = composerS.u();
                    if (scopeUpdateScopeU == null) {
                        return;
                    }
                    scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
                }
                i19 = 100663296;
                i12 |= i19;
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2111 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2111) | (i2111 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2112 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2112) | (i2112 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
            vertical2 = vertical;
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((234881024 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2113 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2113) | (i2113 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2114 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2114) | (i2114 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2115 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2115) | (i2115 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2116 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2116) | (i2116 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= 3072;
        z11 = z6;
        if ((57344 & i10) == 0) {
            if ((i11 & 16) == 0) {
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
        i15 = i11 & 32;
        if (i15 != 0) {
            if ((i10 & 458752) == 0) {
                vertical2 = vertical;
                if (composerS.k(vertical2)) {
                    i16 = 131072;
                } else {
                    i16 = 65536;
                }
                i12 |= i16;
            }
            if ((i10 & 3670016) == 0) {
                flingBehavior2 = flingBehavior;
                if ((i11 & 64) == 0) {
                    i20 = 524288;
                } else {
                    i20 = 524288;
                }
                i12 |= i20;
            } else {
                flingBehavior2 = flingBehavior;
            }
            i17 = i11 & 128;
            if (i17 != 0) {
                i12 |= 12582912;
            } else if ((i10 & 29360128) == 0) {
                if (composerS.m(z10)) {
                    i18 = 8388608;
                } else {
                    i18 = 4194304;
                }
                i12 |= i18;
            }
            if ((i11 & 256) != 0) {
                if ((234881024 & i10) == 0) {
                    if (composerS.k(content)) {
                        i19 = 67108864;
                    } else {
                        i19 = 33554432;
                    }
                }
                if ((191739611 & i12) == 38347922) {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2117 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2117) | (i2117 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                } else {
                    composerS.J();
                    if ((i10 & 1) != 0) {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    } else {
                        if (i21 != 0) {
                            modifier2 = Modifier.Companion;
                        } else {
                            modifier2 = modifier;
                        }
                        if ((i11 & 2) != 0) {
                            lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                            i12 &= -113;
                        } else {
                            lazyListStateA = lazyListState;
                        }
                        if (i22 != 0) {
                            paddingValuesA = PaddingKt.a(Dp.f(0));
                        } else {
                            paddingValuesA = paddingValues;
                        }
                        if (i13 == 0) {
                        }
                        if ((i11 & 16) != 0) {
                            arrangement = Arrangement.INSTANCE;
                            if (z12) {
                                horizontalC = arrangement.e();
                            } else {
                                horizontalC = arrangement.c();
                            }
                            i12 &= -57345;
                        } else {
                            horizontalC = horizontal2;
                        }
                        if (i15 != 0) {
                            verticalL = Alignment.Companion.l();
                        } else {
                            verticalL = vertical2;
                        }
                        if ((i11 & 64) != 0) {
                            flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                            i12 &= -3670017;
                        } else {
                            flingBehaviorA = flingBehavior2;
                        }
                        if (i17 != 0) {
                            z13 = true;
                        } else {
                            z13 = z10;
                        }
                        lazyListState2 = lazyListStateA;
                        paddingValues2 = paddingValuesA;
                        z14 = z12;
                        horizontal3 = horizontalC;
                        vertical3 = verticalL;
                        flingBehavior3 = flingBehaviorA;
                    }
                    composerS.A();
                    int i2118 = i12 >> 3;
                    LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2118) | (i2118 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                    modifier3 = modifier2;
                    lazyListState3 = lazyListState2;
                    paddingValues3 = paddingValues2;
                    z15 = z14;
                    horizontal4 = horizontal3;
                    vertical4 = vertical3;
                    flingBehavior4 = flingBehavior3;
                    z16 = z13;
                }
                scopeUpdateScopeU = composerS.u();
                if (scopeUpdateScopeU == null) {
                    return;
                }
                scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
            }
            i19 = 100663296;
            i12 |= i19;
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i2119 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i2119) | (i2119 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21110 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21110) | (i21110 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
        }
        i12 |= ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE;
        vertical2 = vertical;
        if ((i10 & 3670016) == 0) {
            flingBehavior2 = flingBehavior;
            if ((i11 & 64) == 0) {
                i20 = 524288;
            } else {
                i20 = 524288;
            }
            i12 |= i20;
        } else {
            flingBehavior2 = flingBehavior;
        }
        i17 = i11 & 128;
        if (i17 != 0) {
            i12 |= 12582912;
        } else if ((i10 & 29360128) == 0) {
            if (composerS.m(z10)) {
                i18 = 8388608;
            } else {
                i18 = 4194304;
            }
            i12 |= i18;
        }
        if ((i11 & 256) != 0) {
            if ((234881024 & i10) == 0) {
                if (composerS.k(content)) {
                    i19 = 67108864;
                } else {
                    i19 = 33554432;
                }
            }
            if ((191739611 & i12) == 38347922) {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21111 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21111) | (i21111 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            } else {
                composerS.J();
                if ((i10 & 1) != 0) {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                } else {
                    if (i21 != 0) {
                        modifier2 = Modifier.Companion;
                    } else {
                        modifier2 = modifier;
                    }
                    if ((i11 & 2) != 0) {
                        lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                        i12 &= -113;
                    } else {
                        lazyListStateA = lazyListState;
                    }
                    if (i22 != 0) {
                        paddingValuesA = PaddingKt.a(Dp.f(0));
                    } else {
                        paddingValuesA = paddingValues;
                    }
                    if (i13 == 0) {
                    }
                    if ((i11 & 16) != 0) {
                        arrangement = Arrangement.INSTANCE;
                        if (z12) {
                            horizontalC = arrangement.e();
                        } else {
                            horizontalC = arrangement.c();
                        }
                        i12 &= -57345;
                    } else {
                        horizontalC = horizontal2;
                    }
                    if (i15 != 0) {
                        verticalL = Alignment.Companion.l();
                    } else {
                        verticalL = vertical2;
                    }
                    if ((i11 & 64) != 0) {
                        flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                        i12 &= -3670017;
                    } else {
                        flingBehaviorA = flingBehavior2;
                    }
                    if (i17 != 0) {
                        z13 = true;
                    } else {
                        z13 = z10;
                    }
                    lazyListState2 = lazyListStateA;
                    paddingValues2 = paddingValuesA;
                    z14 = z12;
                    horizontal3 = horizontalC;
                    vertical3 = verticalL;
                    flingBehavior3 = flingBehaviorA;
                }
                composerS.A();
                int i21112 = i12 >> 3;
                LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21112) | (i21112 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
                modifier3 = modifier2;
                lazyListState3 = lazyListState2;
                paddingValues3 = paddingValues2;
                z15 = z14;
                horizontal4 = horizontal3;
                vertical4 = vertical3;
                flingBehavior4 = flingBehavior3;
                z16 = z13;
            }
            scopeUpdateScopeU = composerS.u();
            if (scopeUpdateScopeU == null) {
                return;
            }
            scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
        }
        i19 = 100663296;
        i12 |= i19;
        if ((191739611 & i12) == 38347922) {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                } else {
                    horizontalC = horizontal2;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                } else {
                    verticalL = vertical2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                horizontal3 = horizontalC;
                vertical3 = verticalL;
                flingBehavior3 = flingBehaviorA;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                } else {
                    horizontalC = horizontal2;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                } else {
                    verticalL = vertical2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                horizontal3 = horizontalC;
                vertical3 = verticalL;
                flingBehavior3 = flingBehaviorA;
            }
            composerS.A();
            int i21113 = i12 >> 3;
            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21113) | (i21113 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
            modifier3 = modifier2;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z15 = z14;
            horizontal4 = horizontal3;
            vertical4 = vertical3;
            flingBehavior4 = flingBehavior3;
            z16 = z13;
        } else {
            composerS.J();
            if ((i10 & 1) != 0) {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                } else {
                    horizontalC = horizontal2;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                } else {
                    verticalL = vertical2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                horizontal3 = horizontalC;
                vertical3 = verticalL;
                flingBehavior3 = flingBehaviorA;
            } else {
                if (i21 != 0) {
                    modifier2 = Modifier.Companion;
                } else {
                    modifier2 = modifier;
                }
                if ((i11 & 2) != 0) {
                    lazyListStateA = LazyListStateKt.a(0, 0, composerS, 0, 3);
                    i12 &= -113;
                } else {
                    lazyListStateA = lazyListState;
                }
                if (i22 != 0) {
                    paddingValuesA = PaddingKt.a(Dp.f(0));
                } else {
                    paddingValuesA = paddingValues;
                }
                if (i13 == 0) {
                }
                if ((i11 & 16) != 0) {
                    arrangement = Arrangement.INSTANCE;
                    if (z12) {
                        horizontalC = arrangement.e();
                    } else {
                        horizontalC = arrangement.c();
                    }
                    i12 &= -57345;
                } else {
                    horizontalC = horizontal2;
                }
                if (i15 != 0) {
                    verticalL = Alignment.Companion.l();
                } else {
                    verticalL = vertical2;
                }
                if ((i11 & 64) != 0) {
                    flingBehaviorA = ScrollableDefaults.INSTANCE.a(composerS, 6);
                    i12 &= -3670017;
                } else {
                    flingBehaviorA = flingBehavior2;
                }
                if (i17 != 0) {
                    z13 = true;
                } else {
                    z13 = z10;
                }
                lazyListState2 = lazyListStateA;
                paddingValues2 = paddingValuesA;
                z14 = z12;
                horizontal3 = horizontalC;
                vertical3 = verticalL;
                flingBehavior3 = flingBehaviorA;
            }
            composerS.A();
            int i21114 = i12 >> 3;
            LazyListKt.a(modifier2, lazyListState2, paddingValues2, z14, false, flingBehavior3, z13, null, null, vertical3, horizontal3, content, composerS, (i12 & 14) | CpioConstants.C_ISBLK | (i12 & 112) | (i12 & 896) | (i12 & 7168) | (458752 & i21114) | (i21114 & 3670016) | ((i12 << 12) & 1879048192), ((i12 >> 12) & 14) | ((i12 >> 21) & 112), 384);
            modifier3 = modifier2;
            lazyListState3 = lazyListState2;
            paddingValues3 = paddingValues2;
            z15 = z14;
            horizontal4 = horizontal3;
            vertical4 = vertical3;
            flingBehavior4 = flingBehavior3;
            z16 = z13;
        }
        scopeUpdateScopeU = composerS.u();
        if (scopeUpdateScopeU == null) {
            return;
        }
        scopeUpdateScopeU.a(new LazyDslKt$LazyRow$1(modifier3, lazyListState3, paddingValues3, z15, horizontal4, vertical4, flingBehavior4, z16, content, i10, i11));
    }
}
